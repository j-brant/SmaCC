Class {
	#name : 'JSScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(127 'abstract' #(63 #(#default))) #(127 'as' #(56 #(#default))) #(127 'async' #(57 #(#default))) #(127 'await' #(58 #(#default))) #(127 'break' #(59 #(#default))) #(127 'case' #(60 #(#default))) #(127 'catch' #(61 #(#default))) #(127 'class' #(62 #(#default))) #(127 'const' #(64 #(#default))) #(127 'constructor' #(65 #(#default))) #(127 'continue' #(66 #(#default))) #(127 'debugger' #(67 #(#default))) #(127 'declare' #(68 #(#default))) #(127 'default' #(69 #(#default))) #(127 'delete' #(70 #(#default))) #(127 'do' #(71 #(#default))) #(127 'else' #(72 #(#default))) #(127 'enum' #(73 #(#default))) #(127 'export' #(74 #(#default))) #(127 'extends' #(75 #(#default))) #(127 'false' #(76 #(#default))) #(127 'finally' #(77 #(#default))) #(127 'for' #(78 #(#default))) #(127 'from' #(79 #(#default))) #(127 'function' #(80 #(#default))) #(127 'get' #(81 #(#default))) #(127 'global' #(82 #(#default))) #(127 'if' #(83 #(#default))) #(127 'implements' #(87 #(#default))) #(127 'import' #(84 #(#default))) #(127 'in' #(85 #(#default))) #(127 'infer' #(86 #(#default))) #(127 'instanceof' #(88 #(#default))) #(127 'interface' #(89 #(#default))) #(127 'keyof' #(90 #(#default))) #(127 'let' #(91 #(#default))) #(127 'meta' #(92 #(#default))) #(127 'module' #(93 #(#default))) #(127 'namespace' #(94 #(#default))) #(127 'new' #(95 #(#default))) #(127 'null' #(96 #(#default))) #(127 'numeric' #(97 #(#default))) #(127 'of' #(98 #(#default))) #(127 'override' #(99 #(#default))) #(127 'private' #(100 #(#default))) #(127 'protected' #(101 #(#default))) #(127 'public' #(102 #(#default))) #(127 'readonly' #(103 #(#default))) #(127 'require' #(104 #(#default))) #(127 'return' #(105 #(#default))) #(127 'set' #(106 #(#default))) #(127 'static' #(107 #(#default))) #(127 'string' #(108 #(#default))) #(127 'super' #(109 #(#default))) #(127 'switch' #(110 #(#default))) #(127 'target' #(111 #(#default))) #(127 'this' #(112 #(#default))) #(127 'throw' #(113 #(#default))) #(127 'true' #(114 #(#default))) #(127 'try' #(115 #(#default))) #(127 'type' #(116 #(#default))) #(127 'typeof' #(117 #(#default))) #(127 'var' #(118 #(#default))) #(127 'void' #(119 #(#default))) #(127 'while' #(120 #(#default))) #(127 'with' #(121 #(#default))) #(127 'yield' #(122 #(#default))) #(128 'abstract' #(63 #(#default))) #(128 'as' #(56 #(#default))) #(128 'async' #(57 #(#default))) #(128 'await' #(58 #(#default))) #(128 'break' #(59 #(#default))) #(128 'case' #(60 #(#default))) #(128 'catch' #(61 #(#default))) #(128 'class' #(62 #(#default))) #(128 'const' #(64 #(#default))) #(128 'constructor' #(65 #(#default))) #(128 'continue' #(66 #(#default))) #(128 'debugger' #(67 #(#default))) #(128 'declare' #(68 #(#default))) #(128 'default' #(69 #(#default))) #(128 'delete' #(70 #(#default))) #(128 'do' #(71 #(#default))) #(128 'else' #(72 #(#default))) #(128 'enum' #(73 #(#default))) #(128 'export' #(74 #(#default))) #(128 'extends' #(75 #(#default))) #(128 'false' #(76 #(#default))) #(128 'finally' #(77 #(#default))) #(128 'for' #(78 #(#default))) #(128 'from' #(79 #(#default))) #(128 'function' #(80 #(#default))) #(128 'get' #(81 #(#default))) #(128 'global' #(82 #(#default))) #(128 'if' #(83 #(#default))) #(128 'implements' #(87 #(#default))) #(128 'import' #(84 #(#default))) #(128 'in' #(85 #(#default))) #(128 'infer' #(86 #(#default))) #(128 'instanceof' #(88 #(#default))) #(128 'interface' #(89 #(#default))) #(128 'keyof' #(90 #(#default))) #(128 'let' #(91 #(#default))) #(128 'meta' #(92 #(#default))) #(128 'module' #(93 #(#default))) #(128 'namespace' #(94 #(#default))) #(128 'new' #(95 #(#default))) #(128 'null' #(96 #(#default))) #(128 'numeric' #(97 #(#default))) #(128 'of' #(98 #(#default))) #(128 'override' #(99 #(#default))) #(128 'private' #(100 #(#default))) #(128 'protected' #(101 #(#default))) #(128 'public' #(102 #(#default))) #(128 'readonly' #(103 #(#default))) #(128 'require' #(104 #(#default))) #(128 'return' #(105 #(#default))) #(128 'set' #(106 #(#default))) #(128 'static' #(107 #(#default))) #(128 'string' #(108 #(#default))) #(128 'super' #(109 #(#default))) #(128 'switch' #(110 #(#default))) #(128 'target' #(111 #(#default))) #(128 'this' #(112 #(#default))) #(128 'throw' #(113 #(#default))) #(128 'true' #(114 #(#default))) #(128 'try' #(115 #(#default))) #(128 'type' #(116 #(#default))) #(128 'typeof' #(117 #(#default))) #(128 'var' #(118 #(#default))) #(128 'void' #(119 #(#default))) #(128 'while' #(120 #(#default))) #(128 'with' #(121 #(#default))) #(128 'yield' #(122 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
JSScanner >> emptySymbolTokenId [
	^ 493
]

{ #category : 'generated' }
JSScanner >> eqGtId [
	^ 20
]

{ #category : 'generated' }
JSScanner >> errorTokenId [
	^ 494
]

{ #category : 'generated' }
JSScanner >> gtId [
	^ 15
]

{ #category : 'testing' }
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

{ #category : 'generated' }
JSScanner >> identifierId [
	^ 127
]

{ #category : 'generated' }
JSScanner >> identifierNameId [
	^ 128
]

{ #category : 'testing' }
JSScanner >> isNewlineBefore: anIndex [
	| position currentIndex char |
	anIndex ifNil: [ ^ false ].
	position := stream position.
	currentIndex := anIndex - 2.
	[ [ currentIndex > 0
		and: [ stream position: currentIndex.
			(char := stream peek) isSeparator ] ]
		whileTrue: [ (char == Character lf or: [ char == Character cr ]) ifTrue: [ ^ true ].
			currentIndex := currentIndex - 1 ] ] ensure: [ stream position: position ].
	^ false
]

{ #category : 'generated' }
JSScanner >> jsxLTId [
	^ 139
]

{ #category : 'generated' }
JSScanner >> ltId [
	^ 12
]

{ #category : 'generated' }
JSScanner >> mandatory_semicolonId [
	^ 9
]

{ #category : 'generated' }
JSScanner >> questionDotId [
	^ 45
]

{ #category : 'generated' }
JSScanner >> questionId [
	^ 44
]

{ #category : 'generated' }
JSScanner >> regular_expressionId [
	^ 133
]

{ #category : 'generated' }
JSScanner >> rightBraceId [
	^ 5
]

{ #category : 'generated' }
JSScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan1X15 ].
	^ self scan1X20
]

{ #category : 'generated' }
JSScanner >> scan10 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan11 ].
	currentCharacter == $\ ifTrue: [ ^ self scan12 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan11 [
	self recordMatch: #(131).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan14 [
	[ self recordMatch: #(132).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan15 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(132).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(132).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan17 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan18 [
	[ self recordMatch: #(133).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan19 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan1X1 [
	self recordMatch: #(132).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan14 ].
	currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(132).
					self step.
					currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(132) ].
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(132).
					self step.
					currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(132) ].
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(132).
					self step.
					currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(132) ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X10 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(123) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X11 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X12 [
	self recordMatch: #(36).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X13 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X14 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan7 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X15 [
	self recordMatch: #(53).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(54).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(55) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X16 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X17 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X18 [
	currentCharacter == $^ ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $` ifTrue: [ ^ self scan24 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scan1X9 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X19 [
	currentCharacter == $/ ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(125) ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(8 9) ].
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

{ #category : 'generated' }
JSScanner >> scan1X2 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan22 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(126).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(11).
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

{ #category : 'generated' }
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
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X10 ].
	^ self scan1X19
]

{ #category : 'generated' }
JSScanner >> scan1X3 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(16).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(17) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(19).
					self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X4 [
	self recordMatch: #(44).
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $?
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(47) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X5 [
	self recordMatch: #(49).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(50).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(51) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X6 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(25).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(26) ].
			^ self reportLastMatch ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X7 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(13).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X8 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(43) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X9 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan21 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan22 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(126) ].
			^ self scan22 ].
	true ] whileTrue
]

{ #category : 'generated' }
JSScanner >> scan23 [
	[ self recordMatch: #(132).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan14 ].
	currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan24 [
	self step.
	currentCharacter == $$ ifTrue: [ ^ self scan26 ].
	currentCharacter == $\ ifTrue: [ ^ self scan27 ].
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(135).
			self step.
			currentCharacter == $?
				ifTrue: [ self step.
					((currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(134) ].
							(currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $_ and: $z ] ] whileTrue.
							true
								ifTrue: [ [ self step.
									currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(134) ].
									true ] whileTrue ] ] ].
			^ self reportLastMatch ].
	^ self scan25
]

{ #category : 'generated' }
JSScanner >> scan25 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self scan26 ].
	currentCharacter == $\ ifTrue: [ ^ self scan27 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(135) ].
	true ] whileTrue
]

{ #category : 'generated' }
JSScanner >> scan26 [
	self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(135) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(136) ].
	^ self scan25
]

{ #category : 'generated' }
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

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan29 [
	[ self recordMatch: #(140).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan30 ].
	currentCharacter isAlphaNumeric or: [ '$-_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan3 [
	self recordMatch: #(131).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan31 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(138) ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(137) ].
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
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(138) ].
	true ] whileTrue
]

{ #category : 'generated' }
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

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan5 [
	self step.
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan2 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan6 [
	[ self recordMatch: #(129).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan7 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scan8 [
	[ self recordMatch: #(127 128).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan9 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #jsx ifTrue: [ ^ self scanForTokenX1 ].
	scope == #jsxText ifTrue: [ ^ self scanForTokenX2 ].
	scope == #template
		ifTrue: [ self step.
			currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
			currentCharacter == $` ifTrue: [ ^ self scan24 ].
			currentCharacter == $} ifTrue: [ ^ self scan31 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self scanForTokenX1X3
]

{ #category : 'generated' }
JSScanner >> scanForTokenX1X1 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan22 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(126).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX1X2 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX1X3 [
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX1X1 ].
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(139) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan30 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scanForTokenX1X2 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(12 139) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	true
		ifTrue: [ [ self recordMatch: #(141).
			self step.
			currentCharacter <= $;
				or: [ currentCharacter == $=
						or: [ (currentCharacter between: $? and: $z)
								or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
JSScanner >> semicolonId [
	^ 8
]

{ #category : 'generated' }
JSScanner >> slashEqualId [
	^ 11
]

{ #category : 'generated' }
JSScanner >> slashId [
	^ 10
]

{ #category : 'generated' }
JSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil #whitespace nil nil nil #patternToken)
]

{ #category : 'generated' }
JSScanner >> tsId [
	^ 492
]
