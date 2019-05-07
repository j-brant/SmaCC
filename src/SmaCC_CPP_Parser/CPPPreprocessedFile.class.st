Class {
	#name : #CPPPreprocessedFile,
	#superclass : #Object,
	#instVars : [
		'files',
		'source'
	],
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #accessing }
CPPPreprocessedFile >> append: aString from: startIndex to: endIndex [
	| interval |
	interval := SmaCCStringInterval
		from: startIndex
		to: endIndex
		string: aString.
	interval id: (self intervalIdFor: aString).
	source appendInterval: interval
]

{ #category : #accessing }
CPPPreprocessedFile >> directoryForSource: aString [
	files
		do: [ :assoc | 
			assoc value == aString
				ifTrue: [ ^ assoc key parent ] ].
	^ nil
]

{ #category : #'initialize-release' }
CPPPreprocessedFile >> initialize [
	super initialize.
	files := OrderedCollection new.
	source := SmaCCString new
]

{ #category : #accessing }
CPPPreprocessedFile >> intervalIdFor: aString [
	1 to: files size do: [ :i | 
		(files at: i) value == aString
			ifTrue: [ ^ i ] ].
	files add: files size printString -> aString.
	^ files size
]

{ #category : #accessing }
CPPPreprocessedFile >> loadFile: aFilename [
	| code |
	code := self sourceFor: aFilename.
	files add: aFilename asFileReference -> code.
	^ code
]

{ #category : #accessing }
CPPPreprocessedFile >> originalSource [
	^ files first value
]

{ #category : #accessing }
CPPPreprocessedFile >> smaccString [
	^ source
]

{ #category : #accessing }
CPPPreprocessedFile >> sourceFor: aFilename [
	| encoding fileRef |
	fileRef := aFilename asFileReference.
	encoding := [ fileRef
		binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ :ex | ex return: 'utf-8' ].
	^ fileRef
		readStreamDo: [ :stream | 
			SmaCCParser setEncoding: encoding on: stream.
			stream contents ]
]

{ #category : #accessing }
CPPPreprocessedFile >> sourceString [
	^ source asString
]

{ #category : #accessing }
CPPPreprocessedFile >> startPositionFor: anInteger [
	| current lastGoodIndex |
	lastGoodIndex := 1.
	current := 1.
	source
		intervalsDo: [ :each | 
			(anInteger between: current and: current + each size - 1)
				ifTrue: [ ^ each id = 1
						ifTrue: [ each start + (anInteger - current) ]
						ifFalse: [ lastGoodIndex ] ].
			current := current + each size.
			each id = 1
				ifTrue: [ lastGoodIndex := each stop + 1 ] ].
	^ lastGoodIndex
]

{ #category : #accessing }
CPPPreprocessedFile >> stopPositionFor: anInteger [
	| current haltOnNext |
	haltOnNext := false.
	current := 1.
	source
		intervalsDo: [ :each | 
			haltOnNext
				ifTrue: [ each id = 1
						ifTrue: [ ^ each start - 1 ] ]
				ifFalse: [ (anInteger between: current and: current + each size - 1)
						ifTrue: [ each id = 1
								ifTrue: [ ^ each start + (anInteger - current) ]
								ifFalse: [ haltOnNext := true ] ] ].
			current := current + each size ].
	^ self originalSource size
]
