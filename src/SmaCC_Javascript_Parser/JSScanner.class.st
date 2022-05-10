Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(118 'abstract' #(59 #(#default))) #(118 'as' #(52 #(#default))) #(118 'async' #(53 #(#default))) #(118 'await' #(54 #(#default))) #(118 'break' #(55 #(#default))) #(118 'case' #(56 #(#default))) #(118 'catch' #(57 #(#default))) #(118 'class' #(58 #(#default))) #(118 'const' #(60 #(#default))) #(118 'constructor' #(61 #(#default))) #(118 'continue' #(62 #(#default))) #(118 'debugger' #(63 #(#default))) #(118 'declare' #(64 #(#default))) #(118 'default' #(65 #(#default))) #(118 'delete' #(66 #(#default))) #(118 'do' #(67 #(#default))) #(118 'else' #(68 #(#default))) #(118 'enum' #(69 #(#default))) #(118 'export' #(70 #(#default))) #(118 'extends' #(71 #(#default))) #(118 'false' #(72 #(#default))) #(118 'finally' #(73 #(#default))) #(118 'for' #(74 #(#default))) #(118 'from' #(75 #(#default))) #(118 'function' #(76 #(#default))) #(118 'get' #(77 #(#default))) #(118 'if' #(78 #(#default))) #(118 'implements' #(82 #(#default))) #(118 'import' #(79 #(#default))) #(118 'in' #(80 #(#default))) #(118 'infer' #(81 #(#default))) #(118 'instanceof' #(83 #(#default))) #(118 'interface' #(84 #(#default))) #(118 'keyof' #(85 #(#default))) #(118 'let' #(86 #(#default))) #(118 'module' #(87 #(#default))) #(118 'namespace' #(88 #(#default))) #(118 'new' #(89 #(#default))) #(118 'null' #(90 #(#default))) #(118 'numeric' #(91 #(#default))) #(118 'of' #(92 #(#default))) #(118 'private' #(93 #(#default))) #(118 'protected' #(94 #(#default))) #(118 'public' #(95 #(#default))) #(118 'return' #(96 #(#default))) #(118 'set' #(97 #(#default))) #(118 'static' #(98 #(#default))) #(118 'string' #(99 #(#default))) #(118 'super' #(100 #(#default))) #(118 'switch' #(101 #(#default))) #(118 'target' #(102 #(#default))) #(118 'this' #(103 #(#default))) #(118 'throw' #(104 #(#default))) #(118 'true' #(105 #(#default))) #(118 'try' #(106 #(#default))) #(118 'type' #(107 #(#default))) #(118 'typeof' #(108 #(#default))) #(118 'var' #(109 #(#default))) #(118 'void' #(110 #(#default))) #(118 'while' #(111 #(#default))) #(118 'with' #(112 #(#default))) #(118 'yield' #(113 #(#default))) #(119 'abstract' #(59 #(#default))) #(119 'as' #(52 #(#default))) #(119 'async' #(53 #(#default))) #(119 'await' #(54 #(#default))) #(119 'break' #(55 #(#default))) #(119 'case' #(56 #(#default))) #(119 'catch' #(57 #(#default))) #(119 'class' #(58 #(#default))) #(119 'const' #(60 #(#default))) #(119 'constructor' #(61 #(#default))) #(119 'continue' #(62 #(#default))) #(119 'debugger' #(63 #(#default))) #(119 'declare' #(64 #(#default))) #(119 'default' #(65 #(#default))) #(119 'delete' #(66 #(#default))) #(119 'do' #(67 #(#default))) #(119 'else' #(68 #(#default))) #(119 'enum' #(69 #(#default))) #(119 'export' #(70 #(#default))) #(119 'extends' #(71 #(#default))) #(119 'false' #(72 #(#default))) #(119 'finally' #(73 #(#default))) #(119 'for' #(74 #(#default))) #(119 'from' #(75 #(#default))) #(119 'function' #(76 #(#default))) #(119 'get' #(77 #(#default))) #(119 'if' #(78 #(#default))) #(119 'implements' #(82 #(#default))) #(119 'import' #(79 #(#default))) #(119 'in' #(80 #(#default))) #(119 'infer' #(81 #(#default))) #(119 'instanceof' #(83 #(#default))) #(119 'interface' #(84 #(#default))) #(119 'keyof' #(85 #(#default))) #(119 'let' #(86 #(#default))) #(119 'module' #(87 #(#default))) #(119 'namespace' #(88 #(#default))) #(119 'new' #(89 #(#default))) #(119 'null' #(90 #(#default))) #(119 'numeric' #(91 #(#default))) #(119 'of' #(92 #(#default))) #(119 'private' #(93 #(#default))) #(119 'protected' #(94 #(#default))) #(119 'public' #(95 #(#default))) #(119 'return' #(96 #(#default))) #(119 'set' #(97 #(#default))) #(119 'static' #(98 #(#default))) #(119 'string' #(99 #(#default))) #(119 'super' #(100 #(#default))) #(119 'switch' #(101 #(#default))) #(119 'target' #(102 #(#default))) #(119 'this' #(103 #(#default))) #(119 'throw' #(104 #(#default))) #(119 'true' #(105 #(#default))) #(119 'try' #(106 #(#default))) #(119 'type' #(107 #(#default))) #(119 'typeof' #(108 #(#default))) #(119 'var' #(109 #(#default))) #(119 'void' #(110 #(#default))) #(119 'while' #(111 #(#default))) #(119 'with' #(112 #(#default))) #(119 'yield' #(113 #(#default))))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 460
]

{ #category : #generated }
JSScanner >> eqGtId [
	^ 19
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 461
]

{ #category : #generated }
JSScanner >> gtId [
	^ 14
]

{ #category : #testing }
JSScanner >> hasNewlineBetween: startIndex and: endIndex [
	| position |
	position := stream position.
	[ stream position: startIndex.
	[ stream position < endIndex and: [ stream atEnd not ] ]
		whileTrue: [ | char |
			char := stream next.
			(char == Character cr or: [ char == Character lf ])
				ifTrue: [ ^ true ] ] ]
		ensure: [ stream position: position ].
	^ false
]

{ #category : #generated }
JSScanner >> identifierId [
	^ 118
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 119
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 129
]

{ #category : #generated }
JSScanner >> ltId [
	^ 11
]

{ #category : #generated }
JSScanner >> questionDotId [
	^ 43
]

{ #category : #generated }
JSScanner >> questionId [
	^ 42
]

{ #category : #generated }
JSScanner >> regular_expressionId [
	^ 123
]

{ #category : #generated }
JSScanner >> rightBraceId [
	^ 5
]

{ #category : #generated }
JSScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $' ifTrue: [ ^ self scan8 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X9 ].
	^ self scan1X18
]

{ #category : #generated }
JSScanner >> scan10 [
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ self step.
			currentCharacter == $' ifTrue: [ ^ self scan9 ].
			currentCharacter == $\ ifTrue: [ ^ self scan10 ].
			(currentCharacter <= Character newPage or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan8 ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan11 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan11 ].
	^ self scan8
]

{ #category : #generated }
JSScanner >> scan11 [
	self step.
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan8 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan12 [
	[ self recordMatch: #(122).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan13 [
	self step.
	currentCharacter isDigit
		ifTrue:
			[ [ self recordMatch: #(122).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue:
			[ self step.
			currentCharacter isDigit
				ifTrue:
					[ [ self recordMatch: #(122).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	[ self step.
	currentCharacter == $/ ifTrue: [ ^ self scan15 ].
	currentCharacter == $[ ifTrue: [ ^ self scan18 ].
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan15 [
	self recordMatch: #(123).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan16 [
	[ self recordMatch: #(123).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan17 [
	self step.
	currentCharacter == $u
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan16 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18 [
	[ self step.
	currentCharacter == $\
		ifTrue:
			[ self step.
			(currentCharacter <= Character tab
				or:
					[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan18 ].
			^ self reportLastMatch ].
	currentCharacter == $] ifTrue: [ ^ self scan14 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan19 [
	self step.
	(currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X1 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan20 ].
	currentCharacter == $/
		ifTrue:
			[ [ self recordMatch: #(117).
			self step.
			currentCharacter <= Character tab
				or:
					[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue:
			[ self recordMatch: #(10).
			self step.
			currentCharacter == $/ ifTrue: [ ^ self scan15 ] ].
	currentCharacter == $[ ifTrue: [ ^ self scan18 ].
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	(currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X10 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X11 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X12 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X13 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X14 [
	self recordMatch: #(49).
	self step.
	currentCharacter == $=
		ifTrue:
			[ self recordMatch: #(50).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(51) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X15 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X16 [
	self recordMatch: #(45).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X17 [
	currentCharacter == $^ ifTrue: [ ^ self scan1X15 ].
	currentCharacter == $` ifTrue: [ ^ self scan22 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160) or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scan1X6 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X18 [
	currentCharacter == $/ ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(116) ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $? ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $\ ifTrue: [ ^ self scan7 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self scan1X17
]

{ #category : #generated }
JSScanner >> scan1X2 [
	self recordMatch: #(122).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	('Bb' includes: currentCharacter)
		ifTrue:
			[ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue:
					[ [ self recordMatch: #(122).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan13 ].
	('Oo' includes: currentCharacter)
		ifTrue:
			[ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue:
					[ [ self recordMatch: #(122).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ [ self recordMatch: #(122).
					self step.
					currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ]
						whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X3 [
	self recordMatch: #(14).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $>
		ifTrue:
			[ self recordMatch: #(15).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(16) ].
			currentCharacter == $>
				ifTrue:
					[ self recordMatch: #(18).
					self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(17) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X4 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $=
		ifTrue:
			[ self recordMatch: #(24).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			^ self reportLastMatch ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X5 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $<
		ifTrue:
			[ self recordMatch: #(12).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(13) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X6 [
	[ self recordMatch: #(120).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160) or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X7 [
	self recordMatch: #(46).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X8 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X9 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $.
		ifTrue:
			[ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(114) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan2 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan3 ].
	currentCharacter == $\ ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan20 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(117) ].
			^ self scan20 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan21 [
	[ self recordMatch: #(122).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan22 [
	self step.
	currentCharacter == $$ ifTrue: [ ^ self scan24 ].
	currentCharacter == $\ ifTrue: [ ^ self scan25 ].
	currentCharacter == $`
		ifTrue:
			[ self recordMatch: #(125).
			self step.
			currentCharacter == $?
				ifTrue:
					[ self step.
					((currentCharacter between: $A and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
						ifTrue:
							[ self step.
							((currentCharacter between: $A and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
								ifTrue:
									[ [ self step.
									currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(124) ].
									(currentCharacter between: $A and: $Z) or: [ currentCharacter between: $_ and: $z ] ] whileTrue.
									^ self scan27 ].
							(currentCharacter <= $^ or: [ currentCharacter >= ${ ]) ifTrue: [ ^ self scan27 ] ] ].
			^ self reportLastMatch ].
	^ self scan23
]

{ #category : #generated }
JSScanner >> scan23 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self scan24 ].
	currentCharacter == $\ ifTrue: [ ^ self scan25 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(125) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan24 [
	self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(125) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(126) ].
	^ self scan23
]

{ #category : #generated }
JSScanner >> scan25 [
	self step.
	currentCharacter == $u
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan26 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan26 ].
	^ self scan23
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan23 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan27 [
	[ self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan28 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan29 ].
	currentCharacter isAlphaNumeric or: [ '$-_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan29 [
	self step.
	currentCharacter == $u
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan28 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan3 [
	self recordMatch: #(121).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan30 [
	[ self step.
	currentCharacter == $$
		ifTrue:
			[ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(128) ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(127) ].
			^ self scan30 ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			currentCharacter == $u
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan31 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan31 ].
			^ self scan30 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(128) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan31 [
	self step.
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan30 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan4 [
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ self step.
			currentCharacter == $" ifTrue: [ ^ self scan3 ].
			currentCharacter == $\ ifTrue: [ ^ self scan4 ].
			(currentCharacter <= Character newPage or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan5 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan5 ].
	^ self scan2
]

{ #category : #generated }
JSScanner >> scan5 [
	self step.
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan2 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan6 [
	[ self recordMatch: #(118 119).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan7 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan7 [
	self step.
	currentCharacter == $u
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan6 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan8 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan9 ].
	currentCharacter == $\ ifTrue: [ ^ self scan10 ].
	currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan9 [
	self recordMatch: #(121).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForToken [
	scope == #jsxText ifTrue: [ ^ self scanForTokenX2 ].
	scope == #jsx ifTrue: [ ^ self scanForTokenX1 ].
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #template
		ifTrue:
			[ self step.
			currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
			currentCharacter == $` ifTrue: [ ^ self scan22 ].
			currentCharacter == $} ifTrue: [ ^ self scan30 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan8 ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self scanForTokenX1X2
]

{ #category : #generated }
JSScanner >> scanForTokenX1X1 [
	[ self recordMatch: #(120).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160) or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1X2 [
	currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $\ ifTrue: [ ^ self scan29 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160) or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scanForTokenX1X1 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ]) ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(11 129) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	true
		ifTrue:
			[ [ self recordMatch: #(131).
			self step.
			currentCharacter <= $;
				or:
					[ currentCharacter == $=
						or: [ (currentCharacter between: $? and: $z) or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX3 [
	self step.
	currentCharacter == $[ ifTrue: [ ^ self scan18 ].
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	(currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage)
				or:
					[ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.) or: [ currentCharacter >= $0 ] ] ] ]) ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> semicolonId [
	^ 8
]

{ #category : #generated }
JSScanner >> slashEqualId [
	^ 10
]

{ #category : #generated }
JSScanner >> slashId [
	^ 9
]

{ #category : #generated }
JSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil #whitespace nil nil nil #patternToken)
]

{ #category : #generated }
JSScanner >> tsId [
	^ 459
]
