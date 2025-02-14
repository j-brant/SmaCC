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
	#(#(174 'abstract' #(44 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'add' #(45 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'alias' #(46 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'allows' #(47 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'and' #(48 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'as' #(49 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'ascending' #(50 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'async' #(51 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'await' #(52 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'base' #(53 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'bool' #(54 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'break' #(55 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'by' #(56 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'byte' #(57 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'case' #(58 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'catch' #(59 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'char' #(60 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'checked' #(61 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'class' #(62 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'const' #(63 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'continue' #(64 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'decimal' #(65 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'default' #(66 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'delegate' #(67 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'descending' #(68 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'do' #(69 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'double' #(70 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'dynamic' #(71 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'else' #(72 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'enum' #(73 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'equals' #(74 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'event' #(75 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'explicit' #(76 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'extern' #(77 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'false' #(78 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'field' #(79 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'file' #(80 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'finally' #(81 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'fixed' #(82 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'float' #(83 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'for' #(84 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'foreach' #(85 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'from' #(86 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'get' #(87 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'global' #(88 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'goto' #(89 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'group' #(90 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'if' #(91 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'implicit' #(92 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'in' #(93 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'init' #(94 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'int' #(95 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'interface' #(96 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'internal' #(97 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'into' #(98 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'is' #(99 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'join' #(100 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'let' #(101 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'lock' #(102 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'long' #(103 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'managed' #(104 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'method' #(105 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'nameof' #(106 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'namespace' #(107 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'new' #(108 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'not' #(109 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'notnull' #(110 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'null' #(188 #(#default))) #(174 'object' #(111 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'on' #(112 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'operator' #(113 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'or' #(114 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'orderby' #(115 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'out' #(116 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'override' #(117 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'param' #(118 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'params' #(119 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'partial' #(120 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'private' #(121 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'property' #(122 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'protected' #(123 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'public' #(124 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'readonly' #(125 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'record' #(126 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'ref' #(127 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'remove' #(128 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'required' #(129 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'return' #(130 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'sbyte' #(131 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'scoped' #(132 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'sealed' #(133 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'select' #(134 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'set' #(135 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'short' #(136 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'sizeof' #(137 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'stackalloc' #(138 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'static' #(139 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'string' #(140 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'struct' #(141 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'switch' #(142 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'this' #(143 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'throw' #(144 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'true' #(145 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'try' #(146 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'type' #(147 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'typeof' #(148 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'uint' #(149 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'ulong' #(150 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'unchecked' #(151 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'unmanaged' #(152 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'unsafe' #(153 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'ushort' #(154 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'using' #(155 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'var' #(156 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'virtual' #(157 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'void' #(158 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'volatile' #(159 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'when' #(160 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'where' #(161 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'while' #(162 #(#default #interpolatedString #interpolatedVerbatimString))) #(174 'yield' #(163 #(#default #interpolatedString #interpolatedVerbatimString))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
CSharpScanner >> IdentifierId [
	^ 174
]

{ #category : #generated }
CSharpScanner >> MultiLineInterpolatedRegularStringEndId [
	^ 722
]

{ #category : #generated }
CSharpScanner >> MultiLineInterpolatedRegularStringMidId [
	^ 723
]

{ #category : #generated }
CSharpScanner >> MultiLineInterpolatedRegularStringStartId [
	^ 724
]

{ #category : #generated }
CSharpScanner >> MultiLineInterpolatedRegularStringWholeId [
	^ 725
]

{ #category : #generated }
CSharpScanner >> StringLiteralId [
	^ 187
]

{ #category : #generated }
CSharpScanner >> emptySymbolTokenId [
	^ 726
]

{ #category : #generated }
CSharpScanner >> errorTokenId [
	^ 727
]

{ #category : #generated }
CSharpScanner >> gtId [
	^ 169
]

{ #category : #generated }
CSharpScanner >> gtgtId [
	^ 170
]

{ #category : #generated }
CSharpScanner >> gtgtgtId [
	^ 171
]

{ #category : #'initialize-release' }
CSharpScanner >> initialize [
	super initialize.
	preprocessorDirectives := Set new
]

{ #category : #private }
CSharpScanner >> multiLineInterpolatedString [
	| end |
	end := outputStream contents.
	^ self scanMultiLineInterpolatedString: end start: true
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

{ #category : #private }
CSharpScanner >> rawStringLiteral [
	| end |
	end := outputStream contents.
	outputStream
		nextPutAll: (stream upToAll: end);
		nextPutAll: end.
	matchActions := {self StringLiteralId}.
	^ self createTokenFor: outputStream contents
]

{ #category : #generated }
CSharpScanner >> rightBraceId [
	^ 172
]

{ #category : #generated }
CSharpScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan2 ].
	currentCharacter == $" ifTrue: [ ^ self scan1X3 ].
	^ self scan1X13
]

{ #category : #generated }
CSharpScanner >> scan10 [
	self recordMatch: #(180).
	self step.
	currentCharacter == ${ ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan11 [
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
						ifTrue: [ ^ self scan12 ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan12 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan13 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(183).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan13 ].
			^ self reportLastMatch ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(184).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan13 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan14 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan15 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan16 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(177) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan17 [
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
								ifTrue: [ ^ self scan16 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan18 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan19 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X1 [
	self recordMatch: #(175).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan25 ].
	^ self scan1X1X1
]

{ #category : #generated }
CSharpScanner >> scan1X10 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X11 [
	currentCharacter == $^ ifTrue: [ ^ self scan42 ].
	currentCharacter == $_ ifTrue: [ ^ self scan43 ].
	currentCharacter == $` ifTrue: [ ^ self scan44 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(164) ].
	currentCharacter == $| ifTrue: [ ^ self scan45 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(172) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(168) ].
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ ^ self scan1X9 ].
	currentCharacter isLetter ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X12 [
	currentCharacter == $/ ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan32 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scan33 ].
	currentCharacter == $= ifTrue: [ ^ self scan34 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $? ifTrue: [ ^ self scan35 ].
	currentCharacter == $@ ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	^ self scan1X11
]

{ #category : #generated }
CSharpScanner >> scan1X13 [
	currentCharacter == $# ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $$ ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $% ifTrue: [ ^ self scan14 ].
	currentCharacter == $& ifTrue: [ ^ self scan15 ].
	currentCharacter == $' ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scan18 ].
	currentCharacter == $+ ifTrue: [ ^ self scan19 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X10 ].
	^ self scan1X12
]

{ #category : #generated }
CSharpScanner >> scan1X1X1 [
	currentCharacter == $_ ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan27 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan28 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter == $M
				or: [ (currentCharacter between: $d and: $f) or: [ currentCharacter == $m ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(176) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X2 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan1X2X1 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: $&)
				or: [ currentCharacter >= $( ] ]) ifTrue: [ ^ self scan16 ].
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
										ifTrue: [ ^ self scan17 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan17 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(177) ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(177) ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(177) ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan16 ] ] ] ].
			^ self reportLastMatch ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ (currentCharacter between: $e and: $f)
						or: [ ('nr' includes: currentCharacter) or: [ currentCharacter between: $t and: $v ] ] ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X3 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(187).
			self step.
			currentCharacter == $"
				ifTrue: [ [ self recordMatch: #(192).
					self step.
					currentCharacter == $" ] whileTrue.
					^ self reportLastMatch ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: (Character value: 132))
						or: [ currentCharacter >= (Character value: 134) ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X4 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ self recordMatch: #(179).
					self step.
					currentCharacter == $"
						ifTrue: [ [ self recordMatch: #(178).
							self step.
							currentCharacter == $" ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $\ ifTrue: [ ^ self scan9 ].
			currentCharacter == ${ ifTrue: [ ^ self scan10 ].
			(currentCharacter <= Character tab
				or: [ currentCharacter >= Character pageUp ]) ifTrue: [ ^ self scan8 ].
			^ self reportLastMatch ].
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ (self scanForString: '""')
						ifTrue: [ [ self recordMatch: #(178).
							self step.
							currentCharacter == $" ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $$ ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $@
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan13 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X5 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan24 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(173).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X6 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan36 ].
	currentCharacter == $$ ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X7 [
	self recordMatch: #(169).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(170).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(171).
					self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(36) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X8 [
	[ self recordMatch: #(190).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan1X9 [
	[ self recordMatch: #(189).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter = (Character value: 160) ] ] ] whileTrue.
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
	self recordMatch: #(16).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan21 [
	[ self recordMatch: #(176).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan21 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter == $M
				or: [ (currentCharacter between: $d and: $f) or: [ currentCharacter == $m ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(176) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan22 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan23 [
	[ self recordMatch: #(176).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('DFMdfm' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(176) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan24 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(173) ].
			^ self scan24 ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan25 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan26 [
	[ self recordMatch: #(175).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan25 ].
	currentCharacter == $_ ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan27 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan28 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter == $M
				or: [ (currentCharacter between: $d and: $f) or: [ currentCharacter == $m ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(176) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan27 [
	self recordMatch: #(175).
	self step.
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(175) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan28 [
	self recordMatch: #(175).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(175) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan29 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan3 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(187).
			self step.
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: (Character value: 132))
						or: [ currentCharacter >= (Character value: 134) ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan30 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(175).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan30 ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			('Ll' includes: currentCharacter) ifTrue: [ ^ self scan27 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan28 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan31 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(175).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan31 ].
			('Ll' includes: currentCharacter) ifTrue: [ ^ self scan27 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan28 ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan32 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan33 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(28).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan34 [
	self recordMatch: #(31).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan35 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan36 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(187).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan36 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan37 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan38 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan37 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(184).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan38 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan39 [
	[ self recordMatch: #(174).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan4 [
	self step.
	currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(187) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan40 [
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
										ifTrue: [ ^ self scan41 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan41 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan41 [
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
								ifTrue: [ ^ self scan39 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan42 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan43 [
	self recordMatch: #(43 174).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan44 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(191).
			self step.
			currentCharacter == $` ifTrue: [ ^ self scan44 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan45 [
	self recordMatch: #(165).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(166) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(167) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan46 [
	(self scanForString: '""')
		ifTrue: [ [ self recordMatch: #(192).
			self step.
			currentCharacter == $" ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan47 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan48 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan49 [
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	currentCharacter == $>
		ifTrue: [ self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ].
			currentCharacter == $>
				ifTrue: [ self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(36) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan5 [
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
										ifTrue: [ ^ self scan6 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan6 ].
	currentCharacter == $x ifTrue: [ ^ self scan7 ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ (currentCharacter between: $e and: $f)
						or: [ ('nr' includes: currentCharacter) or: [ currentCharacter between: $t and: $v ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan50 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan51 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(181) ].
	currentCharacter == $\ ifTrue: [ ^ self scan51X1 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(182).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan51 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab or: [ currentCharacter >= Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan51X1 [
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
										ifTrue: [ ^ self scan52 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan52 ].
	currentCharacter == $x ifTrue: [ ^ self scan53 ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ (currentCharacter between: $e and: $f)
						or: [ ('nr' includes: currentCharacter) or: [ currentCharacter between: $t and: $v ] ] ] ])
		ifTrue: [ ^ self scan51 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan52 [
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
						ifTrue: [ ^ self scan53 ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan53 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan51 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan54 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(185).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan54 ].
			^ self reportLastMatch ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(186).
			self step.
			currentCharacter == ${ ifTrue: [ ^ self scan54 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
CSharpScanner >> scan6 [
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
								or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan7 ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan7 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan8 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(179) ].
	currentCharacter == $\ ifTrue: [ ^ self scan9 ].
	currentCharacter == ${ ifTrue: [ ^ self scan10 ].
	currentCharacter <= Character tab or: [ currentCharacter >= Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scan9 [
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
										ifTrue: [ ^ self scan11 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan11 ].
	currentCharacter == $x ifTrue: [ ^ self scan12 ].
	(('"''0\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ (currentCharacter between: $e and: $f)
						or: [ ('nr' includes: currentCharacter) or: [ currentCharacter between: $t and: $v ] ] ] ])
		ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
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
	currentCharacter == $" ifTrue: [ ^ self scan46 ].
	currentCharacter == $% ifTrue: [ ^ self scan14 ].
	currentCharacter == $& ifTrue: [ ^ self scan15 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self scanForTokenX1X2
]

{ #category : #generated }
CSharpScanner >> scanForTokenX1X1 [
	currentCharacter == $@ ifTrue: [ ^ self scan50 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $^ ifTrue: [ ^ self scan42 ].
	currentCharacter == $_ ifTrue: [ ^ self scan43 ].
	currentCharacter == $` ifTrue: [ ^ self scan44 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(164) ].
	currentCharacter == $| ifTrue: [ ^ self scan45 ].
	currentCharacter == $} ifTrue: [ ^ self scan54 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(168) ].
	currentCharacter isLetter ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scanForTokenX1X2 [
	currentCharacter == $* ifTrue: [ ^ self scan18 ].
	currentCharacter == $+ ifTrue: [ ^ self scan19 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan47 ].
	currentCharacter == $/ ifTrue: [ ^ self scan48 ].
	currentCharacter == $: ifTrue: [ ^ self scan32 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scan33 ].
	currentCharacter == $= ifTrue: [ ^ self scan34 ].
	currentCharacter == $> ifTrue: [ ^ self scan49 ].
	currentCharacter == $? ifTrue: [ ^ self scan35 ].
	^ self scanForTokenX1X1
]

{ #category : #generated }
CSharpScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan2 ].
	currentCharacter == $" ifTrue: [ ^ self scan46 ].
	currentCharacter == $% ifTrue: [ ^ self scan14 ].
	currentCharacter == $& ifTrue: [ ^ self scan15 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self scanForTokenX2X2
]

{ #category : #generated }
CSharpScanner >> scanForTokenX2X1 [
	currentCharacter == $@ ifTrue: [ ^ self scan50 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $^ ifTrue: [ ^ self scan42 ].
	currentCharacter == $_ ifTrue: [ ^ self scan43 ].
	currentCharacter == $` ifTrue: [ ^ self scan44 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(164) ].
	currentCharacter == $| ifTrue: [ ^ self scan45 ].
	currentCharacter == $} ifTrue: [ ^ self scan51 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(168) ].
	currentCharacter isLetter ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
CSharpScanner >> scanForTokenX2X2 [
	currentCharacter == $* ifTrue: [ ^ self scan18 ].
	currentCharacter == $+ ifTrue: [ ^ self scan19 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan47 ].
	currentCharacter == $/ ifTrue: [ ^ self scan48 ].
	currentCharacter == $: ifTrue: [ ^ self scan32 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scan33 ].
	currentCharacter == $= ifTrue: [ ^ self scan34 ].
	currentCharacter == $> ifTrue: [ ^ self scan49 ].
	currentCharacter == $? ifTrue: [ ^ self scan35 ].
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

{ #category : #private }
CSharpScanner >> scanMultiLineInterpolatedString: end start: aBoolean [
	| countBrace countQuote readStream count |
	matchActions := #().
	countBrace := countQuote := 0.
	readStream := end readStream.
	[ readStream peekFor: $$ ] whileTrue: [ countBrace := countBrace + 1 ].
	[ readStream peekFor: $" ] whileTrue: [ countQuote := countQuote + 1 ].
	[ currentCharacter = ${ ifFalse: [ self step ].
	count := countBrace.
	[ currentCharacter = ${
		and: [ count := count - 1.
			count > 0 ] ] whileTrue: [ self step ].
	count = 0
		ifTrue: [ matchActions := {aBoolean
						ifTrue: [ self MultiLineInterpolatedRegularStringStartId ]
						ifFalse: [ self MultiLineInterpolatedRegularStringMidId ]}.
			^ self createTokenFor: outputStream contents ].
	count := countQuote.
	[ currentCharacter = $"
		and: [ count := count - 1.
			count > 0 ] ] whileTrue: [ self step ].
	count = 0
		ifTrue: [ matchActions := {aBoolean
						ifTrue: [ self MultiLineInterpolatedRegularStringWholeId ]
						ifFalse: [ self MultiLineInterpolatedRegularStringEndId ]}.
			^ self createTokenFor: outputStream contents ] ] repeat
]

{ #category : #private }
CSharpScanner >> scanMultiLineInterpolatedStringPart: token [
	self resetScanner.
	returnMatchBlock := [ :match | ^ match ].
	^ self scanMultiLineInterpolatedString: token value start: false
]

{ #category : #generated }
CSharpScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil nil #multiLineInterpolatedString nil nil nil nil nil nil nil nil nil nil #whitespace #preprocessorDirective #patternToken #rawStringLiteral)
]
