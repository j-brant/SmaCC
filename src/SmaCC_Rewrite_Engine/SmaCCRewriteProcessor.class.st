Class {
	#name : 'SmaCCRewriteProcessor',
	#superclass : 'Object',
	#instVars : [
		'rules',
		'parserClass',
		'inputDirectory',
		'outputDirectory',
		'files',
		'validationParserClass',
		'rewriteEngine',
		'baseDirectory',
		'lineEnding'
	],
	#classVars : [
		'Debug'
	],
	#category : 'SmaCC_Rewrite_Engine',
	#package : 'SmaCC_Rewrite_Engine'
}

{ #category : 'accessing' }
SmaCCRewriteProcessor class >> debug [
	^ Debug ifNil: [ false ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor class >> debug: aBoolean [
	Debug := aBoolean
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> baseDirectory [
	^ baseDirectory ifNil: [ '' ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> baseDirectory: aString [
	baseDirectory := aString
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> debug [
	^ self class debug
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> debug: aBoolean [
	self class debug: aBoolean
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> engine [
	rewriteEngine isNil
		ifTrue:
			[ rewriteEngine := SmaCCRewriteEngine new.
			rewriteEngine rewriteRule: self rules ].
	^ rewriteEngine
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> errorClasses [
	^ Error , UnrecognizedImageFormatError
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> extension [
	^ self parserClass fileExtension
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> files [
	^ files ifNil: [ files := self inputFilenames ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> files: aCollection [
	files := aCollection
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> inputDirectory [
	^ inputDirectory
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> inputDirectory: aString [
	inputDirectory := aString
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> inputFilenames [
	| names |
	names := OrderedCollection new.
	(self inputDirectory asFileReference
		allChildrenMatching: '*' , self extension)
		do: [ :each | names add: each path ].
	^ names
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> lineEnding [
	^ lineEnding
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> lineEnding: aSymbol [
	lineEnding := aSymbol
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> outputDirectory [
	^ outputDirectory
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> outputDirectory: aString [
	outputDirectory := aString
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> parseFile: aString [
	| source |
	source := self sourceFor: aString.
	^ self parserClass parse: source
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> parseRewriteRuleFile: aString [
	rules := SmaCCRewriteRuleFileParser parseFile: aString
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> parserClass [
	^ parserClass
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> parserClass: aSmaCCParserClass [
	parserClass := aSmaCCParserClass
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> processAllNotifying: postBlock [
	self files do: [ :each | postBlock value: (self processFile: each) ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> processFile: aString [
	^ self processFile: aString usingResult: SmaCCRewriteResult new
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> processFile: aString usingResult: aSmaCCRewriteResult [
	| input output tree stream subdirectory fullFilename |
	(Smalltalk includesKey: #Smalltalk)
		ifFalse: [ Smalltalk at: #Smalltalk put: Smalltalk ].	"Add Smalltalk back if it got stripped"
	aSmaCCRewriteResult filename: aString.
	[ input := self sourceFor: aString.
	aSmaCCRewriteResult inputSource: input.
	stream := SmaCCLineNumberStream on: (ReadStream on: input).
	tree := [ self parserClass parseStream: stream ]
			on: SmaCCParserError
			do: [ :ex | 
				| parser token |
				parser := ex parser.
				token := parser errorToken.
				token notNil
					ifTrue: [ aSmaCCRewriteResult
							startLine: (stream lineNumberFor: token startPosition);
							startColumn: (stream columnNumberFor: token startPosition);
							interval: token sourceInterval ].
				ex pass ].
	tree
		completeSource: input;
		filename: aString.
	subdirectory := self baseDirectory isEmpty
			ifTrue: [ '' ]
			ifFalse: [ aString asFileReference parent pathString
					copyFrom: self baseDirectory size + 1
					to: aString asFileReference parent pathString size ].
	fullFilename := (self outputDirectory isNil
			or: [ self outputDirectory isEmpty ])
			ifTrue: [ '' ]
			ifFalse: [ self outputDirectory , FileSystem disk delimiter asString , subdirectory ].
	self engine
		source: (aSmaCCRewriteResult smaccStringClass on: input);
		outputDirectory: fullFilename;
		outputFilename: aString asFileReference basenameWithoutExtension
				, (self validationParserClass isNil
						ifTrue: [ '' ]
						ifFalse: [ self validationParserClass fileExtension ]).
	output := [ self engine rewriteTree: tree ]
			on: self errorClasses
			do: [ :ex | 
				| frame node |
				frame := thisContext.
				[ frame isNil
					or: [ (frame receiver isKindOf: SmaCCRewrite)
							and: [ frame method selector = #performOn:continuation: ] ] ]
					whileFalse: [ frame := frame sender ].
				frame notNil
					ifTrue: [ node := frame tempAt: 1.
						aSmaCCRewriteResult
							startLine: (stream lineNumberFor: node startPosition);
							startColumn: (stream columnNumberFor: node startPosition);
							interval: node sourceInterval;
							transformation: frame receiver ].
				ex pass ].
	aSmaCCRewriteResult
		outputSource: output;
		transformedString: self engine source;
		outputFilename: self engine outputFilename.
	self engine additionalFiles
		keysAndValuesDo: [ :file :text | aSmaCCRewriteResult addFile: text named: file ].
	(self outputDirectory isNil or: [ self outputDirectory isEmpty ])
		ifFalse: [ | filename |
			filename := self engine outputDirectory
					, ((self engine outputDirectory isEmpty
							or: [ self engine outputDirectory last = FileSystem disk delimiter ])
							ifTrue: [ '' ]
							ifFalse: [ String with: FileSystem disk delimiter ])
					, self engine outputFilename.
			self engine ignoreFile ifFalse: [ self saveOutput: output in: filename ].
			self engine additionalFiles
				keysAndValuesDo: [ :file :text | self saveOutput: text in: file ] ].
	self engine finished.
	aSmaCCRewriteResult class == SmaCCRewriteResult
		ifFalse: [ self validate: output forResult: aSmaCCRewriteResult ] ]
		on: self errorClasses
		do: [ :ex | 
			aSmaCCRewriteResult
				type: (output isNil ifTrue: [ #error ] ifFalse: [ #warning ]).
			aSmaCCRewriteResult errorString: ex description.
			(self debug and: [ Processor activeProcess respondsTo: #debug ])
				ifTrue: [ Processor activeProcess debug ].
			((Smalltalk options select: [ :each | '-/' includes: each first ])
				collect: [ :each | each copyFrom: 2 to: each size ])
				do: [ :each | (each sameAs: 'error') ifTrue: [ ex pass ] ].
			ex return ].
	^ aSmaCCRewriteResult
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> ruleFile: aString [
	self parseRewriteRuleFile: aString
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> rules [
	^ rules
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> rules: aSmaCCAbstractRewrite [
	rules := aSmaCCAbstractRewrite
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> saveOutput: aString in: aFilename [
	| directory tries |
	(aFilename isNil or: [ aFilename isEmpty ])
		ifTrue: [ ^ self ].
	aString isEmpty
		ifTrue: [ ^ self ].
	directory := aFilename asFileReference parent pathString.
	tries := 1.
	[ tries < 10 and: [ directory asFileReference exists not ] ]
		whileTrue: [ [ directory asFileReference ensureCreateDirectory ]
				on: Error
				do: [ :ex | ex return ].
			tries := tries + 1 ].
	aFilename asFileReference
		ensureDelete;
		writeStreamDo: [ :str | 
			| stream |
			stream := str.
			self lineEnding notNil
				ifTrue: [ stream := ZnNewLineWriterStream on: str.
					self lineEnding = #crLf
						ifTrue: [ stream forCrLf ].
					self lineEnding = #lf
						ifTrue: [ stream forLf ].
					self lineEnding = #cr
						ifTrue: [ stream forCr ] ].
			stream nextPutAll: aString ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> sourceFor: aString [
	| fileRef |
	fileRef := aString asFileReference.
	^ [ fileRef contents ]
		on: Error
		do: [ :ex | 
			| encoding |
			encoding := [ fileRef
				binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
				on: ZnCharacterEncodingError
				do: [ nil ].
			fileRef
				readStreamDo: [ :stream | 
					SmaCCParser setEncoding: encoding on: stream.
					stream contents ] ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> validate: aString forResult: aSmaCCRewriteResult [
	| stream |
	self validationParserClass isNil
		ifTrue: [ ^ self ].
	stream := SmaCCLineNumberStream on: (ReadStream on: aString).
	[ self validationParserClass parseStream: stream ]
		on: SmaCCParserError
		do:
			[ :ex | 
			| parser token |
			parser := ex parser.
			token := parser errorToken.
			token notNil
				ifTrue:
					[ aSmaCCRewriteResult
						startLine: (stream lineNumberFor: (token startPosition ifNil: [ 1 ]));
						startColumn: (stream columnNumberFor: (token startPosition ifNil: [ 1 ]));
						interval: ((token startPosition ifNil: [ 1 ]) to: (token stopPosition ifNil: [ 1 ])) ].
			aSmaCCRewriteResult
				errorString: 'Validation error';
				type: #warning ]
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> validationParserClass [
	^ validationParserClass
]

{ #category : 'accessing' }
SmaCCRewriteProcessor >> validationParserClass: aSmaCCParserClass [
	validationParserClass := aSmaCCParserClass
]
