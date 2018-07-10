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
	#(#(26 'annotate_tokens' #(23 #(#directives))) #(26 'attributes' #(12 #(#directives))) #(26 'error' #(6 #(#default #directives #parser #scanner))) #(26 'excludes' #(9 #(#directives))) #(26 'glr' #(20 #(#directives))) #(26 'hierarchy' #(11 #(#directives))) #(26 'id' #(18 #(#directives))) #(26 'ignore_variables' #(22 #(#directives))) #(26 'ignorecase' #(21 #(#directives))) #(26 'left' #(15 #(#directives))) #(26 'nonassoc' #(17 #(#directives))) #(26 'prefix' #(13 #(#directives))) #(26 'right' #(16 #(#directives))) #(26 'root' #(10 #(#directives))) #(26 'scopes' #(8 #(#directives))) #(26 'start' #(19 #(#directives))) #(26 'states' #(8 #(#directives))) #(26 'suffix' #(14 #(#directives))))
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
	^ 39
]

{ #category : #generated }
SmaCCDefinitionScanner >> classRightId [
	^ 40
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
	^ 29
]

{ #category : #generated }
SmaCCDefinitionScanner >> directiveId [
	^ 32
]

{ #category : #generated }
SmaCCDefinitionScanner >> emptySymbolTokenId [
	^ 88
]

{ #category : #generated }
SmaCCDefinitionScanner >> errorTokenId [
	^ 89
]

{ #category : #'initialize-release' }
SmaCCDefinitionScanner >> initialize [
	super initialize.
	parseSourceSelector := #canParseSmalltalk:
]

{ #category : #generated }
SmaCCDefinitionScanner >> keywordId [
	^ 27
]

{ #category : #'initialize-release' }
SmaCCDefinitionScanner >> parseSourceSelector: aSymbol [
	parseSourceSelector := aSymbol
]

{ #category : #generated }
SmaCCDefinitionScanner >> productionId [
	^ 31
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan10 [
	[ self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11 [
	self step.
	currentCharacter == Character newPage
		ifTrue: [ ^ self scan11X5 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan11X12 ].
	currentCharacter == $#
		ifTrue: [ ^ self scan11X2 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(32 37) ].
	currentCharacter == $'
		ifTrue: [ ^ self scan11X8 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2 37) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3 37) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4 37) ].
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	^ self scan11X13
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X1 [
	self step.
	currentCharacter == $c
		ifTrue: [ self step.
			(currentCharacter between: $A and: $Z)
				ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(34).
					self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(34).
							self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(34).
									self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self recordAndReportMatch: #(34) ] ] ] ].
			^ self reportLastMatch ].
	^ self recordAndReportMatch: #(34)
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X10 [
	self recordMatch: #(31 37).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X11 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X12 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	^ self scan1
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X13 [
	currentCharacter == $/
		ifTrue: [ ^ self scan11X11 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan11X10 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(33 37) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan11X7 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(5 37) ].
	currentCharacter == $[
		ifTrue: [ ^ self scan11X3 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan11X1 ].
	currentCharacter == ${
		ifTrue: [ ^ self scan11X6 ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(7 37) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan11X9 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan11X4 ].
	^ self recordAndReportMatch: #(37)
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X2 [
	self recordMatch: #(28 37).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X3 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan13 ].
	(currentCharacter <= $[ or: [ currentCharacter >= $^ ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X4 [
	self recordMatch: #(26 37).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(26).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X5 [
	self recordMatch: #(24 37).
	self step.
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X6 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $,
		ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit
		ifTrue: [ [ self step.
			currentCharacter == $,
				ifTrue: [ ^ self scan14 ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X7 [
	self recordMatch: #(37).
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X8 [
	self recordMatch: #(37).
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan11X9 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan12 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan13 [
	self step.
	currentCharacter == $c
		ifTrue: [ self step.
			(currentCharacter between: $A and: $Z)
				ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	^ self scan12
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan14 [
	[ self step.
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan2 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan3 [
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan4 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan5 [
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan6 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(28) ].
			^ self scan6 ].
	true ] whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan7 [
	self recordMatch: #(31).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan8 [
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scan9 [
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForToken [
	scope == #parser
		ifTrue:
			[ ^ self scanForTokenX1 ].
	scope == #scanner
		ifTrue: [ ^ self scan11 ].
	(#(#default #directives) includes: scope)
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan1 ].
			currentCharacter == $#
				ifTrue:
					[ ^ self scanForTokenX2 ].
			currentCharacter == $%
				ifTrue: [ ^ self recordAndReportMatch: #(32) ].
			currentCharacter == $'
				ifTrue: [ ^ self scan3 ].
			currentCharacter == $(
				ifTrue: [ ^ self recordAndReportMatch: #(1) ].
			currentCharacter == $)
				ifTrue: [ ^ self recordAndReportMatch: #(2) ].
			currentCharacter == $*
				ifTrue: [ ^ self recordAndReportMatch: #(3) ].
			currentCharacter == $+
				ifTrue: [ ^ self recordAndReportMatch: #(4) ].
			currentCharacter == $/
				ifTrue: [ ^ self scan5 ].
			currentCharacter == $:
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $;
				ifTrue: [ ^ self recordAndReportMatch: #(33) ].
			currentCharacter == $<
				ifTrue: [ ^ self scan9 ].
			currentCharacter == $?
				ifTrue: [ ^ self recordAndReportMatch: #(5) ].
			currentCharacter == ${
				ifTrue: [ ^ self recordAndReportMatch: #(29) ].
			currentCharacter == $|
				ifTrue: [ ^ self recordAndReportMatch: #(7) ].
			(currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ])
				ifTrue:
					[ ^ self scanForTokenX3 ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue:
					[ self scanForTokenX4 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter == $'
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self scanForTokenX1X6
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X1 [
	[ self recordMatch: #(28).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X2 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X3 [
	self recordMatch: #(29).
	self step.
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X4 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X5 [
	self step.
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX1X6 [
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scanForTokenX1X3 ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scanForTokenX1X5 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ self scanForTokenX1X4 ].
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX2 [
	[ self recordMatch: #(28).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX3 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
SmaCCDefinitionScanner >> scanForTokenX4 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
SmaCCDefinitionScanner >> semicolonId [
	^ 33
]

{ #category : #generated }
SmaCCDefinitionScanner >> symbolnameId [
	^ 26
]

{ #category : #generated }
SmaCCDefinitionScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace nil nil nil #comment #code)
]

{ #category : #generated }
SmaCCDefinitionScanner >> tokennameId [
	^ 25
]

{ #category : #generated }
SmaCCDefinitionScanner >> variablenameId [
	^ 30
]
