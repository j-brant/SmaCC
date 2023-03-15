Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(122 'abstract' #(62 #(#default))) #(122 'as' #(55 #(#default))) #(122 'async' #(56 #(#default))) #(122 'await' #(57 #(#default))) #(122 'break' #(58 #(#default))) #(122 'case' #(59 #(#default))) #(122 'catch' #(60 #(#default))) #(122 'class' #(61 #(#default))) #(122 'const' #(63 #(#default))) #(122 'constructor' #(64 #(#default))) #(122 'continue' #(65 #(#default))) #(122 'debugger' #(66 #(#default))) #(122 'declare' #(67 #(#default))) #(122 'default' #(68 #(#default))) #(122 'delete' #(69 #(#default))) #(122 'do' #(70 #(#default))) #(122 'else' #(71 #(#default))) #(122 'enum' #(72 #(#default))) #(122 'export' #(73 #(#default))) #(122 'extends' #(74 #(#default))) #(122 'false' #(75 #(#default))) #(122 'finally' #(76 #(#default))) #(122 'for' #(77 #(#default))) #(122 'from' #(78 #(#default))) #(122 'function' #(79 #(#default))) #(122 'get' #(80 #(#default))) #(122 'if' #(81 #(#default))) #(122 'implements' #(85 #(#default))) #(122 'import' #(82 #(#default))) #(122 'in' #(83 #(#default))) #(122 'infer' #(84 #(#default))) #(122 'instanceof' #(86 #(#default))) #(122 'interface' #(87 #(#default))) #(122 'keyof' #(88 #(#default))) #(122 'let' #(89 #(#default))) #(122 'meta' #(90 #(#default))) #(122 'module' #(91 #(#default))) #(122 'namespace' #(92 #(#default))) #(122 'new' #(93 #(#default))) #(122 'null' #(94 #(#default))) #(122 'numeric' #(95 #(#default))) #(122 'of' #(96 #(#default))) #(122 'private' #(97 #(#default))) #(122 'protected' #(98 #(#default))) #(122 'public' #(99 #(#default))) #(122 'return' #(100 #(#default))) #(122 'set' #(101 #(#default))) #(122 'static' #(102 #(#default))) #(122 'string' #(103 #(#default))) #(122 'super' #(104 #(#default))) #(122 'switch' #(105 #(#default))) #(122 'target' #(106 #(#default))) #(122 'this' #(107 #(#default))) #(122 'throw' #(108 #(#default))) #(122 'true' #(109 #(#default))) #(122 'try' #(110 #(#default))) #(122 'type' #(111 #(#default))) #(122 'typeof' #(112 #(#default))) #(122 'var' #(113 #(#default))) #(122 'void' #(114 #(#default))) #(122 'while' #(115 #(#default))) #(122 'with' #(116 #(#default))) #(122 'yield' #(117 #(#default))) #(123 'abstract' #(62 #(#default))) #(123 'as' #(55 #(#default))) #(123 'async' #(56 #(#default))) #(123 'await' #(57 #(#default))) #(123 'break' #(58 #(#default))) #(123 'case' #(59 #(#default))) #(123 'catch' #(60 #(#default))) #(123 'class' #(61 #(#default))) #(123 'const' #(63 #(#default))) #(123 'constructor' #(64 #(#default))) #(123 'continue' #(65 #(#default))) #(123 'debugger' #(66 #(#default))) #(123 'declare' #(67 #(#default))) #(123 'default' #(68 #(#default))) #(123 'delete' #(69 #(#default))) #(123 'do' #(70 #(#default))) #(123 'else' #(71 #(#default))) #(123 'enum' #(72 #(#default))) #(123 'export' #(73 #(#default))) #(123 'extends' #(74 #(#default))) #(123 'false' #(75 #(#default))) #(123 'finally' #(76 #(#default))) #(123 'for' #(77 #(#default))) #(123 'from' #(78 #(#default))) #(123 'function' #(79 #(#default))) #(123 'get' #(80 #(#default))) #(123 'if' #(81 #(#default))) #(123 'implements' #(85 #(#default))) #(123 'import' #(82 #(#default))) #(123 'in' #(83 #(#default))) #(123 'infer' #(84 #(#default))) #(123 'instanceof' #(86 #(#default))) #(123 'interface' #(87 #(#default))) #(123 'keyof' #(88 #(#default))) #(123 'let' #(89 #(#default))) #(123 'meta' #(90 #(#default))) #(123 'module' #(91 #(#default))) #(123 'namespace' #(92 #(#default))) #(123 'new' #(93 #(#default))) #(123 'null' #(94 #(#default))) #(123 'numeric' #(95 #(#default))) #(123 'of' #(96 #(#default))) #(123 'private' #(97 #(#default))) #(123 'protected' #(98 #(#default))) #(123 'public' #(99 #(#default))) #(123 'return' #(100 #(#default))) #(123 'set' #(101 #(#default))) #(123 'static' #(102 #(#default))) #(123 'string' #(103 #(#default))) #(123 'super' #(104 #(#default))) #(123 'switch' #(105 #(#default))) #(123 'target' #(106 #(#default))) #(123 'this' #(107 #(#default))) #(123 'throw' #(108 #(#default))) #(123 'true' #(109 #(#default))) #(123 'try' #(110 #(#default))) #(123 'type' #(111 #(#default))) #(123 'typeof' #(112 #(#default))) #(123 'var' #(113 #(#default))) #(123 'void' #(114 #(#default))) #(123 'while' #(115 #(#default))) #(123 'with' #(116 #(#default))) #(123 'yield' #(117 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 477
]

{ #category : #generated }
JSScanner >> eqGtId [
	^ 19
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 478
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
	^ 122
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 123
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 134
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
	^ 128
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
	self recordMatch: #(126).
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
	[ self recordMatch: #(127).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan15 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(127).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(127).
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
	self recordMatch: #(128).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18 [
	[ self recordMatch: #(128).
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
		ifTrue: [ [ self recordMatch: #(121).
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
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(118) ].
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
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(120) ].
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
	self recordMatch: #(127).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(127).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(127).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(127).
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
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(119) ].
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
	[ self recordMatch: #(125).
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
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(121) ].
			^ self scan22 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan23 [
	[ self recordMatch: #(127).
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
		ifTrue: [ self recordMatch: #(130).
			self step.
			currentCharacter == $?
				ifTrue: [ self step.
					((currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
						ifTrue: [ self step.
							((currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
								ifTrue: [ [ self step.
									currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(129) ].
									(currentCharacter between: $A and: $Z)
										or: [ currentCharacter between: $_ and: $z ] ] whileTrue.
									^ self scan29 ].
							(currentCharacter <= $^ or: [ currentCharacter >= ${ ])
								ifTrue: [ ^ self scan29 ] ] ].
			^ self reportLastMatch ].
	^ self scan25
]

{ #category : #generated }
JSScanner >> scan25 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self scan26 ].
	currentCharacter == $\ ifTrue: [ ^ self scan27 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(130) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(130) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(131) ].
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
	[ self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan3 [
	self recordMatch: #(126).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan30 [
	[ self recordMatch: #(135).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan31 ].
	currentCharacter isAlphaNumeric or: [ '$-_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan31 [
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
										ifTrue: [ ^ self scan30 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan32 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(133) ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(132) ].
			^ self scan32 ].
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
								ifTrue: [ ^ self scan33 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan33 ].
			^ self scan32 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(133) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan33 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan32 ] ].
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
	[ self recordMatch: #(124).
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
	[ self recordMatch: #(122 123).
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
			currentCharacter == $} ifTrue: [ ^ self scan32 ] ].
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
	[ self recordMatch: #(125).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1X2 [
	currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(134) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $\ ifTrue: [ ^ self scan31 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scanForTokenX1X1 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(11 134) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	true
		ifTrue: [ [ self recordMatch: #(136).
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil #whitespace nil nil nil #patternToken)
]

{ #category : #generated }
JSScanner >> tsId [
	^ 476
]
