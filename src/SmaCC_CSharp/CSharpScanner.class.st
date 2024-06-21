Class {
	#name : #CSharpScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'preprocessorDirectives'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #'generated-initialization' }
CSharpScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(158 'abstract' #(41 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'add' #(42 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'alias' #(43 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'as' #(44 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'ascending' #(45 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'async' #(46 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'await' #(47 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'base' #(48 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'bool' #(49 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'break' #(50 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'by' #(51 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'byte' #(52 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'case' #(53 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'catch' #(54 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'char' #(55 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'checked' #(56 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'class' #(57 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'const' #(58 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'continue' #(59 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'decimal' #(60 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'default' #(61 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'delegate' #(62 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'descending' #(63 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'do' #(64 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'double' #(65 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'dynamic' #(66 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'else' #(67 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'enum' #(68 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'equals' #(69 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'event' #(70 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'explicit' #(71 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'extern' #(72 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'false' #(73 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'field' #(74 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'finally' #(75 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'fixed' #(76 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'float' #(77 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'for' #(78 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'foreach' #(79 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'from' #(80 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'get' #(81 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'goto' #(82 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'group' #(83 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'if' #(84 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'implicit' #(85 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'in' #(86 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'int' #(87 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'interface' #(88 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'internal' #(89 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'into' #(90 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'is' #(91 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'join' #(92 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'let' #(93 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'lock' #(94 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'long' #(95 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'method' #(96 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'nameof' #(97 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'namespace' #(98 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'new' #(99 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'null' #(171 #(#default))) #(158 'object' #(100 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'on' #(101 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'operator' #(102 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'orderby' #(103 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'out' #(104 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'override' #(105 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'param' #(106 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'params' #(107 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'partial' #(108 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'private' #(109 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'property' #(110 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'protected' #(111 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'public' #(112 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'readonly' #(113 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'ref' #(114 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'remove' #(115 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'return' #(116 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'sbyte' #(117 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'sealed' #(118 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'select' #(119 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'set' #(120 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'short' #(121 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'sizeof' #(122 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'stackalloc' #(123 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'static' #(124 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'string' #(125 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'struct' #(126 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'switch' #(127 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'this' #(128 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'throw' #(129 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'true' #(130 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'try' #(131 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'type' #(132 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'typeof' #(133 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'uint' #(134 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'ulong' #(135 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'unchecked' #(136 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'unmanaged' #(137 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'unsafe' #(138 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'ushort' #(139 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'using' #(140 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'var' #(141 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'virtual' #(142 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'void' #(143 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'volatile' #(144 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'when' #(145 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'where' #(146 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'while' #(147 #(#default #interpolatedString #interpolatedVerbatimString))) #(158 'yield' #(148 #(#default #interpolatedString #interpolatedVerbatimString))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
CSharpScanner >> IdentifierId [
	^ 158
]

{ #category : #generated }
CSharpScanner >> emptySymbolTokenId [
	^ 690
]

{ #category : #generated }
CSharpScanner >> errorTokenId [
	^ 691
]

{ #category : #generated }
CSharpScanner >> gtId [
	^ 154
]

{ #category : #generated }
CSharpScanner >> gtgtId [
	^ 155
]

{ #category : #'initialize-release' }
CSharpScanner >> initialize [
	super initialize.
	preprocessorDirectives := Set new
]

{ #category : #scanning }
CSharpScanner >> preprocessorDirective [
	preprocessorDirectives add: (Array with: start + 1 with: matchEnd).
	^ self whitespace
]

{ #category : #accessing }
CSharpScanner >> preprocessorDirectives [
	^ preprocessorDirectives
]

{ #category : #generated }
CSharpScanner >> rightBraceId [
	^ 156
]

{ #category : #generated }
CSharpScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan2 ].
	currentCharacter == $" ifTrue: [ ^ self scan3 ].
	^ self scan1X12
]

{ #category : #generated }
CSharpScanner >> scan10 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan11 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan12 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(161) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan13 [
	self step.
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
								ifTrue: [ ^ self scan12 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan14 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan15 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan16 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan17 [
	[ self recordMatch: #(160).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan17 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter == $M
				or: [ (currentCharacter between: $d and: $f) or: [ currentCharacter == $m ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(160) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan18 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan19 [
	[ self recordMatch: #(160).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan19 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('DFMdfm' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(160) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X1 [
	self recordMatch: #(159).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan21 ].
	^ self scan1X1X1
]

{ #category : #generated }
CSharpScanner >> scan1X10 [
	currentCharacter == $^ ifTrue: [ ^ self scan38 ].
	currentCharacter == $` ifTrue: [ ^ self scan39 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(149) ].
	currentCharacter == $| ifTrue: [ ^ self scan40 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(156) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(153) ].
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ ^ self scan1X6 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X11 [
	currentCharacter == $/ ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan28 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $< ifTrue: [ ^ self scan29 ].
	currentCharacter == $= ifTrue: [ ^ self scan30 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $? ifTrue: [ ^ self scan31 ].
	currentCharacter == $@ ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	^ self scan1X10
]

{ #category : #generated }
CSharpScanner >> scan1X12 [
	currentCharacter == $# ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $$ ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $% ifTrue: [ ^ self scan10 ].
	currentCharacter == $& ifTrue: [ ^ self scan11 ].
	currentCharacter == $' ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scan14 ].
	currentCharacter == $+ ifTrue: [ ^ self scan15 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scan16 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X9 ].
	^ self scan1X11
]

{ #category : #generated }
CSharpScanner >> scan1X1X1 [
	currentCharacter == $_ ifTrue: [ ^ self scan25 ].
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan27 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter == $M
				or: [ (currentCharacter between: $d and: $f) or: [ currentCharacter == $m ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(160) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X2 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan1X2X1 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: $&)
				or: [ currentCharacter >= $( ] ]) ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X2X1 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan13 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan13 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(161) ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(161) ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(161) ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan12 ] ] ] ].
			^ self reportLastMatch ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ ('fnr' includes: currentCharacter)
						or: [ currentCharacter between: $t and: $v ] ] ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X3 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan20 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(157).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X4 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan32 ].
	currentCharacter == $$ ifTrue: [ ^ self scan33 ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X5 [
	[ self recordMatch: #(173).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X6 [
	[ self recordMatch: #(172).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter = (Character value: 160) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X7 [
	self recordMatch: #(154).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(155).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X8 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan6 ].
	currentCharacter == $@
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan9 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X9 [
	self recordMatch: #(20).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan2 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan20 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(157) ].
			^ self scan20 ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan21 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan22 [
	[ self recordMatch: #(159).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan21 ].
	currentCharacter == $_ ifTrue: [ ^ self scan25 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter == $M
				or: [ (currentCharacter between: $d and: $f) or: [ currentCharacter == $m ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(160) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan23 [
	self recordMatch: #(159).
	self step.
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(159) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan24 [
	self recordMatch: #(159).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(159) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan25 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan26 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(159).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan26 ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			('Ll' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan24 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan27 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(159).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan27 ].
			('Ll' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan28 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan29 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan3 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(170) ].
	currentCharacter == $\ ifTrue: [ ^ self scan3X1 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: (Character value: 132))
						or: [ currentCharacter >= (Character value: 134) ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan30 [
	self recordMatch: #(30).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan31 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan32 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(170).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan32 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan33 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan34 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan33 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(167).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan34 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan35 [
	[ self recordMatch: #(158).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan36 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan37 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan37 [
	self step.
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
								ifTrue: [ ^ self scan35 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan38 [
	self recordMatch: #(39).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan39 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(174).
			self step.
			currentCharacter == $` ifTrue: [ ^ self scan39 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan3X1 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan4 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan4 ].
	currentCharacter == $x ifTrue: [ ^ self scan5 ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ ('fnr' includes: currentCharacter)
						or: [ currentCharacter between: $t and: $v ] ] ]) ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan4 [
	self step.
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
								or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan5 ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan40 [
	self recordMatch: #(150).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(151) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(152) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan41 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan42 [
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $>
		ifTrue: [ self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan43 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan44 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(164) ].
	currentCharacter == $\ ifTrue: [ ^ self scan44X1 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(165).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan44 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab or: [ currentCharacter >= Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan44X1 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan45 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan45 ].
	currentCharacter == $x ifTrue: [ ^ self scan46 ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ ('fnr' includes: currentCharacter)
						or: [ currentCharacter between: $t and: $v ] ] ])
		ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan45 [
	self step.
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
						ifTrue: [ ^ self scan46 ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan46 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan47 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(168).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan47 ].
			^ self reportLastMatch ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(169).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan47 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan5 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan6 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(162) ].
	currentCharacter == $\ ifTrue: [ ^ self scan6X1 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(163).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab or: [ currentCharacter >= Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan6X1 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan7 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan7 ].
	currentCharacter == $x ifTrue: [ ^ self scan8 ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ ('fnr' includes: currentCharacter)
						or: [ currentCharacter between: $t and: $v ] ] ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan7 [
	self step.
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
								or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan8 ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan8 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan9 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(166).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(167).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scanForToken [
	scope == #interpolatedString ifTrue: [ ^ self scanForTokenX2 ].
	scope == #interpolatedVerbatimString ifTrue: [ ^ self scanForTokenX1 ].
	scope == #default ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan2 ].
	currentCharacter == $% ifTrue: [ ^ self scan10 ].
	currentCharacter == $& ifTrue: [ ^ self scan11 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self scanForTokenX1X2
]

{ #category : #generated }
CSharpScanner >> scanForTokenX1X1 [
	currentCharacter == $@ ifTrue: [ ^ self scan43 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $^ ifTrue: [ ^ self scan38 ].
	currentCharacter == $` ifTrue: [ ^ self scan39 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(149) ].
	currentCharacter == $| ifTrue: [ ^ self scan40 ].
	currentCharacter == $} ifTrue: [ ^ self scan47 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(153) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scanForTokenX1X2 [
	currentCharacter == $* ifTrue: [ ^ self scan14 ].
	currentCharacter == $+ ifTrue: [ ^ self scan15 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scan16 ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $/ ifTrue: [ ^ self scan41 ].
	currentCharacter == $: ifTrue: [ ^ self scan28 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $< ifTrue: [ ^ self scan29 ].
	currentCharacter == $= ifTrue: [ ^ self scan30 ].
	currentCharacter == $> ifTrue: [ ^ self scan42 ].
	currentCharacter == $? ifTrue: [ ^ self scan31 ].
	^ self scanForTokenX1X1
]

{ #category : #generated }
CSharpScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan2 ].
	currentCharacter == $% ifTrue: [ ^ self scan10 ].
	currentCharacter == $& ifTrue: [ ^ self scan11 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self scanForTokenX2X2
]

{ #category : #generated }
CSharpScanner >> scanForTokenX2X1 [
	currentCharacter == $@ ifTrue: [ ^ self scan43 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $^ ifTrue: [ ^ self scan38 ].
	currentCharacter == $` ifTrue: [ ^ self scan39 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(149) ].
	currentCharacter == $| ifTrue: [ ^ self scan40 ].
	currentCharacter == $} ifTrue: [ ^ self scan44 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(153) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scanForTokenX2X2 [
	currentCharacter == $* ifTrue: [ ^ self scan14 ].
	currentCharacter == $+ ifTrue: [ ^ self scan15 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scan16 ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $/ ifTrue: [ ^ self scan41 ].
	currentCharacter == $: ifTrue: [ ^ self scan28 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $< ifTrue: [ ^ self scan29 ].
	currentCharacter == $= ifTrue: [ ^ self scan30 ].
	currentCharacter == $> ifTrue: [ ^ self scan42 ].
	currentCharacter == $? ifTrue: [ ^ self scan31 ].
	^ self scanForTokenX2X1
]

{ #category : #private }
CSharpScanner >> scanFormat [
	self resetScanner.
	returnMatchBlock := [ :match | ^ match ].
	[ self step.
	(currentCharacter = $" or: [ currentCharacter isLineBreak ])
		ifTrue: [ ^ self recordAndReportMatch: #(-1) ].
	currentCharacter = ${
		ifTrue: [ self step.
			currentCharacter ~= ${ ifTrue: [ ^ self reportLastMatch ] ].
	currentCharacter = $}
		ifTrue: [ self step.
			currentCharacter ~= $} ifTrue: [ ^ self reportLastMatch ] ].
	currentCharacter = $\
		ifTrue: [ self step.
			('''"\0abfnrtv' includes: currentCharacter)
				ifFalse: [ currentCharacter = $U
						ifTrue: [ 8
								timesRepeat: [ self step.
									('0123456789ABCDEFabcdef' includes: currentCharacter)
										ifFalse: [ ^ self reportLastMatch ] ] ]
						ifFalse: [ currentCharacter = $u
								ifTrue: [ 4
										timesRepeat: [ self step.
											('0123456789ABCDEFabcdef' includes: currentCharacter)
												ifFalse: [ ^ self reportLastMatch ] ] ]
								ifFalse: [ currentCharacter = $x
										ifTrue: [ self step.
											('0123456789ABCDEFabcdef' includes: currentCharacter)
												ifFalse: [ ^ self reportLastMatch ] ]
										ifFalse: [ ^ self reportLastMatch ] ] ] ] ].
	self recordMatch: #(-1) ] repeat
]

{ #category : #generated }
CSharpScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #preprocessorDirective #patternToken)
]
