Class {
	#name : #SmaCCServer,
	#superclass : #Object,
	#instVars : [
		'socket',
		'availableServers',
		'registeredServers',
		'running'
	],
	#category : #'SmaCC_Rewrite_Server'
}

{ #category : #'instance creation' }
SmaCCServer class >> startOn: anInteger [
	^ self new
		startOn: anInteger;
		yourself
]

{ #category : #initialization }
SmaCCServer >> initialize [
	super initialize.
	running := false
]

{ #category : #running }
SmaCCServer >> nextInteger: aStream [
	| value |
	value := 0.
	0 to: 3 do: [ :i | value := value + (aStream next << (i * 8)) ].
	^ value
]

{ #category : #running }
SmaCCServer >> nextPutInteger: anInteger on: aStream [
	| value |
	value := anInteger.
	4
		timesRepeat: [ 
			aStream nextPut: (value bitAnd: 16rFF).
			value := value bitShift: -8 ]
]

{ #category : #running }
SmaCCServer >> port [
	^ socket localPort
]

{ #category : #running }
SmaCCServer >> process: aSocket [
	| type socketStream |
	socketStream := SocketStream on: aSocket.
	socketStream
		noTimeout;
		binary.
	type := socketStream next.
	type = $0 asInteger
		ifTrue: [ ^ self register: socketStream ].
	type = $1 asInteger
		ifTrue: [ ^ self processRequest: socketStream ].
	type = $E asInteger
		ifTrue: [ Exit signalSuccess ].
	self error: 'Invalid request'
]

{ #category : #running }
SmaCCServer >> processRequest: aSocketStream [
	[ 
	[ 
	| string items canceled results |
	string := (self readBytesFrom: aSocketStream) asString.
	items := string substrings: (Character value: 0) asString.
	canceled := ValueHolder new.
	canceled contents: false.
	results := SharedQueue new.
	[ 
	items
		do:
			[ :each | 
			canceled contents
				ifFalse:
					[ 
					| server |
					server := availableServers next.
					[ 
					self
						processRequest: each
						on: server
						notifying: results
						canceled: canceled ] fork ] ] ] fork.
	[ 
	items size
		timesRepeat:
			[ 
			| bytes |
			bytes := results next.
			self writeBytes: bytes on: aSocketStream ] ]
		on: Error
		do: [ :ex | canceled contents: true ] ]
		ensure: [ aSocketStream close ] ] fork
]

{ #category : #running }
SmaCCServer >> processRequest: aByteArray on: aSocketStream notifying: aSharedQueue canceled: aValueHolder [
	| resultBytes |
	[ 
	self writeBytes: aByteArray on: aSocketStream.
	resultBytes := self readBytesFrom: aSocketStream.
	availableServers nextPut: aSocketStream ]
		on: Error
		do:
			[ :ex | 
			registeredServers remove: aSocketStream.
			[ aSocketStream close ]
				on: Error
				do: [ :e |  ].
			aValueHolder contents
				ifFalse: [ ^ self ].
			^ self
				processRequest: aByteArray
				on: availableServers next
				notifying: aSharedQueue
				canceled: aValueHolder ].
	aSharedQueue nextPut: resultBytes
]

{ #category : #running }
SmaCCServer >> readBytesFrom: aStream [
	^aStream next: (self nextInteger: aStream)
]

{ #category : #running }
SmaCCServer >> register: aSocketStream [
	availableServers nextPut: aSocketStream.
	registeredServers add: aSocketStream
]

{ #category : #running }
SmaCCServer >> run [
	running := true.
	[ | accepted |
	accepted := socket waitForAcceptFor: 1000.
	accepted notNil ifTrue: [ self process: accepted ].
	running ] whileTrue
]

{ #category : #running }
SmaCCServer >> startOn: anInteger [
	availableServers := SharedQueue new.
	registeredServers := IdentitySet new.
	socket := Socket newTCP.
	socket
		setOption: 'TCP_NODELAY' value: 1;
		setOption: 'SO_SNDBUF' value: 4096;
		setOption: 'SO_RCVBUF' value: 4096.
	socket listenOn: anInteger backlogSize: 50
]

{ #category : #running }
SmaCCServer >> stop [
	running := false.
	[ socket close ] on: Error do: [ :ex | ex return ].
	socket := nil.
	registeredServers copy
		do: [ :each | [ each close ] on: Error do: [ :ex | ex return ] ]
]

{ #category : #running }
SmaCCServer >> writeBytes: bytes on: aStream [
	self nextPutInteger: bytes size on: aStream.
	aStream
		nextPutAll: bytes asByteArray;
		flush
]
