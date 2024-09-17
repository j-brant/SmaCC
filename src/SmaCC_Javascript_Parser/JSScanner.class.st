Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(125 'abstract' #(62 #(#default))) #(125 'as' #(55 #(#default))) #(125 'async' #(56 #(#default))) #(125 'await' #(57 #(#default))) #(125 'break' #(58 #(#default))) #(125 'case' #(59 #(#default))) #(125 'catch' #(60 #(#default))) #(125 'class' #(61 #(#default))) #(125 'const' #(63 #(#default))) #(125 'constructor' #(64 #(#default))) #(125 'continue' #(65 #(#default))) #(125 'debugger' #(66 #(#default))) #(125 'declare' #(67 #(#default))) #(125 'default' #(68 #(#default))) #(125 'delete' #(69 #(#default))) #(125 'do' #(70 #(#default))) #(125 'else' #(71 #(#default))) #(125 'enum' #(72 #(#default))) #(125 'export' #(73 #(#default))) #(125 'extends' #(74 #(#default))) #(125 'false' #(75 #(#default))) #(125 'finally' #(76 #(#default))) #(125 'for' #(77 #(#default))) #(125 'from' #(78 #(#default))) #(125 'function' #(79 #(#default))) #(125 'get' #(80 #(#default))) #(125 'global' #(81 #(#default))) #(125 'if' #(82 #(#default))) #(125 'implements' #(86 #(#default))) #(125 'import' #(83 #(#default))) #(125 'in' #(84 #(#default))) #(125 'infer' #(85 #(#default))) #(125 'instanceof' #(87 #(#default))) #(125 'interface' #(88 #(#default))) #(125 'keyof' #(89 #(#default))) #(125 'let' #(90 #(#default))) #(125 'meta' #(91 #(#default))) #(125 'module' #(92 #(#default))) #(125 'namespace' #(93 #(#default))) #(125 'new' #(94 #(#default))) #(125 'null' #(95 #(#default))) #(125 'numeric' #(96 #(#default))) #(125 'of' #(97 #(#default))) #(125 'override' #(98 #(#default))) #(125 'private' #(99 #(#default))) #(125 'protected' #(100 #(#default))) #(125 'public' #(101 #(#default))) #(125 'readonly' #(102 #(#default))) #(125 'return' #(103 #(#default))) #(125 'set' #(104 #(#default))) #(125 'static' #(105 #(#default))) #(125 'string' #(106 #(#default))) #(125 'super' #(107 #(#default))) #(125 'switch' #(108 #(#default))) #(125 'target' #(109 #(#default))) #(125 'this' #(110 #(#default))) #(125 'throw' #(111 #(#default))) #(125 'true' #(112 #(#default))) #(125 'try' #(113 #(#default))) #(125 'type' #(114 #(#default))) #(125 'typeof' #(115 #(#default))) #(125 'var' #(116 #(#default))) #(125 'void' #(117 #(#default))) #(125 'while' #(118 #(#default))) #(125 'with' #(119 #(#default))) #(125 'yield' #(120 #(#default))) #(126 'abstract' #(62 #(#default))) #(126 'as' #(55 #(#default))) #(126 'async' #(56 #(#default))) #(126 'await' #(57 #(#default))) #(126 'break' #(58 #(#default))) #(126 'case' #(59 #(#default))) #(126 'catch' #(60 #(#default))) #(126 'class' #(61 #(#default))) #(126 'const' #(63 #(#default))) #(126 'constructor' #(64 #(#default))) #(126 'continue' #(65 #(#default))) #(126 'debugger' #(66 #(#default))) #(126 'declare' #(67 #(#default))) #(126 'default' #(68 #(#default))) #(126 'delete' #(69 #(#default))) #(126 'do' #(70 #(#default))) #(126 'else' #(71 #(#default))) #(126 'enum' #(72 #(#default))) #(126 'export' #(73 #(#default))) #(126 'extends' #(74 #(#default))) #(126 'false' #(75 #(#default))) #(126 'finally' #(76 #(#default))) #(126 'for' #(77 #(#default))) #(126 'from' #(78 #(#default))) #(126 'function' #(79 #(#default))) #(126 'get' #(80 #(#default))) #(126 'global' #(81 #(#default))) #(126 'if' #(82 #(#default))) #(126 'implements' #(86 #(#default))) #(126 'import' #(83 #(#default))) #(126 'in' #(84 #(#default))) #(126 'infer' #(85 #(#default))) #(126 'instanceof' #(87 #(#default))) #(126 'interface' #(88 #(#default))) #(126 'keyof' #(89 #(#default))) #(126 'let' #(90 #(#default))) #(126 'meta' #(91 #(#default))) #(126 'module' #(92 #(#default))) #(126 'namespace' #(93 #(#default))) #(126 'new' #(94 #(#default))) #(126 'null' #(95 #(#default))) #(126 'numeric' #(96 #(#default))) #(126 'of' #(97 #(#default))) #(126 'override' #(98 #(#default))) #(126 'private' #(99 #(#default))) #(126 'protected' #(100 #(#default))) #(126 'public' #(101 #(#default))) #(126 'readonly' #(102 #(#default))) #(126 'return' #(103 #(#default))) #(126 'set' #(104 #(#default))) #(126 'static' #(105 #(#default))) #(126 'string' #(106 #(#default))) #(126 'super' #(107 #(#default))) #(126 'switch' #(108 #(#default))) #(126 'target' #(109 #(#default))) #(126 'this' #(110 #(#default))) #(126 'throw' #(111 #(#default))) #(126 'true' #(112 #(#default))) #(126 'try' #(113 #(#default))) #(126 'type' #(114 #(#default))) #(126 'typeof' #(115 #(#default))) #(126 'var' #(116 #(#default))) #(126 'void' #(117 #(#default))) #(126 'while' #(118 #(#default))) #(126 'with' #(119 #(#default))) #(126 'yield' #(120 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 491
]

{ #category : #generated }
JSScanner >> eqGtId [
	^ 19
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 492
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
	^ 125
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 126
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 137
]

{ #category : #generated }
JSScanner >> ltId [
	^ 11
]

{ #category : #generated }
JSScanner >> questionDotId [
	^ 44
]

{ #category : #generated }
JSScanner >> questionId [
	^ 43
]

{ #category : #generated }
JSScanner >> regular_expressionId [
	^ 131
]

{ #category : #generated }
JSScanner >> rightBraceId [
	^ 5
]

{ #category : #generated }
JSScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan1X15 ].
	^ self scan1X20
]

{ #category : #generated }
JSScanner >> scan10 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan11 ].
	currentCharacter == $\ ifTrue: [ ^ self scan12 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan11 [
	self recordMatch: #(129).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan12 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $' ifTrue: [ ^ self scan11 ].
			currentCharacter == $\ ifTrue: [ ^ self scan12 ].
			(currentCharacter <= Character newPage
				or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan10 ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan13 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan13 ].
	^ self scan10
]

{ #category : #generated }
JSScanner >> scan13 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan10 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan15 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(130).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(130).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan16 [
	[ self step.
	currentCharacter == $/ ifTrue: [ ^ self scan17 ].
	currentCharacter == $[ ifTrue: [ ^ self scan20 ].
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan17 [
	self recordMatch: #(131).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18 [
	[ self recordMatch: #(131).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan19 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan18 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X1 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan22 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(124).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(10).
			self step.
			currentCharacter == $/ ifTrue: [ ^ self scan17 ] ].
	currentCharacter == $[ ifTrue: [ ^ self scan20 ].
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X10 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(121) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X11 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X12 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X13 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X14 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan7 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X15 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(54) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X16 [
	self recordMatch: #(51).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X17 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X18 [
	currentCharacter == $^ ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $` ifTrue: [ ^ self scan24 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scan1X9 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X19 [
	currentCharacter == $/ ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(123) ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $? ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $\ ifTrue: [ ^ self scan9 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self scan1X18
]

{ #category : #generated }
JSScanner >> scan1X2 [
	self recordMatch: #(130).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(130).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(130).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(130).
					self step.
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X20 [
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(122) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X10 ].
	^ self scan1X19
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
	self recordMatch: #(43).
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	currentCharacter == $?
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(46) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X5 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(49).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(50) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X6 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(24).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			^ self reportLastMatch ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X7 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(12).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(13) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X8 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X9 [
	[ self recordMatch: #(128).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
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
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan20 ].
			^ self reportLastMatch ].
	currentCharacter == $] ifTrue: [ ^ self scan16 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan21 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan22 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(124) ].
			^ self scan22 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan23 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan24 [
	self step.
	currentCharacter == $$ ifTrue: [ ^ self scan26 ].
	currentCharacter == $\ ifTrue: [ ^ self scan27 ].
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(133).
			self step.
			currentCharacter == $?
				ifTrue: [ self step.
					((currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(132) ].
							(currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $_ and: $z ] ] whileTrue.
							true
								ifTrue: [ [ self step.
									currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(132) ].
									true ] whileTrue ] ] ].
			^ self reportLastMatch ].
	^ self scan25
]

{ #category : #generated }
JSScanner >> scan25 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self scan26 ].
	currentCharacter == $\ ifTrue: [ ^ self scan27 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(133) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(133) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(134) ].
	^ self scan25
]

{ #category : #generated }
JSScanner >> scan27 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan28 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan28 ].
	^ self scan25
]

{ #category : #generated }
JSScanner >> scan28 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan29 [
	[ self recordMatch: #(138).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan30 ].
	currentCharacter isAlphaNumeric or: [ '$-_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan3 [
	self recordMatch: #(129).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan30 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan29 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan31 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(136) ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(135) ].
			^ self scan31 ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan32 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan32 ].
			^ self scan31 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(136) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan32 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan31 ] ].
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
	[ self recordMatch: #(127).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan7 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
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
	[ self recordMatch: #(125 126).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan9 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan9 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan8 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForToken [
	scope == #jsxText ifTrue: [ ^ self scanForTokenX2 ].
	scope == #jsx ifTrue: [ ^ self scanForTokenX1 ].
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #template
		ifTrue: [ self step.
			currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
			currentCharacter == $` ifTrue: [ ^ self scan24 ].
			currentCharacter == $} ifTrue: [ ^ self scan31 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self scanForTokenX1X2
]

{ #category : #generated }
JSScanner >> scanForTokenX1X1 [
	[ self recordMatch: #(128).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1X2 [
	currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(137) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $\ ifTrue: [ ^ self scan30 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scanForTokenX1X1 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(11 137) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	true
		ifTrue: [ [ self recordMatch: #(139).
			self step.
			currentCharacter <= $;
				or: [ currentCharacter == $=
						or: [ (currentCharacter between: $? and: $z)
								or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX3 [
	self step.
	currentCharacter == $[ ifTrue: [ ^ self scan20 ].
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.) or: [ currentCharacter >= $0 ] ] ] ])
		ifTrue: [ ^ self scan16 ].
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil #whitespace nil nil nil #patternToken)
]

{ #category : #generated }
JSScanner >> tsId [
	^ 490
]
