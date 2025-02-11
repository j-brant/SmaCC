Class {
	#name : #SmaCCTransformationToolkitModel,
	#superclass : #Model,
	#instVars : [
		'modified',
		'files',
		'inputParserClass',
		'validationParserClass',
		'rewrites',
		'outputDirectory',
		'server',
		'runOnServer',
		'createSubdirectories',
		'commonParentDirectory',
		'lineEnding',
		'filename'
	],
	#category : #'SmaCC_Rewrite_Engine'
}

{ #category : #'instance creation' }
SmaCCTransformationToolkitModel class >> onFile: aFilename [
	^ self new
		loadFile: aFilename;
		yourself
]

{ #category : #'actions-rewrites' }
SmaCCTransformationToolkitModel >> addTransformation: aSmaCCAbstractRewrite under: aSmaCCRewriteFile [
	self
		addTransformation: aSmaCCAbstractRewrite
		under: aSmaCCRewriteFile
		before: nil
]

{ #category : #'actions-rewrites' }
SmaCCTransformationToolkitModel >> addTransformation: aSmaCCAbstractRewrite under: aSmaCCRewriteFile before: anotherSmaCCAbstractRewrite [
	anotherSmaCCAbstractRewrite isNil
		ifTrue: [ aSmaCCRewriteFile addTransformation: aSmaCCAbstractRewrite ]
		ifFalse:
			[ aSmaCCRewriteFile
				addTransformation: aSmaCCAbstractRewrite
				before: anotherSmaCCAbstractRewrite ].
	self
		changed: #addTransformation:under:
		with:
			(Array with: aSmaCCAbstractRewrite with: aSmaCCRewriteFile)
]

{ #category : #testing }
SmaCCTransformationToolkitModel >> areRewritesModified [
	^ self rewrites notNil and: [ self rewrites isModified ]
]

{ #category : #running }
SmaCCTransformationToolkitModel >> commonParentDirectory [
	| common |
	(commonParentDirectory notNil and: [ commonParentDirectory notEmpty ])
		ifTrue: [ ^ commonParentDirectory ].
	(self files isEmpty or: [ self createSubdirectories not ]) ifTrue: [ ^ '' ].
	common := self files first asFileReference parent pathString.
	self files
		do: [ :each | 
			[ common isEmpty or: [ each asFileReference pathString beginsWith: common ] ]
				whileFalse: [ common := (common isEmpty
							or: [ (common size = 3 and: [ (common at: 2) = $: ])
									or: [ common size = 1 and: [ common first = $/ ] ] ])
							ifTrue: [ '' ]
							ifFalse: [ (common copyFrom: 1 to: common size - 1) asFileReference parent pathString ] ] ].
	^ common
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> commonParentDirectory: aString [
	commonParentDirectory := aString
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> createSubdirectories [
	^ createSubdirectories ifNil: [ false ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> createSubdirectories: aBoolean [
	createSubdirectories := aBoolean.
	modified := true.
	self changed: #createSubdirectories with: aBoolean
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> filename [
	^ filename
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> filename: anObject [
	filename = anObject ifTrue: [ ^ self ].
	filename := anObject.
	self changed: #filename with: filename
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> filenameStrings [
	^ self files
		collect: [ :each | each isString ifTrue: [ each ] ifFalse: [ each pathString ] ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> files [
	^ files ifNil: [ #() ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> files: aCollection [
	files := aCollection.
	modified := true.
	self changed: #files with: aCollection
]

{ #category : #'initialize/release' }
SmaCCTransformationToolkitModel >> initialize [
	super initialize.
	modified := false.
	rewrites := SmaCCRewriteFile new
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> inputParserClass [
	^ inputParserClass
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> inputParserClass: aSmaCCParserClass [
	inputParserClass := aSmaCCParserClass.
	modified := true.
	self changed: #inputParserClass with: aSmaCCParserClass
]

{ #category : #testing }
SmaCCTransformationToolkitModel >> isModified [
	^ modified or: [ self areRewritesModified ]
]

{ #category : #testing }
SmaCCTransformationToolkitModel >> isModified: aBoolean [
	modified := aBoolean
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> lineEnding [
	^ lineEnding
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> lineEnding: aSymbol [
	lineEnding := aSymbol
]

{ #category : #actions }
SmaCCTransformationToolkitModel >> loadFile: aString [
	aString asFileReference
		readStreamDo: [ :stream | 
			self class compiler
				source: stream contents;
				logged: false;
				receiver: self;
				evaluate.
			self isModified: false.
			self filename: aString asFileReference ]
]

{ #category : #public }
SmaCCTransformationToolkitModel >> loadRewriteFile: aString [
	aString isNil
		ifTrue: [ ^ self ].
	self rewrites: (self openRewriteFile: aString)
]

{ #category : #running }
SmaCCTransformationToolkitModel >> localRunOn: aCollection [
	SmaCCRewriteProcessor new
		rules: self rewrites;
		parserClass: self inputParserClass;
		validationParserClass: self validationParserClass;
		files: aCollection;
		outputDirectory: self outputDirectory;
		baseDirectory: self commonParentDirectory;
		lineEnding: self lineEnding;
		processAllNotifying: [ :each | self changed: #resultAdded with: each ]
]

{ #category : #'actions-rewrites' }
SmaCCTransformationToolkitModel >> openRewriteFile: filename [
	^ SmaCCRewriteFile onFile: filename
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> outputDirectory [
	^ outputDirectory ifNil: [ '' ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> outputDirectory: aString [
	outputDirectory := aString.
	modified := true.
	self changed: #outputDirectory with: aString
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> previewResultFor: aFilename before: beforeBlock after: afterBlock onException: exceptionBlock [
	| result processor |
	result := SmaCCRewriteCompleteResult model: self.
	processor := SmaCCRewriteProcessor new.
	processor rules: self rewrites.
	processor parserClass: self inputParserClass.
	processor validationParserClass: self validationParserClass.
	processor debug: true.
	beforeBlock value.
	[ [ processor processFile: aFilename usingResult: result ]
		on: Error , Halt
		do: [ :ex | 
			exceptionBlock cull: ex.
			ex pass ] ]
		ensure: [ afterBlock value.
			processor debug: false ].
	^ result
]

{ #category : #'actions-rewrites' }
SmaCCTransformationToolkitModel >> removeTransformation: aSmaCCAbstractRewrite [
	aSmaCCAbstractRewrite parent
		removeTransformation: aSmaCCAbstractRewrite.
	self changed: #removedTransformation: with: aSmaCCAbstractRewrite
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> rewrites [
	^ rewrites
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> rewrites: aSmaCCRewrite [
	rewrites := aSmaCCRewrite.
	modified := true.
	self changed: #rewrites with: aSmaCCRewrite
]

{ #category : #'actions-running' }
SmaCCTransformationToolkitModel >> runOn: tranformationFiles [
	self runOnServer
		ifTrue: [ self serverRunOn: tranformationFiles ]
		ifFalse: [ self localRunOn: tranformationFiles ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> runOnServer [
	^ runOnServer ifNil: [ false ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> runOnServer: aBoolean [
	runOnServer := aBoolean.
	modified := true.
	self changed: #runOnServer with: aBoolean
]

{ #category : #public }
SmaCCTransformationToolkitModel >> saveRewrites [
	self rewrites save
]

{ #category : #public }
SmaCCTransformationToolkitModel >> saveTo: aFilename [
	aFilename asFileReference
		ensureDelete;
		writeStreamDo: [ :stream | 
			stream
				nextPutAll: 'self';
				cr;
				tab;
				nextPutAll: 'inputParserClass: ';
				nextPutAll: self inputParserClass storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'validationParserClass: ';
				nextPutAll: self validationParserClass storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'loadRewriteFile: ';
				nextPutAll: self rewrites filename pathString storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'files: ';
				nextPutAll: self filenameStrings asArray storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'outputDirectory: ';
				nextPutAll: self outputDirectory storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'createSubdirectories: ';
				nextPutAll: self createSubdirectories storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'server: ';
				nextPutAll: self server storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'runOnServer: ';
				nextPutAll: self runOnServer storeString;
				nextPut: $;;
				cr;
				tab;
				nextPutAll: 'commonParentDirectory: ';
				nextPutAll: commonParentDirectory storeString ].
	modified := false.
	self areRewritesModified ifTrue: [ self saveRewrites ].
	self filename: aFilename asFileReference
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> server [
	^ (server isNil or: [ server isEmpty ])
		ifTrue: [ 'localhost' ]
		ifFalse: [ server ]
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> server: aString [
	server := aString.
	modified := true.
	self changed: #server with: aString
]

{ #category : #private }
SmaCCTransformationToolkitModel >> serverAndPort: defaultPort from: aString [
	| serverName port parts |
	parts := aString substrings: $: asString.
	(parts size = 2
		and:
			[ parts last notEmpty
				and: [ parts last allSatisfy: [ :each | each isDigit ] ] ])
		ifTrue: [ serverName := parts first.
			port := parts last asNumber ]
		ifFalse: [ serverName := aString.
			port := defaultPort ].
	^ Array with: serverName with: port
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> serverName [
	^ (self serverAndPort: 36rSM from: self server) first
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> serverPort [
	^ (self serverAndPort: 36rSM from: self server) last
]

{ #category : #running }
SmaCCTransformationToolkitModel >> serverRunOn: aCollection [
	| baseString stream socket request serverStream |
	baseString := 'INPUTPARSER=' , self inputParserClass name
		, ';REWRITEFILE=' , self rewrites filename pathString.
	self outputDirectory notEmpty
		ifTrue: [ baseString := baseString , ';OUTPUTDIRECTORY='
				, self outputDirectory ].
	baseString := baseString , ';BASEDIRECTORY='
		, self commonParentDirectory.
	self validationParserClass notNil
		ifTrue: [ baseString := baseString , ';OUTPUTPARSER='
				, self validationParserClass name ].
	self lineEnding notNil
		ifTrue:
			[ baseString := baseString , ';LINEENDING=' , self lineEnding asString ].
	stream := WriteStream on: String new.
	aCollection
		do: [ :each | 
			stream
				nextPutAll: baseString;
				nextPutAll: ';FILE=';
				nextPutAll: each;
				nextPut: (Character value: 0) ].
	request := stream contents.
	socket := Socket newTCP
		connectTo: (NetNameResolver addressForName: self serverName)
			port: self serverPort;
		yourself.
	(serverStream := SocketStream on: socket) binary.
	[ serverStream
		noTimeout;
		nextPut: $1 asInteger;
		nextPut: (request size bitAnd: 255);
		nextPut: (request size >> 8 bitAnd: 255);
		nextPut: (request size >> 16 bitAnd: 255);
		nextPut: (request size >> 24 bitAnd: 255);
		nextPutAll: request asByteArray;
		flush.
	aCollection size
		timesRepeat: [ self
				changed: #resultAdded
				with:
					(SmaCCRewriteResult
						fromSocketString:
							(serverStream
								next:
									serverStream next + (serverStream next << 8)
										+ (serverStream next << 16) + (serverStream next << 24))
								asString) ] ]
		ensure: [ socket close ]
]

{ #category : #running }
SmaCCTransformationToolkitModel >> terminateServer [
	| socket serverStream |
	socket := Socket newTCP
		connectTo: (NetNameResolver addressForName: self serverName) port: self serverPort;
		yourself.
	(serverStream := SocketStream on: socket) binary.
	[ serverStream
		nextPut: $E asInteger;
		flush.
	[ serverStream next ]
		on: Error
		do: [ :ex | "We should get here when the server quits" ex return ] ]
		ensure: [ serverStream close ]
]

{ #category : #public }
SmaCCTransformationToolkitModel >> toggleUseServer [
	self runOnServer: self runOnServer not
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> validationParserClass [
	^ validationParserClass
]

{ #category : #accessing }
SmaCCTransformationToolkitModel >> validationParserClass: aSmaCCParserClass [
	validationParserClass := aSmaCCParserClass.
	modified := true.
	self changed: #validationParserClass with: aSmaCCParserClass
]
