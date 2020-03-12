Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(113 'as' #(50 #(#default))) #(113 'async' #(51 #(#default))) #(113 'await' #(52 #(#default))) #(113 'break' #(53 #(#default))) #(113 'case' #(54 #(#default))) #(113 'catch' #(55 #(#default))) #(113 'class' #(56 #(#default))) #(113 'const' #(57 #(#default))) #(113 'constructor' #(58 #(#default))) #(113 'continue' #(59 #(#default))) #(113 'debugger' #(60 #(#default))) #(113 'declare' #(61 #(#default))) #(113 'default' #(62 #(#default))) #(113 'delete' #(63 #(#default))) #(113 'do' #(64 #(#default))) #(113 'else' #(65 #(#default))) #(113 'enum' #(66 #(#default))) #(113 'export' #(67 #(#default))) #(113 'extends' #(68 #(#default))) #(113 'false' #(69 #(#default))) #(113 'finally' #(70 #(#default))) #(113 'for' #(71 #(#default))) #(113 'from' #(72 #(#default))) #(113 'function' #(73 #(#default))) #(113 'get' #(74 #(#default))) #(113 'if' #(75 #(#default))) #(113 'implements' #(79 #(#default))) #(113 'import' #(76 #(#default))) #(113 'in' #(77 #(#default))) #(113 'infer' #(78 #(#default))) #(113 'instanceof' #(80 #(#default))) #(113 'interface' #(81 #(#default))) #(113 'keyof' #(82 #(#default))) #(113 'let' #(83 #(#default))) #(113 'module' #(84 #(#default))) #(113 'namespace' #(85 #(#default))) #(113 'new' #(86 #(#default))) #(113 'null' #(87 #(#default))) #(113 'of' #(88 #(#default))) #(113 'private' #(89 #(#default))) #(113 'protected' #(90 #(#default))) #(113 'public' #(91 #(#default))) #(113 'return' #(92 #(#default))) #(113 'set' #(93 #(#default))) #(113 'static' #(94 #(#default))) #(113 'super' #(95 #(#default))) #(113 'switch' #(96 #(#default))) #(113 'target' #(97 #(#default))) #(113 'this' #(98 #(#default))) #(113 'throw' #(99 #(#default))) #(113 'true' #(100 #(#default))) #(113 'try' #(101 #(#default))) #(113 'type' #(102 #(#default))) #(113 'typeof' #(103 #(#default))) #(113 'var' #(104 #(#default))) #(113 'void' #(105 #(#default))) #(113 'while' #(106 #(#default))) #(113 'with' #(107 #(#default))) #(113 'yield' #(108 #(#default))) #(114 'as' #(50 #(#default))) #(114 'async' #(51 #(#default))) #(114 'await' #(52 #(#default))) #(114 'break' #(53 #(#default))) #(114 'case' #(54 #(#default))) #(114 'catch' #(55 #(#default))) #(114 'class' #(56 #(#default))) #(114 'const' #(57 #(#default))) #(114 'constructor' #(58 #(#default))) #(114 'continue' #(59 #(#default))) #(114 'debugger' #(60 #(#default))) #(114 'declare' #(61 #(#default))) #(114 'default' #(62 #(#default))) #(114 'delete' #(63 #(#default))) #(114 'do' #(64 #(#default))) #(114 'else' #(65 #(#default))) #(114 'enum' #(66 #(#default))) #(114 'export' #(67 #(#default))) #(114 'extends' #(68 #(#default))) #(114 'false' #(69 #(#default))) #(114 'finally' #(70 #(#default))) #(114 'for' #(71 #(#default))) #(114 'from' #(72 #(#default))) #(114 'function' #(73 #(#default))) #(114 'get' #(74 #(#default))) #(114 'if' #(75 #(#default))) #(114 'implements' #(79 #(#default))) #(114 'import' #(76 #(#default))) #(114 'in' #(77 #(#default))) #(114 'infer' #(78 #(#default))) #(114 'instanceof' #(80 #(#default))) #(114 'interface' #(81 #(#default))) #(114 'keyof' #(82 #(#default))) #(114 'let' #(83 #(#default))) #(114 'module' #(84 #(#default))) #(114 'namespace' #(85 #(#default))) #(114 'new' #(86 #(#default))) #(114 'null' #(87 #(#default))) #(114 'of' #(88 #(#default))) #(114 'private' #(89 #(#default))) #(114 'protected' #(90 #(#default))) #(114 'public' #(91 #(#default))) #(114 'return' #(92 #(#default))) #(114 'set' #(93 #(#default))) #(114 'static' #(94 #(#default))) #(114 'super' #(95 #(#default))) #(114 'switch' #(96 #(#default))) #(114 'target' #(97 #(#default))) #(114 'this' #(98 #(#default))) #(114 'throw' #(99 #(#default))) #(114 'true' #(100 #(#default))) #(114 'try' #(101 #(#default))) #(114 'type' #(102 #(#default))) #(114 'typeof' #(103 #(#default))) #(114 'var' #(104 #(#default))) #(114 'void' #(105 #(#default))) #(114 'while' #(106 #(#default))) #(114 'with' #(107 #(#default))) #(114 'yield' #(108 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 451
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 452
]

{ #category : #generated }
JSScanner >> gtId [
	^ 13
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
	^ 113
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 114
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 124
]

{ #category : #generated }
JSScanner >> ltId [
	^ 10
]

{ #category : #generated }
JSScanner >> questionDotId [
	^ 42
]

{ #category : #generated }
JSScanner >> questionId [
	^ 41
]

{ #category : #generated }
JSScanner >> regular_expressionId [
	^ 118
]

{ #category : #generated }
JSScanner >> rightBraceId [
	^ 4
]

{ #category : #generated }
JSScanner >> scan1 [
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scan1X13 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X9 ].
	^ self scan1X18
]

{ #category : #generated }
JSScanner >> scan10 [
	[ self recordMatch: #(117).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan11 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(117).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(117).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan12 [
	[ self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan17 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $.)
						or: [ (currentCharacter between: $0 and: $Z)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan13 [
	self recordMatch: #(118).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan15 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	[ self recordMatch: #(118).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan15 ].
	currentCharacter isAlphaNumeric
		or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan15 [
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
										ifTrue: [ ^ self scan14 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan16 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan16 ].
			^ self reportLastMatch ].
	currentCharacter == $]
		ifTrue: [ ^ self scan12 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan17 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(112) ].
			^ self scan18 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan19 [
	[ self recordMatch: #(117).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X1 [
	self recordMatch: #(8).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan18 ].
	^ self scan1X1X3
]

{ #category : #generated }
JSScanner >> scan1X10 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X11 [
	self recordMatch: #(25).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X12 [
	self recordMatch: #(39).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X13 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(48).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(49) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X14 [
	self recordMatch: #(46).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X15 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X16 [
	self recordMatch: #(43).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X17 [
	currentCharacter == $^
		ifTrue:
			[ ^ self scan1X14 ].
	currentCharacter == $`
		ifTrue: [ ^ self scan20 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter =
						(Character value: 65279) ] ])
		ifTrue:
			[ ^ self scan1X6 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X18 [
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(111) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $?
		ifTrue:
			[ ^ self scan1X15 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self scan1X17
]

{ #category : #generated }
JSScanner >> scan1X1X1 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan17 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $.)
						or: [ (currentCharacter between: $0 and: $Z)
								or: [ currentCharacter >= $] ] ] ] ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X1X2 [
	[ self recordMatch: #(112).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X1X3 [
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X1X2 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X1X1 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan17 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.)
								or: [ (currentCharacter between: $0 and: $<)
										or: [ (currentCharacter between: $> and: $Z)
												or: [ currentCharacter >= $] ] ] ] ] ] ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X2 [
	self recordMatch: #(117).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(117).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(117).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(117).
					self step.
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X3 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(14).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(15) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(17).
					self step.
					currentCharacter == $=
						ifTrue: [ ^ self recordAndReportMatch: #(16) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X4 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			^ self reportLastMatch ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X5 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(11).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(12) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X6 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter =
						(Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X7 [
	self recordMatch: #(44).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X8 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(109) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X9 [
	self recordMatch: #(36).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan2 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan20 [
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan22 ].
	currentCharacter == $?
		ifTrue: [ self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan25 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan26 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			^ self scan24 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	^ self scan21
]

{ #category : #generated }
JSScanner >> scan21 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan22 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan22 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(121) ].
	^ self scan21
]

{ #category : #generated }
JSScanner >> scan23 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan24 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(119 120) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan25 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(119 120) ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(121).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(119) ].
			^ self scan27 ].
	^ self scan24
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(119).
			self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan22 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			^ self scan21 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan27 ].
	^ self scan24
]

{ #category : #generated }
JSScanner >> scan27 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan28 [
	[ self recordMatch: #(125).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan29 ].
	currentCharacter isAlphaNumeric
		or:
			[ '$-_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan29 [
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
										ifTrue: [ ^ self scan28 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan3 [
	self recordMatch: #(116).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan30 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(123) ].
			currentCharacter == ${
				ifTrue: [ ^ self recordAndReportMatch: #(122) ].
			^ self scan30 ].
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(123) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan4 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan3 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan4 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ currentCharacter >= $] ] ] ])
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	^ self scan2
]

{ #category : #generated }
JSScanner >> scan5 [
	[ self recordMatch: #(113 114).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan6 ].
	currentCharacter isAlphaNumeric
		or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan6 [
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
										ifTrue: [ ^ self scan5 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan7 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan9 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan8 [
	self recordMatch: #(116).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan9 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan8 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan9 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ])
				ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	^ self scan7
]

{ #category : #generated }
JSScanner >> scanForToken [
	scope == #jsxText
		ifTrue:
			[ ^ self scanForTokenX2 ].
	scope == #jsx
		ifTrue:
			[ ^ self scanForTokenX1 ].
	scope == #default
		ifTrue: [ ^ self scan1 ].
	scope == #template
		ifTrue: [ self step.
			currentCharacter == $/
				ifTrue:
					[ ^ self scanForTokenX3 ].
			currentCharacter == $`
				ifTrue: [ ^ self scan20 ].
			currentCharacter == $}
				ifTrue: [ ^ self scan30 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self scanForTokenX1X2
]

{ #category : #generated }
JSScanner >> scanForTokenX1X1 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter =
						(Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1X2 [
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $<
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan29 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	(currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter =
						(Character value: 65279) ] ])
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $<
		ifTrue: [ ^ self recordAndReportMatch: #(10 124) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	true
		ifTrue: [ [ self recordMatch: #(126).
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
	currentCharacter == $[
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan17 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.)
								or: [ (currentCharacter between: $0 and: $Z)
										or: [ currentCharacter >= $] ] ] ] ] ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> semicolonId [
	^ 7
]

{ #category : #generated }
JSScanner >> slashEqualId [
	^ 9
]

{ #category : #generated }
JSScanner >> slashId [
	^ 8
]

{ #category : #generated }
JSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil #whitespace nil nil nil #patternToken)
]

{ #category : #generated }
JSScanner >> tsId [
	^ 450
]
