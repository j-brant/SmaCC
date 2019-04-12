Class {
	#name : #CPPPreprocessor,
	#superclass : #Object,
	#instVars : [
		'macros',
		'files',
		'source',
		'stack',
		'includePath',
		'processIncludes',
		'processDefines'
	],
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #macros }
CPPPreprocessor >> addMacro: aMacro named: aString [
	aMacro isNil
		ifTrue: [ macros removeKey: aString ifAbsent: [  ] ]
		ifFalse: [ macros at: aString put: aMacro ]
]

{ #category : #private }
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
CPPPreprocessor >> concatenate: left with: right using: aParser [
	left isNil
		ifTrue: [ ^ self ].
	self appendTo: left stopPosition.
	self skipTo: right startPosition.
	self processToken: right using: aParser
]

{ #category : #'private-actions' }
CPPPreprocessor >> convertInteger: aString [
]

{ #category : #private }
CPPPreprocessor >> currentDirectory [
	stack
		reverseDo: [ :each | 
			files
				do: [ :assoc | 
					assoc value == each last
						ifTrue: [ ^ assoc key parent ] ] ].
	^ '.' asFileReference
]

{ #category : #accessing }
CPPPreprocessor >> currentFileSource [
	^ stack last last
]

{ #category : #'private-actions' }
CPPPreprocessor >> define: aNameToken as: contentsToken hash: hashToken [
	processDefines
		ifFalse: [ ^ self ].
	self appendTo: hashToken startPosition - 1.
	self
		addMacro:
			(contentsToken isNil
				ifTrue: [ CPPPreprocessorMacro replacement: '' ]
				ifFalse: [ CPPPreprocessorMacro
						replacement: self currentFileSource
						interval: contentsToken sourceInterval ])
		named: aNameToken source.
	self skipTo: (contentsToken ifNil: [ aNameToken ]) stopPosition + 1
]

{ #category : #'private-actions' }
CPPPreprocessor >> defineFunction: aNameToken parameters: parmTokens as: contentsToken hash: hashToken right: rParenToken [
	| parmNames |
	processDefines
		ifFalse: [ ^ self ].
	self appendTo: hashToken startPosition - 1.
	parmNames := parmTokens collect: #source.
	self
		addMacro:
			(contentsToken isNil
				ifTrue: [ CPPPreprocessorFunctionMacro replacement: '' parameters: parmNames ]
				ifFalse: [ CPPPreprocessorFunctionMacro
						replacement: self currentFileSource
						interval: contentsToken sourceInterval
						parameters: parmNames ])
		named: aNameToken source allButLast.
	self skipTo: (contentsToken ifNil: [ rParenToken ]) stopPosition + 1
]

{ #category : #'private-actions' }
CPPPreprocessor >> evaluate: aString with: arguments [
]

{ #category : #'private-actions' }
CPPPreprocessor >> expandMacro: aMacro from: aToken using: aParser [
	| newStart |
	self appendTo: aToken startPosition - 1.
	newStart := aMacro process: aToken on: self using: aParser.
	self skipTo: newStart
]

{ #category : #private }
CPPPreprocessor >> findIncludeFile: aString next: aBoolean [
	| filename paths foundPrevious currentDir |
	filename := aString copyFrom: 2 to: aString size - 1.
	currentDir := self currentDirectory.
	paths := aString first = $"
		ifTrue: [ {currentDir} , includePath ]
		ifFalse: [ includePath ].
	foundPrevious := aBoolean not.
	paths
		do: [ :each | 
			| dir fileRef |
			dir := each asFileReference.
			foundPrevious
				ifTrue: [ (dir isDirectory
						and: [ (fileRef := dir resolve: filename) exists
								and: [ fileRef isReadable ] ])
						ifTrue: [ ^ fileRef ] ]
				ifFalse: [ foundPrevious := currentDir = dir ] ].
	^ nil
]

{ #category : #'private-actions' }
CPPPreprocessor >> finish [
	self appendTo: SmallInteger maxVal.
	stack removeLast
]

{ #category : #'private-actions' }
CPPPreprocessor >> include: aToken hash: hashToken [
	^ self includeFile: aToken hash: hashToken next: false
]

{ #category : #private }
CPPPreprocessor >> includeFile: aToken hash: hashToken next: aBoolean [
	| file |
	processIncludes
		ifFalse: [ ^ self ].
	file := self findIncludeFile: aToken source next: aBoolean.
	file isNil
		ifTrue: [ ^ self ].
	self appendTo: hashToken startPosition - 1.
	self processFile: file.
	self skipTo: aToken stopPosition + 1
]

{ #category : #'private-actions' }
CPPPreprocessor >> includeNext: aToken hash: hashToken [
	^ self includeFile: aToken hash: hashToken next: true
]

{ #category : #accessing }
CPPPreprocessor >> includePath [
	^ includePath
]

{ #category : #accessing }
CPPPreprocessor >> includePath: aCollection [
	includePath := aCollection
]

{ #category : #'initialize-release' }
CPPPreprocessor >> initialize [
	super initialize.
	files := OrderedCollection new.
	macros := Dictionary new.
	source := SmaCCString new.
	stack := OrderedCollection new.
	processDefines := false.
	processIncludes := false.
	includePath := #()
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

{ #category : #accessing }
CPPPreprocessor >> processDefines [
	^ processDefines
]

{ #category : #accessing }
CPPPreprocessor >> processDefines: aBoolean [
	processDefines := aBoolean
]

{ #category : #processing }
CPPPreprocessor >> processFile: aFilename [
	| code |
	code := self sourceFor: aFilename.
	files add: aFilename asFileReference -> code.
	stack add: (Array with: 1 with: code size with: code).
	CPPPreprocessorParser process: code using: self
]

{ #category : #accessing }
CPPPreprocessor >> processIncludes [
	^ processIncludes
]

{ #category : #accessing }
CPPPreprocessor >> processIncludes: aBoolean [
	processIncludes := aBoolean
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

{ #category : #private }
CPPPreprocessor >> skipTo: anInteger [
	stack last at: 1 put: anInteger
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
	self skipTo: nameToken stopPosition + 1.
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
