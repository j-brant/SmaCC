Class {
	#name : #SmaCCDefinitionScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'parseSourceSelector'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #'generated-initialization' }
SmaCCDefinitionScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(29 'annotate_tokens' #(23 #(#directives))) #(29 'attributes' #(11 #(#directives))) #(29 'byte' #(26 #(#directives))) #(29 'error' #(43 #(#parser))) #(29 'excludes' #(8 #(#directives))) #(29 'glr' #(19 #(#directives))) #(29 'hierarchy' #(10 #(#directives))) #(29 'id' #(17 #(#directives))) #(29 'ignore_variable_warning' #(22 #(#directives))) #(29 'ignore_variables' #(21 #(#directives))) #(29 'ignorecase' #(20 #(#directives))) #(29 'left' #(14 #(#directives))) #(29 'lr1' #(24 #(#directives))) #(29 'nonassoc' #(16 #(#directives))) #(29 'prefix' #(12 #(#directives))) #(29 'right' #(15 #(#directives))) #(29 'root' #(9 #(#directives))) #(29 'scopes' #(7 #(#directives))) #(29 'start' #(18 #(#directives))) #(29 'states' #(7 #(#directives))) #(29 'suffix' #(13 #(#directives))) #(29 'unicode' #(25 #(#directives))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #testing }
SmaCCDefinitionScanner >> canParse: aString [
	^ self perform: parseSourceSelector with: aString
]

{ #category : #testing }
SmaCCDefinitionScanner >> canParseSmalltalk: aString [
	RBParser parseExpression: aString onError: [ :error :pos | ^ false ].
	^ true
]

{ #category : #generated }
SmaCCDefinitionScanner >> classLeftId [
	^ 44
]

{ #category : #generated }
SmaCCDefinitionScanner >> classRightId [
	^ 45
]

{ #category : #'token-actions' }
SmaCCDefinitionScanner >> code [
	| code |
	code := ''.
	[ code := code , (stream upTo: $}).
	self canParse: code ]
		whileFalse: [ stream atEnd
				ifTrue: [ ^ self scannerError ].
			code := code , '}' ].
	matchActions := Array with: self codeId.
	^ self createTokenFor: '{' , code , '}'
]

{ #category : #generated }
SmaCCDefinitionScanner >> codeId [
	^ 32
]

{ #category : #generated }
SmaCCDefinitionScanner >> directiveId [
	^ 36
]

{ #category : #generated }
SmaCCDefinitionScanner >> emptySymbolTokenId [
	^ 102
]

{ #category : #generated }
SmaCCDefinitionScanner >> errorTokenId [
	^ 103
]

{ #category : #'token-actions' }
SmaCCDefinitionScanner >> immediateCode [
	| code |
	code := ''.
	[ code := code , (stream upTo: $]).
	self canParse: code ]
		whileFalse: [ stream atEnd
				ifTrue: [ ^ self scannerError ].
			code := code , ']' ].
	matchActions := Array with: self immediateCodeId.
	^ self createTokenFor: '[' , code , ']'
]

{ #category : #generated }
SmaCCDefinitionScanner >> immediateCodeId [
	^ 33
]

{ #category : #'initialize-release' }
SmaCCDefinitionScanner >> initialize [
	super initialize.
	parseSourceSelector := #canParseSmalltalk:
]

{ #category : #generated }
SmaCCDefinitionScanner >> keywordId [
	^ 30
]

{ #category : #'initialize-release' }
SmaCCDefinitionScanner >> parseSourceSelector: aSymbol [
	parseSourceSelector := aSymbol
]

{ #category : #generated }
SmaCCDefinitionScanner >> productionId [
	^ 35
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan1 [
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10 [
	self step.
	currentCharacter == Character newPage
		ifTrue: [ ^ self scan10X4 ].
	currentCharacter == $#
		ifTrue: [ ^ self scan10X2 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(36 41) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2 41) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3 41) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4 41) ].
	^ self scan10X10
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X1 [
	self step.
	currentCharacter == $c
		ifTrue: [ self step.
			(currentCharacter between: $A and: $Z)
				ifTrue: [ ^ self recordAndReportMatch: #(38) ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(38).
					self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(38).
							self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(38).
									self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self recordAndReportMatch: #(38) ] ] ] ].
			^ self reportLastMatch ].
	^ self recordAndReportMatch: #(38)
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X10 [
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $/
		ifTrue: [ ^ self scan10X9 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan10X8 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(37 41) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan10X6 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(5 41) ].
	currentCharacter == $[
		ifTrue: [ ^ self scan10X3 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan10X1 ].
	currentCharacter == ${
		ifTrue: [ ^ self scan10X5 ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(6 41) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan10X7 ].
	^ self recordAndReportMatch: #(41)
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X2 [
	self recordMatch: #(31 41).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ [ self recordMatch: #(31).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X3 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan12 ].
	(currentCharacter <= $[ or: [ currentCharacter >= $^ ])
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X4 [
	self recordMatch: #(27 41).
	self step.
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X5 [
	[ self step.
	currentCharacter == $,
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self recordAndReportMatch: #(40) ].
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X6 [
	self recordMatch: #(41).
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X7 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X8 [
	self recordMatch: #(35 41).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10X9 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan12 [
	self step.
	currentCharacter == $c
		ifTrue: [ self step.
			(currentCharacter between: $A and: $Z)
				ifTrue: [ ^ self scan11 ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan11 ].
			^ self reportLastMatch ].
	^ self scan11
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan2 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(31) ].
			^ self scan2 ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan3 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan4 [
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan5 [
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan6 [
	[ self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan7 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan8 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(30).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan8 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan9X1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $'
		ifTrue:
			[ ^ self scan9X2 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue: [ ^ self scan1 ].
	^ self scan9X7
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X1 [
	[ self recordMatch: #(31).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X2 [
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X3 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X4 [
	self recordMatch: #(32).
	self step.
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X5 [
	[ self recordMatch: #(29).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X6 [
	self step.
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9X7 [
	currentCharacter == $:
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $`
		ifTrue: [ ^ self scan7 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan9X4 ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan9X6 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scan9X3 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ self scan9X5 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForToken [
	scope == #parser
		ifTrue: [ ^ self scan9 ].
	scope == #directives
		ifTrue:
			[ ^ self scanForTokenX2 ].
	scope == #default
		ifTrue:
			[ ^ self scanForTokenX1 ].
	scope == #scanner
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self scanForTokenX1X4
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X1 [
	[ self recordMatch: #(31).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X2 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X3 [
	[ self recordMatch: #(29).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X4 [
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $`
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ self scanForTokenX1X3 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scanForTokenX2X1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self scanForTokenX2X4
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX2X1 [
	[ self recordMatch: #(31).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX2X2 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX2X3 [
	[ self recordMatch: #(29).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX2X4 [
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX2X2 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ self scanForTokenX2X3 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> semicolonId [
	^ 37
]

{ #category : #generated }
SmaCCDefinitionScanner >> symbolnameId [
	^ 29
]

{ #category : #generated }
SmaCCDefinitionScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace nil nil nil #comment #code #immediateCode nil nil nil nil nil nil nil nil nil nil nil nil #patternToken)
]

{ #category : #generated }
SmaCCDefinitionScanner >> tokennameId [
	^ 28
]

{ #category : #generated }
SmaCCDefinitionScanner >> variablenameId [
	^ 34
]
