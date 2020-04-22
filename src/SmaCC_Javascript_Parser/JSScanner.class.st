Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(116 'as' #(51 #(#default))) #(116 'async' #(52 #(#default))) #(116 'await' #(53 #(#default))) #(116 'break' #(54 #(#default))) #(116 'case' #(55 #(#default))) #(116 'catch' #(56 #(#default))) #(116 'class' #(57 #(#default))) #(116 'const' #(58 #(#default))) #(116 'constructor' #(59 #(#default))) #(116 'continue' #(60 #(#default))) #(116 'debugger' #(61 #(#default))) #(116 'declare' #(62 #(#default))) #(116 'default' #(63 #(#default))) #(116 'delete' #(64 #(#default))) #(116 'do' #(65 #(#default))) #(116 'else' #(66 #(#default))) #(116 'enum' #(67 #(#default))) #(116 'export' #(68 #(#default))) #(116 'extends' #(69 #(#default))) #(116 'false' #(70 #(#default))) #(116 'finally' #(71 #(#default))) #(116 'for' #(72 #(#default))) #(116 'from' #(73 #(#default))) #(116 'function' #(74 #(#default))) #(116 'get' #(75 #(#default))) #(116 'if' #(76 #(#default))) #(116 'implements' #(80 #(#default))) #(116 'import' #(77 #(#default))) #(116 'in' #(78 #(#default))) #(116 'infer' #(79 #(#default))) #(116 'instanceof' #(81 #(#default))) #(116 'interface' #(82 #(#default))) #(116 'keyof' #(83 #(#default))) #(116 'let' #(84 #(#default))) #(116 'module' #(85 #(#default))) #(116 'namespace' #(86 #(#default))) #(116 'new' #(87 #(#default))) #(116 'null' #(88 #(#default))) #(116 'numeric' #(89 #(#default))) #(116 'of' #(90 #(#default))) #(116 'private' #(91 #(#default))) #(116 'protected' #(92 #(#default))) #(116 'public' #(93 #(#default))) #(116 'return' #(94 #(#default))) #(116 'set' #(95 #(#default))) #(116 'static' #(96 #(#default))) #(116 'string' #(97 #(#default))) #(116 'super' #(98 #(#default))) #(116 'switch' #(99 #(#default))) #(116 'target' #(100 #(#default))) #(116 'this' #(101 #(#default))) #(116 'throw' #(102 #(#default))) #(116 'true' #(103 #(#default))) #(116 'try' #(104 #(#default))) #(116 'type' #(105 #(#default))) #(116 'typeof' #(106 #(#default))) #(116 'var' #(107 #(#default))) #(116 'void' #(108 #(#default))) #(116 'while' #(109 #(#default))) #(116 'with' #(110 #(#default))) #(116 'yield' #(111 #(#default))) #(117 'as' #(51 #(#default))) #(117 'async' #(52 #(#default))) #(117 'await' #(53 #(#default))) #(117 'break' #(54 #(#default))) #(117 'case' #(55 #(#default))) #(117 'catch' #(56 #(#default))) #(117 'class' #(57 #(#default))) #(117 'const' #(58 #(#default))) #(117 'constructor' #(59 #(#default))) #(117 'continue' #(60 #(#default))) #(117 'debugger' #(61 #(#default))) #(117 'declare' #(62 #(#default))) #(117 'default' #(63 #(#default))) #(117 'delete' #(64 #(#default))) #(117 'do' #(65 #(#default))) #(117 'else' #(66 #(#default))) #(117 'enum' #(67 #(#default))) #(117 'export' #(68 #(#default))) #(117 'extends' #(69 #(#default))) #(117 'false' #(70 #(#default))) #(117 'finally' #(71 #(#default))) #(117 'for' #(72 #(#default))) #(117 'from' #(73 #(#default))) #(117 'function' #(74 #(#default))) #(117 'get' #(75 #(#default))) #(117 'if' #(76 #(#default))) #(117 'implements' #(80 #(#default))) #(117 'import' #(77 #(#default))) #(117 'in' #(78 #(#default))) #(117 'infer' #(79 #(#default))) #(117 'instanceof' #(81 #(#default))) #(117 'interface' #(82 #(#default))) #(117 'keyof' #(83 #(#default))) #(117 'let' #(84 #(#default))) #(117 'module' #(85 #(#default))) #(117 'namespace' #(86 #(#default))) #(117 'new' #(87 #(#default))) #(117 'null' #(88 #(#default))) #(117 'numeric' #(89 #(#default))) #(117 'of' #(90 #(#default))) #(117 'private' #(91 #(#default))) #(117 'protected' #(92 #(#default))) #(117 'public' #(93 #(#default))) #(117 'return' #(94 #(#default))) #(117 'set' #(95 #(#default))) #(117 'static' #(96 #(#default))) #(117 'string' #(97 #(#default))) #(117 'super' #(98 #(#default))) #(117 'switch' #(99 #(#default))) #(117 'target' #(100 #(#default))) #(117 'this' #(101 #(#default))) #(117 'throw' #(102 #(#default))) #(117 'true' #(103 #(#default))) #(117 'try' #(104 #(#default))) #(117 'type' #(105 #(#default))) #(117 'typeof' #(106 #(#default))) #(117 'var' #(107 #(#default))) #(117 'void' #(108 #(#default))) #(117 'while' #(109 #(#default))) #(117 'with' #(110 #(#default))) #(117 'yield' #(111 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 455
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 456
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
	^ 116
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 117
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 127
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
	^ 121
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
			[ ^ self scan1X14 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scan1X13 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X10 ].
	^ self scan1X18
]

{ #category : #generated }
JSScanner >> scan10 [
	[ self recordMatch: #(120).
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
		ifTrue: [ [ self recordMatch: #(120).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(120).
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
	self recordMatch: #(121).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan15 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	[ self recordMatch: #(121).
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
				ifTrue: [ ^ self recordAndReportMatch: #(115) ].
			^ self scan18 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan19 [
	[ self recordMatch: #(120).
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
	self recordMatch: #(36).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X11 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X12 [
	self recordMatch: #(25).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X13 [
	self recordMatch: #(39).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X14 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(49).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(50) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X15 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X16 [
	self recordMatch: #(44).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X17 [
	currentCharacter == $^
		ifTrue:
			[ ^ self scan1X15 ].
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
			[ ^ self scan1X9 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(114) ].
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
			[ ^ self scan1X8 ].
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
	[ self recordMatch: #(115).
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
	self recordMatch: #(120).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(120).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(120).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(120).
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
	[ self recordMatch: #(118).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter = (Character value: 160)
				or: [ currentCharacter =
						(Character value: 65279) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X7 [
	self recordMatch: #(45).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X8 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan1X9 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(112) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(123) ].
			^ self scan24 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(123) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(123) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan22 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(123) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(122 123) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan25 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(122 123) ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(124).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(122) ].
			^ self scan27 ].
	^ self scan24
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(122).
			self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan22 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(123) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(122) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan28 [
	[ self recordMatch: #(128).
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
	self recordMatch: #(119).
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
				ifTrue: [ ^ self recordAndReportMatch: #(126) ].
			currentCharacter == ${
				ifTrue: [ ^ self recordAndReportMatch: #(125) ].
			^ self scan30 ].
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(126) ].
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
	[ self recordMatch: #(116 117).
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
	self recordMatch: #(119).
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
	[ self recordMatch: #(118).
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
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(10 127) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	true
		ifTrue: [ [ self recordMatch: #(129).
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil #whitespace nil nil nil #patternToken)
]

{ #category : #generated }
JSScanner >> tsId [
	^ 454
]
