Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(110 'as' #(50 #(#default))) #(110 'async' #(51 #(#default))) #(110 'await' #(52 #(#default))) #(110 'break' #(53 #(#default))) #(110 'case' #(54 #(#default))) #(110 'catch' #(55 #(#default))) #(110 'class' #(56 #(#default))) #(110 'const' #(57 #(#default))) #(110 'constructor' #(58 #(#default))) #(110 'continue' #(59 #(#default))) #(110 'debugger' #(60 #(#default))) #(110 'declare' #(61 #(#default))) #(110 'default' #(62 #(#default))) #(110 'delete' #(63 #(#default))) #(110 'do' #(64 #(#default))) #(110 'else' #(65 #(#default))) #(110 'enum' #(66 #(#default))) #(110 'export' #(67 #(#default))) #(110 'extends' #(68 #(#default))) #(110 'false' #(69 #(#default))) #(110 'finally' #(70 #(#default))) #(110 'for' #(71 #(#default))) #(110 'from' #(72 #(#default))) #(110 'function' #(73 #(#default))) #(110 'get' #(74 #(#default))) #(110 'if' #(75 #(#default))) #(110 'import' #(76 #(#default))) #(110 'in' #(77 #(#default))) #(110 'instanceof' #(78 #(#default))) #(110 'interface' #(79 #(#default))) #(110 'let' #(80 #(#default))) #(110 'module' #(81 #(#default))) #(110 'namespace' #(82 #(#default))) #(110 'new' #(83 #(#default))) #(110 'null' #(84 #(#default))) #(110 'of' #(85 #(#default))) #(110 'private' #(86 #(#default))) #(110 'protected' #(87 #(#default))) #(110 'public' #(88 #(#default))) #(110 'return' #(89 #(#default))) #(110 'set' #(90 #(#default))) #(110 'static' #(91 #(#default))) #(110 'super' #(92 #(#default))) #(110 'switch' #(93 #(#default))) #(110 'target' #(94 #(#default))) #(110 'this' #(95 #(#default))) #(110 'throw' #(96 #(#default))) #(110 'true' #(97 #(#default))) #(110 'try' #(98 #(#default))) #(110 'type' #(99 #(#default))) #(110 'typeof' #(100 #(#default))) #(110 'var' #(101 #(#default))) #(110 'void' #(102 #(#default))) #(110 'while' #(103 #(#default))) #(110 'with' #(104 #(#default))) #(110 'yield' #(105 #(#default))) #(111 'as' #(50 #(#default))) #(111 'async' #(51 #(#default))) #(111 'await' #(52 #(#default))) #(111 'break' #(53 #(#default))) #(111 'case' #(54 #(#default))) #(111 'catch' #(55 #(#default))) #(111 'class' #(56 #(#default))) #(111 'const' #(57 #(#default))) #(111 'constructor' #(58 #(#default))) #(111 'continue' #(59 #(#default))) #(111 'debugger' #(60 #(#default))) #(111 'declare' #(61 #(#default))) #(111 'default' #(62 #(#default))) #(111 'delete' #(63 #(#default))) #(111 'do' #(64 #(#default))) #(111 'else' #(65 #(#default))) #(111 'enum' #(66 #(#default))) #(111 'export' #(67 #(#default))) #(111 'extends' #(68 #(#default))) #(111 'false' #(69 #(#default))) #(111 'finally' #(70 #(#default))) #(111 'for' #(71 #(#default))) #(111 'from' #(72 #(#default))) #(111 'function' #(73 #(#default))) #(111 'get' #(74 #(#default))) #(111 'if' #(75 #(#default))) #(111 'import' #(76 #(#default))) #(111 'in' #(77 #(#default))) #(111 'instanceof' #(78 #(#default))) #(111 'interface' #(79 #(#default))) #(111 'let' #(80 #(#default))) #(111 'module' #(81 #(#default))) #(111 'namespace' #(82 #(#default))) #(111 'new' #(83 #(#default))) #(111 'null' #(84 #(#default))) #(111 'of' #(85 #(#default))) #(111 'private' #(86 #(#default))) #(111 'protected' #(87 #(#default))) #(111 'public' #(88 #(#default))) #(111 'return' #(89 #(#default))) #(111 'set' #(90 #(#default))) #(111 'static' #(91 #(#default))) #(111 'super' #(92 #(#default))) #(111 'switch' #(93 #(#default))) #(111 'target' #(94 #(#default))) #(111 'this' #(95 #(#default))) #(111 'throw' #(96 #(#default))) #(111 'true' #(97 #(#default))) #(111 'try' #(98 #(#default))) #(111 'type' #(99 #(#default))) #(111 'typeof' #(100 #(#default))) #(111 'var' #(101 #(#default))) #(111 'void' #(102 #(#default))) #(111 'while' #(103 #(#default))) #(111 'with' #(104 #(#default))) #(111 'yield' #(105 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 446
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 447
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
	^ 110
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 111
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 121
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
	^ 115
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
		ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X9 ].
	^ self scan1X18
]

{ #category : #generated }
JSScanner >> scan10 [
	[ self recordMatch: #(114).
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
		ifTrue: [ [ self recordMatch: #(114).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(114).
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
	self recordMatch: #(115).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan15 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	[ self recordMatch: #(115).
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
				ifTrue: [ ^ self recordAndReportMatch: #(109) ].
			^ self scan18 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan19 [
	[ self recordMatch: #(114).
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
		ifTrue: [ ^ self recordAndReportMatch: #(108) ].
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
	[ self recordMatch: #(109).
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
	self recordMatch: #(114).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(114).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(114).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(114).
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
	[ self recordMatch: #(112).
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
				ifTrue: [ ^ self recordAndReportMatch: #(106) ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(117) ].
			^ self scan24 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(117) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan22 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(118) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(116 117) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan25 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(116 117) ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(118).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			^ self scan27 ].
	^ self scan24
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(116).
			self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan22 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(117) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(116) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan28 [
	[ self recordMatch: #(122).
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
	self recordMatch: #(113).
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
				ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			currentCharacter == ${
				ifTrue: [ ^ self recordAndReportMatch: #(119) ].
			^ self scan30 ].
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(120) ].
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
	[ self recordMatch: #(110 111).
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
	self recordMatch: #(113).
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
	[ self recordMatch: #(112).
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
		ifTrue: [ ^ self recordAndReportMatch: #(121) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(10 121) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	true
		ifTrue: [ [ self recordMatch: #(123).
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil #whitespace nil nil nil #patternToken)
]

{ #category : #generated }
JSScanner >> tsId [
	^ 445
]
