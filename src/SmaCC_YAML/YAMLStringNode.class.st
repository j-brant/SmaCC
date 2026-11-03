Class {
	#name : 'YAMLStringNode',
	#superclass : 'YAMLValueNode',
	#instVars : [
		'parts',
		'indent',
		'endingNewlines'
	],
	#classVars : [
		'DoubleQuoteEscapes'
	],
	#category : 'SmaCC_YAML-Parser',
	#package : 'SmaCC_YAML',
	#tag : 'Parser'
}

{ #category : 'generated' }
YAMLStringNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitString: self
]

{ #category : 'private' }
YAMLStringNode >> combineLines: aString [
	^ String
		streamContents: [ :stream | 
			| lines first |
			first := true.
			lines := aString lines.
			lines
				do: [ :each | 
					each trim isEmpty
						ifTrue: [ stream lf.
							first := true ]
						ifFalse: [ first ifFalse: [ stream nextPutAll: ' ' ].
							stream nextPutAll: each trim.
							first := false ] ] ]
]

{ #category : 'generated' }
YAMLStringNode >> compositeTokenVariables [
	^ #(#parts #endingNewlines #anchors #tags)
]

{ #category : 'private' }
YAMLStringNode >> createObject [
	(parts size = 1 and: [ parts first value notEmpty ])
		ifTrue: [ (parent notNil
				and: [ (parent isKindOf: YAMLMappingNode) and: [ parent key == self ] ])
				ifFalse: [ (#('true' 'on' 'yes') includes: parts first value asLowercase)
						ifTrue: [ ^ true ].
					(#('false' 'off' 'no') includes: parts first value asLowercase)
						ifTrue: [ ^ false ].
					(#('null' '~') includes: parts first value asLowercase) ifTrue: [ ^ nil ] ].
			parts first value first = $'
				ifTrue: [ ^ self singleQuoteValue: parts first value ].
			parts first value first = $"
				ifTrue: [ ^ self doubleQuoteValue: parts first value ].
			^ parts first value ].
	^ self source
		ifNil: [ String
				streamContents: [ :stream | 
					parts
						do: [ :each | stream nextPutAll: each value ]
						separatedBy: [ stream space ] ] ]
		ifNotNil: [ :str | 
			(str beginsWith: '>')
				ifTrue: [ | stream indicator |
					stream := str readStream.
					indicator := stream nextLine.
					self foldString: stream upToEnd indicator: indicator ]
				ifFalse: [ (str beginsWith: '|')
						ifTrue: [ | stream indicator |
							stream := str readStream.
							indicator := stream nextLine.
							self literalString: stream upToEnd indicator: indicator ]
						ifFalse: [ self combineLines: str ] ] ]
]

{ #category : 'private' }
YAMLStringNode >> doubleQuoteEscapeTypes [
	DoubleQuoteEscapes ifNotNil: [ ^ DoubleQuoteEscapes ].
	DoubleQuoteEscapes := Dictionary new.
	DoubleQuoteEscapes
		at: $r put: [ :input | String cr ];
		at: $n put: [ :input | String lf ];
		at: $t put: [ :input | '	' ];
		at: $x
			put: [ :input | (Character value: ('16r' , (input next: 2)) asNumber) asString ];
		at: $u
			put: [ :input | (Character value: ('16r' , (input next: 4)) asNumber) asString ];
		at: $U
			put: [ :input | (Character value: ('16r' , (input next: 8)) asNumber) asString ].
	^ DoubleQuoteEscapes
]

{ #category : 'private' }
YAMLStringNode >> doubleQuoteValue: aString [
	| input |
	input := (self combineLines: (aString copyFrom: 2 to: aString size - 1))
			readStream.
	^ String
		streamContents: [ :stream | 
			| char |
			[ input atEnd ]
				whileFalse: [ char := input next.
					char = $\
						ifTrue: [ stream
								nextPutAll: ((self doubleQuoteEscapeTypes
										at: (char := input next)
										ifAbsent: [ [ :s | char asString ] ]) value: input) ]
						ifFalse: [ stream nextPut: char ] ] ]
]

{ #category : 'generated' }
YAMLStringNode >> endingNewlines [
	^ endingNewlines
]

{ #category : 'generated' }
YAMLStringNode >> endingNewlines: anOrderedCollection [
	endingNewlines := anOrderedCollection
]

{ #category : 'private' }
YAMLStringNode >> foldString: aString indicator: indicatorString [
	| lines indents deleteCrs includeAllCrs index char |
	char := indicatorString at: 2 ifAbsent: [ $  ].
	char isDigit ifFalse: [ char := indicatorString at: 3 ifAbsent: [ $  ] ].
	char isDigit
		ifTrue: [ indents := (self indent ifNil: [ 0 ]) + (char asInteger - $0 asInteger) ].
	deleteCrs := indicatorString includes: $-.
	includeAllCrs := indicatorString includes: $+.
	lines := aString lines asOrderedCollection.
	includeAllCrs
		ifFalse: [ index := lines size.
			[ index > 0 ]
				whileTrue: [ (lines at: index) size <= (self indent ifNil: [ 0 ])
						ifTrue: [ lines removeLast ].
					index := index - 1 ] ].
	^ String
		streamContents: [ :stream | 
			| lastWasIndented |
			lastWasIndented := false.
			lines
				do: [ :each | 
					| line space |
					space := true.
					indents
						ifNil: [ line := each trimLeft.
							indents := each size - line size ]
						ifNotNil: [ line := each size > indents
									ifTrue: [ each allButFirst: indents ]
									ifFalse: [ '' ].
							(line notEmpty
								and: [ line first isSeparator and: [ stream position > 0 ] ])
								ifTrue: [ space := false.
									stream nextPut: Character lf.
									lastWasIndented := true ]
								ifFalse: [ lastWasIndented
										ifTrue: [ stream nextPut: Character lf.
											space := false ].
									lastWasIndented := false ] ].
					line isEmpty
						ifTrue: [ stream nextPut: Character lf ]
						ifFalse: [ (space and: [ stream position > 0 ]) ifTrue: [ stream space ] ].
					stream nextPutAll: line ].
			(deleteCrs not and: [ String crlf includes: aString last ])
				ifTrue: [ stream nextPut: Character lf ] ]
]

{ #category : 'generated' }
YAMLStringNode >> indent [
	^ indent
]

{ #category : 'generated' }
YAMLStringNode >> indent: anObject [
	self setParent: self indent to: nil.
	indent := anObject.
	self setParent: self indent to: self
]

{ #category : 'generated-initialize-release' }
YAMLStringNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	endingNewlines := OrderedCollection new: 2.
]

{ #category : 'testing' }
YAMLStringNode >> isStringNode [
	^ true
]

{ #category : 'private' }
YAMLStringNode >> literalString: aString indicator: indicatorString [
	| lines indents deleteCrs includeAllCrs index char |
	char := indicatorString at: 2 ifAbsent: [ $  ].
	char isDigit ifFalse: [ char := indicatorString at: 3 ifAbsent: [ $  ] ].
	char isDigit
		ifTrue: [ indents := (self indent ifNil: [ 0 ]) + (char asInteger - $0 asInteger) ].
	deleteCrs := indicatorString includes: $-.
	includeAllCrs := indicatorString includes: $+.
	lines := aString lines asOrderedCollection.
	includeAllCrs
		ifFalse: [ index := lines size.
			[ index > 0 ]
				whileTrue: [ (lines at: index) size <= (self indent ifNil: [ 0 ])
						ifTrue: [ lines removeLast ].
					index := index - 1 ] ].
	^ String
		streamContents: [ :stream | 
			lines
				do: [ :each | 
					| line |
					indents
						ifNil: [ line := each trimLeft.
							indents := each size - line size ]
						ifNotNil: [ line := each size > indents
									ifTrue: [ each allButFirst: indents ]
									ifFalse: [ '' ] ].
					stream nextPutAll: line ]
				separatedBy: [ stream nextPut: Character lf ].
			(deleteCrs not and: [ String crlf includes: aString last ])
				ifTrue: [ stream nextPut: Character lf ] ]
]

{ #category : 'generated' }
YAMLStringNode >> otherVariables [
	^ #(#indent)
]

{ #category : 'generated' }
YAMLStringNode >> parts [
	^ parts
]

{ #category : 'generated' }
YAMLStringNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]

{ #category : 'private' }
YAMLStringNode >> singleQuoteValue: aString [
	| value |
	value := (aString copyFrom: 2 to: aString size - 1)
			copyReplaceAll: ''''''
			with: ''''.
	^ self combineLines: value
]
