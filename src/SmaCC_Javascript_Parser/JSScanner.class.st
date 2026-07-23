Class {
	#name : 'JSScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(129 'abstract' #(56 #(#default))) #(129 'as' #(57 #(#default))) #(129 'assert' #(58 #(#default))) #(129 'async' #(59 #(#default))) #(129 'await' #(60 #(#default))) #(129 'break' #(61 #(#default))) #(129 'case' #(62 #(#default))) #(129 'catch' #(63 #(#default))) #(129 'class' #(64 #(#default))) #(129 'const' #(65 #(#default))) #(129 'constructor' #(66 #(#default))) #(129 'continue' #(67 #(#default))) #(129 'debugger' #(68 #(#default))) #(129 'declare' #(69 #(#default))) #(129 'default' #(70 #(#default))) #(129 'delete' #(71 #(#default))) #(129 'do' #(72 #(#default))) #(129 'else' #(73 #(#default))) #(129 'enum' #(74 #(#default))) #(129 'export' #(75 #(#default))) #(129 'extends' #(76 #(#default))) #(129 'false' #(77 #(#default))) #(129 'finally' #(78 #(#default))) #(129 'for' #(79 #(#default))) #(129 'from' #(80 #(#default))) #(129 'function' #(81 #(#default))) #(129 'get' #(82 #(#default))) #(129 'global' #(83 #(#default))) #(129 'if' #(84 #(#default))) #(129 'implements' #(88 #(#default))) #(129 'import' #(85 #(#default))) #(129 'in' #(86 #(#default))) #(129 'infer' #(87 #(#default))) #(129 'instanceof' #(89 #(#default))) #(129 'interface' #(90 #(#default))) #(129 'keyof' #(91 #(#default))) #(129 'let' #(92 #(#default))) #(129 'meta' #(93 #(#default))) #(129 'module' #(94 #(#default))) #(129 'namespace' #(95 #(#default))) #(129 'new' #(96 #(#default))) #(129 'null' #(97 #(#default))) #(129 'numeric' #(98 #(#default))) #(129 'of' #(99 #(#default))) #(129 'override' #(100 #(#default))) #(129 'private' #(101 #(#default))) #(129 'protected' #(102 #(#default))) #(129 'public' #(103 #(#default))) #(129 'readonly' #(104 #(#default))) #(129 'require' #(105 #(#default))) #(129 'return' #(106 #(#default))) #(129 'set' #(107 #(#default))) #(129 'static' #(108 #(#default))) #(129 'string' #(109 #(#default))) #(129 'super' #(110 #(#default))) #(129 'switch' #(111 #(#default))) #(129 'target' #(112 #(#default))) #(129 'this' #(113 #(#default))) #(129 'throw' #(114 #(#default))) #(129 'true' #(115 #(#default))) #(129 'try' #(116 #(#default))) #(129 'type' #(117 #(#default))) #(129 'typeof' #(118 #(#default))) #(129 'using' #(119 #(#default))) #(129 'var' #(120 #(#default))) #(129 'void' #(121 #(#default))) #(129 'while' #(122 #(#default))) #(129 'with' #(123 #(#default))) #(129 'yield' #(124 #(#default))) #(130 'abstract' #(56 #(#default))) #(130 'as' #(57 #(#default))) #(130 'assert' #(58 #(#default))) #(130 'async' #(59 #(#default))) #(130 'await' #(60 #(#default))) #(130 'break' #(61 #(#default))) #(130 'case' #(62 #(#default))) #(130 'catch' #(63 #(#default))) #(130 'class' #(64 #(#default))) #(130 'const' #(65 #(#default))) #(130 'constructor' #(66 #(#default))) #(130 'continue' #(67 #(#default))) #(130 'debugger' #(68 #(#default))) #(130 'declare' #(69 #(#default))) #(130 'default' #(70 #(#default))) #(130 'delete' #(71 #(#default))) #(130 'do' #(72 #(#default))) #(130 'else' #(73 #(#default))) #(130 'enum' #(74 #(#default))) #(130 'export' #(75 #(#default))) #(130 'extends' #(76 #(#default))) #(130 'false' #(77 #(#default))) #(130 'finally' #(78 #(#default))) #(130 'for' #(79 #(#default))) #(130 'from' #(80 #(#default))) #(130 'function' #(81 #(#default))) #(130 'get' #(82 #(#default))) #(130 'global' #(83 #(#default))) #(130 'if' #(84 #(#default))) #(130 'implements' #(88 #(#default))) #(130 'import' #(85 #(#default))) #(130 'in' #(86 #(#default))) #(130 'infer' #(87 #(#default))) #(130 'instanceof' #(89 #(#default))) #(130 'interface' #(90 #(#default))) #(130 'keyof' #(91 #(#default))) #(130 'let' #(92 #(#default))) #(130 'meta' #(93 #(#default))) #(130 'module' #(94 #(#default))) #(130 'namespace' #(95 #(#default))) #(130 'new' #(96 #(#default))) #(130 'null' #(97 #(#default))) #(130 'numeric' #(98 #(#default))) #(130 'of' #(99 #(#default))) #(130 'override' #(100 #(#default))) #(130 'private' #(101 #(#default))) #(130 'protected' #(102 #(#default))) #(130 'public' #(103 #(#default))) #(130 'readonly' #(104 #(#default))) #(130 'require' #(105 #(#default))) #(130 'return' #(106 #(#default))) #(130 'set' #(107 #(#default))) #(130 'static' #(108 #(#default))) #(130 'string' #(109 #(#default))) #(130 'super' #(110 #(#default))) #(130 'switch' #(111 #(#default))) #(130 'target' #(112 #(#default))) #(130 'this' #(113 #(#default))) #(130 'throw' #(114 #(#default))) #(130 'true' #(115 #(#default))) #(130 'try' #(116 #(#default))) #(130 'type' #(117 #(#default))) #(130 'typeof' #(118 #(#default))) #(130 'using' #(119 #(#default))) #(130 'var' #(120 #(#default))) #(130 'void' #(121 #(#default))) #(130 'while' #(122 #(#default))) #(130 'with' #(123 #(#default))) #(130 'yield' #(124 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
JSScanner >> emptySymbolTokenId [
	^ 501
]

{ #category : 'generated' }
JSScanner >> eqGtId [
	^ 20
]

{ #category : 'generated' }
JSScanner >> errorTokenId [
	^ 502
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
	^ 129
]

{ #category : 'generated' }
JSScanner >> identifierNameId [
	^ 130
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
	^ 141
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
	^ 135
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
	self recordMatch: #(133).
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
			currentCharacter == ${
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $} ifTrue: [ ^ self scan10 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $} ifTrue: [ ^ self scan10 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											currentCharacter == $} ifTrue: [ ^ self scan10 ].
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													currentCharacter == $} ifTrue: [ ^ self scan10 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step ].
															currentCharacter == $} ifTrue: [ ^ self scan10 ] ] ] ] ] ].
					^ self reportLastMatch ].
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
	[ self recordMatch: #(134).
	self step.
	currentCharacter == $_
		ifTrue: [ self step.
			currentCharacter isDigit ifTrue: [ ^ self scan14 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan15 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan16 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan17 [
	[ self recordMatch: #(134).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan18 [
	[ self step.
	currentCharacter == $/ ifTrue: [ ^ self scan19 ].
	currentCharacter == $[ ifTrue: [ ^ self scan22 ].
	currentCharacter == $\ ifTrue: [ ^ self scan23 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan19 [
	self recordMatch: #(135).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X1 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan24 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(128).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(11).
			self step.
			currentCharacter == $/ ifTrue: [ ^ self scan19 ] ].
	currentCharacter == $[ ifTrue: [ ^ self scan22 ].
	currentCharacter == $\ ifTrue: [ ^ self scan23 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan1X10 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(125) ].
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
	currentCharacter == $` ifTrue: [ ^ self scan31 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
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
	currentCharacter == $/ ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(127) ].
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
	self recordMatch: #(134).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan25 ].
	currentCharacter == $_ ifTrue: [ ^ self scan27 ].
	currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(134) ].
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan28 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan29 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
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
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(126) ].
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
	[ self recordMatch: #(132).
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
	[ self recordMatch: #(135).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan21 [
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
										ifTrue: [ ^ self scan20 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan22 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	currentCharacter == $] ifTrue: [ ^ self scan18 ].
	true ] whileTrue
]

{ #category : 'generated' }
JSScanner >> scan23 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan24 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(128) ].
			^ self scan24 ].
	true ] whileTrue
]

{ #category : 'generated' }
JSScanner >> scan25 [
	self recordMatch: #(134).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan14 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan26 [
	[ self recordMatch: #(134).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan25 ].
	currentCharacter == $_ ifTrue: [ ^ self scan27 ].
	currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(134) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan27 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan28 [
	self step.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(134).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan28 ].
			currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(134) ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan29 [
	self step.
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(134).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan29 ].
			currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(134) ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan3 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan30 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(134).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan30 ].
			currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(134) ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan31 [
	self step.
	currentCharacter == $$ ifTrue: [ ^ self scan33 ].
	currentCharacter == $\ ifTrue: [ ^ self scan34 ].
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(137).
			self step.
			currentCharacter == $?
				ifTrue: [ self step.
					((currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(136) ].
							(currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $_ and: $z ] ] whileTrue.
							true
								ifTrue: [ [ self step.
									currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(136) ].
									true ] whileTrue ] ] ].
			^ self reportLastMatch ].
	^ self scan32
]

{ #category : 'generated' }
JSScanner >> scan32 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self scan33 ].
	currentCharacter == $\ ifTrue: [ ^ self scan34 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(137) ].
	true ] whileTrue
]

{ #category : 'generated' }
JSScanner >> scan33 [
	self step.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(137) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(138) ].
	^ self scan32
]

{ #category : 'generated' }
JSScanner >> scan34 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			currentCharacter == ${
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $} ifTrue: [ ^ self scan32 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $} ifTrue: [ ^ self scan32 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											currentCharacter == $} ifTrue: [ ^ self scan32 ].
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													currentCharacter == $} ifTrue: [ ^ self scan32 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step ].
															currentCharacter == $} ifTrue: [ ^ self scan32 ] ] ] ] ] ].
					^ self reportLastMatch ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan35 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan35 ].
	^ self scan32
]

{ #category : 'generated' }
JSScanner >> scan35 [
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

{ #category : 'generated' }
JSScanner >> scan36 [
	[ self recordMatch: #(142).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan37 ].
	currentCharacter isAlphaNumeric or: [ '$-_' includes: currentCharacter ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan37 [
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
										ifTrue: [ ^ self scan36 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan38 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(140) ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(139) ].
			^ self scan38 ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $} ifTrue: [ ^ self scan38 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											currentCharacter == $} ifTrue: [ ^ self scan38 ].
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													currentCharacter == $} ifTrue: [ ^ self scan38 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan38 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan38 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan39 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan39 ].
			^ self scan38 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(140) ].
	true ] whileTrue
]

{ #category : 'generated' }
JSScanner >> scan39 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan38 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scan4 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan3 ].
			currentCharacter == $\ ifTrue: [ ^ self scan4 ].
			(currentCharacter <= Character newPage
				or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ self step.
			currentCharacter == ${
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $} ifTrue: [ ^ self scan2 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $} ifTrue: [ ^ self scan2 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											currentCharacter == $} ifTrue: [ ^ self scan2 ].
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													currentCharacter == $} ifTrue: [ ^ self scan2 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step ].
															currentCharacter == $} ifTrue: [ ^ self scan2 ] ] ] ] ] ].
					^ self reportLastMatch ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan5 ] ].
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
	[ self recordMatch: #(131).
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
	[ self recordMatch: #(129 130).
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
			currentCharacter == $` ifTrue: [ ^ self scan31 ].
			currentCharacter == $} ifTrue: [ ^ self scan38 ] ].
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
	currentCharacter == $* ifTrue: [ ^ self scan24 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(128).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX1X2 [
	[ self recordMatch: #(132).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX1X3 [
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX1X1 ].
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(141) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan37 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter = (Character value: 65279) ] ])
		ifTrue: [ ^ self scanForTokenX1X2 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JSScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(12 141) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	true
		ifTrue: [ [ self recordMatch: #(143).
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
	currentCharacter == $[ ifTrue: [ ^ self scan22 ].
	currentCharacter == $\ ifTrue: [ ^ self scan23 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.) or: [ currentCharacter >= $0 ] ] ] ])
		ifTrue: [ ^ self scan18 ].
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil #whitespace nil nil nil #patternToken)
]

{ #category : 'generated' }
JSScanner >> tsId [
	^ 500
]
