Class {
	#name : #CPPPreprocessor,
	#superclass : #Object,
	#instVars : [
		'macros',
		'files',
		'source',
		'stack'
	],
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #macros }
CPPPreprocessor >> addMacro: aMacro named: aString [
	aMacro isNil
		ifTrue: [ macros removeKey: aString ifAbsent: [  ] ]
		ifFalse: [ macros at: aString put: aMacro ]
]

{ #category : #'private-actions' }
CPPPreprocessor >> appendTo: anInteger [
	| interval last |
	last := stack last.
	interval := SmaCCStringInterval
		from: last first
		to: (last second min: anInteger)
		string: last last.
	interval id: (self intervalIdFor: last last).
	source appendInterval: interval
]

{ #category : #'private-actions' }
CPPPreprocessor >> concatenate: left with: right [
	left isNil
		ifTrue: [ ^ self ].
	self appendTo: left stopPosition.
	stack last at: 1 put: right startPosition
]

{ #category : #'private-actions' }
CPPPreprocessor >> convertInteger: aString [
]

{ #category : #accessing }
CPPPreprocessor >> currentFileSource [
	^ stack last last
]

{ #category : #'private-actions' }
CPPPreprocessor >> evaluate: aString with: arguments [
]

{ #category : #'private-actions' }
CPPPreprocessor >> expandMacro: aMacro from: aToken using: aParser [
	| newStart |
	self appendTo: aToken startPosition - 1.
	newStart := aMacro process: aToken on: self using: aParser.
	stack last at: 1 put: newStart
]

{ #category : #'private-actions' }
CPPPreprocessor >> finish [
	self appendTo: SmallInteger maxVal.
	stack removeLast
]

{ #category : #'private-actions' }
CPPPreprocessor >> include: filename [
]

{ #category : #'private-actions' }
CPPPreprocessor >> includeNext: filename [
]

{ #category : #'initialize-release' }
CPPPreprocessor >> initialize [
	super initialize.
	files := OrderedCollection new.
	macros := Dictionary new.
	source := SmaCCString new.
	stack := OrderedCollection new
]

{ #category : #private }
CPPPreprocessor >> intervalIdFor: aString [
	1 to: files size do: [ :i | 
		(files at: i) value == aString
			ifTrue: [ ^ i ] ].
	files add: files size printString -> aString.
	^ files size
]

{ #category : #'private-actions' }
CPPPreprocessor >> is: a equalTo: b [
	^ false
]

{ #category : #'private-actions' }
CPPPreprocessor >> is: a lessThan: b [
	^ false
]

{ #category : #'private-actions' }
CPPPreprocessor >> isDefined: aString [
]

{ #category : #'private-actions' }
CPPPreprocessor >> isTrue: aValue [
	^ false
]

{ #category : #macros }
CPPPreprocessor >> macroNamed: aString [
	^ macros at: aString ifAbsent: [  ]
]

{ #category : #processing }
CPPPreprocessor >> processFile: aFilename [
	| code |
	code := self sourceFor: aFilename.
	files add: aFilename asFileReference pathString -> code.
	stack add: (Array with: 1 with: code size with: code).
	CPPPreprocessorParser process: code using: self
]

{ #category : #processing }
CPPPreprocessor >> processSource: aString inInterval: anInterval [
	stack
		add: (Array with: anInterval first with: anInterval last with: aString).
	CPPPreprocessorParser
		process: aString
		interval: anInterval
		using: self
		isMacro: true
]

{ #category : #'private-actions' }
CPPPreprocessor >> processToken: aToken using: aParser [
	macros
		at: aToken source
		ifPresent: [ :macro | self expandMacro: macro from: aToken using: aParser ]
]

{ #category : #macros }
CPPPreprocessor >> removeMacro: aString around: aBlock [
	| original |
	original := self macroNamed: aString.
	self addMacro: nil named: aString.
	aBlock
		ensure: [ self addMacro: original named: aString ]
]

{ #category : #processing }
CPPPreprocessor >> sourceFor: aFilename [
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
CPPPreprocessor >> sourceString [
	^ source asString
]

{ #category : #'private-actions' }
CPPPreprocessor >> stringify: nameToken hash: aToken [
	| macro string interval |
	macro := self macroNamed: nameToken value.
	macro isNil
		ifTrue: [ ^ self ].
	self appendTo: aToken startPosition - 1.
	stack last at: 1 put: nameToken stopPosition + 1.
	string := '"'
		,
			((((macro source
				copyFrom: macro interval first
				to: macro interval last) copyReplaceAll: '"' with: '\"')
				copyReplaceAll: String cr
				with: '\r') copyReplaceAll: String lf with: '\n') , '"'.
	interval := SmaCCStringInterval
		from: 1
		to: string size
		string: string.
	interval id: (self intervalIdFor: string).
	source appendInterval: interval
]

{ #category : #'private-actions' }
CPPPreprocessor >> undefine: aString [
]

{ #category : #'private-actions' }
CPPPreprocessor >> valueOf: aString [
]
