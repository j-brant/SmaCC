Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(100 'as' #(50 #(#default))) #(100 'async' #(51 #(#default))) #(100 'await' #(52 #(#default))) #(100 'break' #(53 #(#default))) #(100 'case' #(54 #(#default))) #(100 'catch' #(55 #(#default))) #(100 'class' #(56 #(#default))) #(100 'const' #(57 #(#default))) #(100 'continue' #(58 #(#default))) #(100 'debugger' #(59 #(#default))) #(100 'default' #(60 #(#default))) #(100 'delete' #(61 #(#default))) #(100 'do' #(62 #(#default))) #(100 'else' #(63 #(#default))) #(100 'export' #(64 #(#default))) #(100 'extends' #(65 #(#default))) #(100 'false' #(66 #(#default))) #(100 'finally' #(67 #(#default))) #(100 'for' #(68 #(#default))) #(100 'from' #(69 #(#default))) #(100 'function' #(70 #(#default))) #(100 'get' #(71 #(#default))) #(100 'if' #(72 #(#default))) #(100 'import' #(73 #(#default))) #(100 'in' #(74 #(#default))) #(100 'instanceof' #(75 #(#default))) #(100 'let' #(76 #(#default))) #(100 'new' #(77 #(#default))) #(100 'null' #(78 #(#default))) #(100 'of' #(79 #(#default))) #(100 'return' #(80 #(#default))) #(100 'set' #(81 #(#default))) #(100 'static' #(82 #(#default))) #(100 'super' #(83 #(#default))) #(100 'switch' #(84 #(#default))) #(100 'target' #(85 #(#default))) #(100 'this' #(86 #(#default))) #(100 'throw' #(87 #(#default))) #(100 'true' #(88 #(#default))) #(100 'try' #(89 #(#default))) #(100 'typeof' #(90 #(#default))) #(100 'var' #(91 #(#default))) #(100 'void' #(92 #(#default))) #(100 'while' #(93 #(#default))) #(100 'with' #(94 #(#default))) #(100 'yield' #(95 #(#default))) #(101 'as' #(50 #(#default))) #(101 'async' #(51 #(#default))) #(101 'await' #(52 #(#default))) #(101 'break' #(53 #(#default))) #(101 'case' #(54 #(#default))) #(101 'catch' #(55 #(#default))) #(101 'class' #(56 #(#default))) #(101 'const' #(57 #(#default))) #(101 'continue' #(58 #(#default))) #(101 'debugger' #(59 #(#default))) #(101 'default' #(60 #(#default))) #(101 'delete' #(61 #(#default))) #(101 'do' #(62 #(#default))) #(101 'else' #(63 #(#default))) #(101 'export' #(64 #(#default))) #(101 'extends' #(65 #(#default))) #(101 'false' #(66 #(#default))) #(101 'finally' #(67 #(#default))) #(101 'for' #(68 #(#default))) #(101 'from' #(69 #(#default))) #(101 'function' #(70 #(#default))) #(101 'get' #(71 #(#default))) #(101 'if' #(72 #(#default))) #(101 'import' #(73 #(#default))) #(101 'in' #(74 #(#default))) #(101 'instanceof' #(75 #(#default))) #(101 'let' #(76 #(#default))) #(101 'new' #(77 #(#default))) #(101 'null' #(78 #(#default))) #(101 'of' #(79 #(#default))) #(101 'return' #(80 #(#default))) #(101 'set' #(81 #(#default))) #(101 'static' #(82 #(#default))) #(101 'super' #(83 #(#default))) #(101 'switch' #(84 #(#default))) #(101 'target' #(85 #(#default))) #(101 'this' #(86 #(#default))) #(101 'throw' #(87 #(#default))) #(101 'true' #(88 #(#default))) #(101 'try' #(89 #(#default))) #(101 'typeof' #(90 #(#default))) #(101 'var' #(91 #(#default))) #(101 'void' #(92 #(#default))) #(101 'while' #(93 #(#default))) #(101 'with' #(94 #(#default))) #(101 'yield' #(95 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 325
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 326
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
	^ 100
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 101
]

{ #category : #generated }
JSScanner >> jsxLTId [
	^ 111
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
	^ 105
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
		ifTrue: [ ^ self recordAndReportMatch: #(97) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X9 ].
	^ self scan1X18
]

{ #category : #generated }
JSScanner >> scan10 [
	[ self recordMatch: #(104).
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
		ifTrue: [ [ self recordMatch: #(104).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(104).
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
	self recordMatch: #(105).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan15 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	[ self recordMatch: #(105).
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
				ifTrue: [ ^ self recordAndReportMatch: #(99) ].
			^ self scan18 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan19 [
	[ self recordMatch: #(104).
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
		ifTrue: [ ^ self recordAndReportMatch: #(98) ].
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
	[ self recordMatch: #(99).
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
	self recordMatch: #(104).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(104).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(104).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(104).
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
	[ self recordMatch: #(102).
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
				ifTrue: [ ^ self recordAndReportMatch: #(96) ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(107) ].
			^ self scan24 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(107) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan22 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(108) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(106 107) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan25 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106 107) ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(108).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(106) ].
			^ self scan27 ].
	^ self scan24
]

{ #category : #generated }
JSScanner >> scan26 [
	self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(106).
			self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan22 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(107) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan28 [
	[ self recordMatch: #(112).
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
	self recordMatch: #(103).
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
				ifTrue: [ ^ self recordAndReportMatch: #(110) ].
			currentCharacter == ${
				ifTrue: [ ^ self recordAndReportMatch: #(109) ].
			^ self scan30 ].
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(110) ].
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
	[ self recordMatch: #(100 101).
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
	self recordMatch: #(103).
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
	[ self recordMatch: #(102).
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
		ifTrue: [ ^ self recordAndReportMatch: #(111) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(10 111) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	true
		ifTrue: [ [ self recordMatch: #(113).
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil #whitespace nil nil nil #patternToken)
]
