Class {
	#name : #YAMLScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'opened',
		'indents',
		'tokens'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #'generated-initialization' }
YAMLScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(22 '---' 9) #(22 '...' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
YAMLScanner >> DEDENTId [
	^ 78
]

{ #category : #private }
YAMLScanner >> DOCUMENTEND1 [
	^ self recordAndReportMatch: {self DOCUMENTENDId}
]

{ #category : #generated }
YAMLScanner >> DOCUMENTENDId [
	^ 79
]

{ #category : #private }
YAMLScanner >> DOCUMENTSTART1 [
	matchActions := {(start = 0
				or: [ String crlf includes: (self peekAt: start - 1) ])
				ifTrue: [ self DOCUMENTSTARTId ]
				ifFalse: [ self STRING_MYId ]}.
	^ self createTokenFor: outputStream contents
]

{ #category : #generated }
YAMLScanner >> DOCUMENTSTARTId [
	^ 80
]

{ #category : #private }
YAMLScanner >> DOUBLE_QUOTE2 [
	^ self recordAndReportMatch: {self DOUBLE_QUOTEId}
]

{ #category : #generated }
YAMLScanner >> DOUBLE_QUOTEId [
	^ 19
]

{ #category : #generated }
YAMLScanner >> FINISH_LITERAL_STRINGId [
	^ 81
]

{ #category : #generated }
YAMLScanner >> INDENTId [
	^ 82
]

{ #category : #generated }
YAMLScanner >> NEWLINEId [
	^ 83
]

{ #category : #generated }
YAMLScanner >> NEWLINE_STR_LITERALId [
	^ 84
]

{ #category : #private }
YAMLScanner >> SKIP1 [
	| indent |
	start = 0
		ifTrue: [ (currentCharacter = Character cr
				or: [ currentCharacter = Character lf or: [ currentCharacter = $# ] ])
				ifFalse: [ indent := self indentsFor: outputStream contents.
					indent > indents value ifTrue: [ indents := indents asLinkPrepend: indent ] ] ].
	^ self whitespace
]

{ #category : #private }
YAMLScanner >> SKIP2 [
	^ self whitespace
]

{ #category : #generated }
YAMLScanner >> SPACESId [
	^ 24
]

{ #category : #generated }
YAMLScanner >> STRING_MYId [
	^ 22
]

{ #category : #private }
YAMLScanner >> STRING_MY_2 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : #private }
YAMLScanner >> STRING_MY_3 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : #private }
YAMLScanner >> STRING_MY_4 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : #private }
YAMLScanner >> currentState [
	| state |
	state := super currentState.
	state opened: opened.
	state indents: indents.
	state tokens: tokens.
	^ state
]

{ #category : #generated }
YAMLScanner >> emptySymbolTokenId [
	^ 85
]

{ #category : #generated }
YAMLScanner >> errorTokenId [
	^ 86
]

{ #category : #private }
YAMLScanner >> indentsFor: aString [
	| input crlf index |
	input := aString readStream.
	crlf := String crlf.
	[ input atEnd not and: [ crlf includes: input peek ] ]
		whileTrue: [ input next ].
	input atEnd ifTrue: [ ^ 0 ].
	index := 0.
	[ input atEnd ]
		whileFalse: [ index := input next = $ 
					ifTrue: [ index + 1 ]
					ifFalse: [ (index // 8 + 1) * 8 ] ].
	^ index
]

{ #category : #'initialize-release' }
YAMLScanner >> initialize [
	super initialize.
	indents := 0 asLink.
	opened := 0
]

{ #category : #private }
YAMLScanner >> newline [
	| dedentToken indent |
	(currentCharacter = Character cr
		or: [ currentCharacter = Character lf or: [ currentCharacter = $# ] ])
		ifFalse: [ opened > 0
				ifFalse: [ indent := self indentsFor: outputStream contents.
					indent > indents value
						ifTrue: [ tokens := (SmaCCToken
									value: ''
									start: matchEnd
									ids: {self INDENTId}) asLink.
							indents := indents asLinkPrepend: indent ]
						ifFalse: [ [ indent < indents value ]
								whileTrue: [ dedentToken := SmaCCToken
											value: ''
											start: matchEnd
											ids: {self DEDENTId}.
									tokens := tokens
											ifNil: [ dedentToken asLink ]
											ifNotNil: [ tokens asLinkPrepend: dedentToken ].
									indents := indents nextLink ] ] ] ].
	^ self recordAndReportMatch: {self NEWLINEId}
]

{ #category : #private }
YAMLScanner >> newline_str_literal [
	| indent spaceCount |
	(opened > 0
		or: [ currentCharacter = Character cr
				or: [ currentCharacter = Character lf or: [ currentCharacter = $# ] ] ])
		ifFalse: [ indent := indents value.
			spaceCount := self indentsFor: outputStream contents.
			spaceCount <= indent
				ifTrue: [ stream position: start.
					^ SmaCCToken
						value: ''
						start: start + 1
						ids: {self FINISH_LITERAL_STRINGId} ] ].
	^ self recordAndReportMatch: {self NEWLINE_STR_LITERALId}
]

{ #category : #private }
YAMLScanner >> next [
	| token |
	tokens
		ifNotNil: [ token := tokens value.
			tokens := tokens nextLink.
			^ token ].
	^ super next
]

{ #category : #accessing }
YAMLScanner >> opened [
	^ opened
]

{ #category : #accessing }
YAMLScanner >> opened: anObject [
	opened := anObject
]

{ #category : #private }
YAMLScanner >> restoreState: aSmaCCScannerState [
	super restoreState: aSmaCCScannerState.
	opened := aSmaCCScannerState opened.
	indents := aSmaCCScannerState indents.
	tokens := aSmaCCScannerState tokens
]

{ #category : #generated }
YAMLScanner >> scan1 [
	[ self recordMatch: #(30).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ currentCharacter >= $# ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan10 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan11 [
	[ self recordMatch: #(6 26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan11X1
]

{ #category : #generated }
YAMLScanner >> scan11X1 [
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan12 [
	self recordMatch: #(26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	^ self scan12X2
]

{ #category : #generated }
YAMLScanner >> scan12X1 [
	self recordMatch: #(26).
	self step.
	^ self scan12X1X1
]

{ #category : #generated }
YAMLScanner >> scan12X1X1 [
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan12X2 [
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan12X1 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $*)
								or: [ (currentCharacter between: $. and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan13 [
	[ self recordMatch: #(6 26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan13X1
]

{ #category : #generated }
YAMLScanner >> scan13X1 [
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan14 [
	self recordMatch: #(7 26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan15 [
	self recordMatch: #(2 26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $0 ifTrue: [ ^ self scan15X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ifTrue: [ ^ self scan16 ].
	^ self scan15X5
]

{ #category : #generated }
YAMLScanner >> scan15X1 [
	[ self recordMatch: #(2 26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $0 ] whileTrue.
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ifTrue: [ ^ self scan16 ].
	^ self scan15X1X1
]

{ #category : #generated }
YAMLScanner >> scan15X1X1 [
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan15X2 [
	self recordMatch: #(26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 26).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan7 ].
			currentCharacter == $: ifTrue: [ ^ self scan8 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self scan15X2X1
]

{ #category : #generated }
YAMLScanner >> scan15X2X1 [
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan15X3 [
	self recordMatch: #(26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 26).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan7 ].
			currentCharacter == $: ifTrue: [ ^ self scan8 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	^ self scan15X3X1
]

{ #category : #generated }
YAMLScanner >> scan15X3X1 [
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan15X4 [
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan15X5 [
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan15X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan15X2 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan7 ].
			currentCharacter == $: ifTrue: [ ^ self scan8 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 26).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan7 ].
					currentCharacter == $: ifTrue: [ ^ self scan8 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self scan15X4
]

{ #category : #generated }
YAMLScanner >> scan16 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan16X1
]

{ #category : #generated }
YAMLScanner >> scan16X1 [
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan17 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character tab ] whileTrue.
	^ self scan17X2
]

{ #category : #generated }
YAMLScanner >> scan17X1 [
	[ self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan17 ].
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan10 ].
	currentCharacter == Character space ] whileTrue.
	(currentCharacter <= $"
		or: [ (currentCharacter between: $$ and: $+)
				or: [ (currentCharacter between: $- and: $9)
						or: [ (currentCharacter between: $; and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan17X2 [
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan10 ].
	currentCharacter == Character space ifTrue: [ ^ self scan17X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18 [
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan22 ].
	currentCharacter == Character lf ifTrue: [ ^ self scan18X14 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan18X12 ].
	currentCharacter == Character space ifTrue: [ ^ self scan18X13 ].
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $# ifTrue: [ ^ self scan18X11 ].
	currentCharacter == $& ifTrue: [ ^ self scan18X10 ].
	currentCharacter == $* ifTrue: [ ^ self scan18X9 ].
	currentCharacter == $, ifTrue: [ ^ self scan18X6 ].
	^ self scan18X15
]

{ #category : #generated }
YAMLScanner >> scan18X1 [
	[ self recordMatch: #(2 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X10 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(20).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X11 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X12 [
	self recordMatch: #(1).
	self step.
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X13 [
	[ self recordMatch: #(23 24).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X14 [
	[ self recordMatch: #(1).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X15 [
	currentCharacter == $- ifTrue: [ ^ self scan18X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan18X2 ].
	currentCharacter == $0 ifTrue: [ ^ self scan27 ].
	currentCharacter == $: ifTrue: [ ^ self scan18X7 ].
	currentCharacter == $> ifTrue: [ ^ self scan18X5 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan29 ].
	currentCharacter == $] ifTrue: [ ^ self scan18X4 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $} ifTrue: [ ^ self scan18X3 ].
	currentCharacter isDigit ifTrue: [ ^ self scan18X1 ].
	^ self scan19
]

{ #category : #generated }
YAMLScanner >> scan18X2 [
	self recordMatch: #(22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X3 [
	self recordMatch: #(16 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X4 [
	self recordMatch: #(14 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X5 [
	self recordMatch: #(18 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X6 [
	self recordMatch: #(11 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X7 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X8 [
	self recordMatch: #(8).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X9 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(21).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan19 [
	[ self recordMatch: #(22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan2 [
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
										ifTrue: [ ^ self scan3 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan3 ].
	currentCharacter == $x ifTrue: [ ^ self scan4 ].
	(currentCharacter == $"
		or: [ (currentCharacter between: $/ and: $0)
				or: [ ('LNP\_' includes: currentCharacter)
						or: [ (currentCharacter between: $a and: $b)
								or: [ (currentCharacter between: $e and: $f)
										or: [ ('nr' includes: currentCharacter) or: [ currentCharacter between: $t and: $v ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan20 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $")
						or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan21 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan22 [
	[ self recordMatch: #(22 23 24).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character space
		ifTrue: [ [ self recordMatch: #(23 24).
			self step.
			currentCharacter == Character tab ifTrue: [ ^ self scan22 ].
			currentCharacter == Character space ] whileTrue.
			(currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $")
								or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ] ] ])
				ifTrue: [ ^ self scan19 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan23 [
	[ self recordMatch: #(6 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan24 [
	self recordMatch: #(22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ifTrue: [ ^ self scan25 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan20 ].
			currentCharacter == $: ifTrue: [ ^ self scan21 ].
			currentCharacter isDigit ifTrue: [ ^ self scan25 ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan25 [
	[ self recordMatch: #(6 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26 [
	self recordMatch: #(7 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27 [
	self recordMatch: #(2 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $0 ifTrue: [ ^ self scan27X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ifTrue: [ ^ self scan28 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan27X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan27X2 ].
	^ self scan27X4
]

{ #category : #generated }
YAMLScanner >> scan27X1 [
	[ self recordMatch: #(2 22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $0 ] whileTrue.
	^ self scan27X1X1
]

{ #category : #generated }
YAMLScanner >> scan27X1X1 [
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ifTrue: [ ^ self scan28 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X2 [
	self recordMatch: #(22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 22).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan20 ].
			currentCharacter == $: ifTrue: [ ^ self scan21 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X3 [
	self recordMatch: #(22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 22).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan20 ].
			currentCharacter == $: ifTrue: [ ^ self scan21 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X4 [
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan20 ].
			currentCharacter == $: ifTrue: [ ^ self scan21 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 22).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan20 ].
					currentCharacter == $: ifTrue: [ ^ self scan21 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan28 [
	[ self recordMatch: #(22).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan20 ].
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan29 [
	[ self recordMatch: #(22).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan30 ].
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character tab ifTrue: [ ^ self scan29 ].
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			currentCharacter == Character cr ifTrue: [ ^ self scan30 ].
			currentCharacter == Character space ] whileTrue.
			(currentCharacter <= $"
				or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ])
				ifTrue: [ ^ self scan19 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan21 ].
	^ self scan19
]

{ #category : #generated }
YAMLScanner >> scan3 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan4 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan30 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan4 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan1 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan5 [
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan9 ].
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan10 ].
	currentCharacter == Character space ifTrue: [ ^ self scan5X4 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $- ifTrue: [ ^ self scan8 ].
	^ self scan5X5
]

{ #category : #generated }
YAMLScanner >> scan5X1 [
	[ self recordMatch: #(2 26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan5X1X1
]

{ #category : #generated }
YAMLScanner >> scan5X1X1 [
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan5X2 [
	self recordMatch: #(26).
	self step.
	^ self scan5X2X1
]

{ #category : #generated }
YAMLScanner >> scan5X2X1 [
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ifTrue: [ ^ self scan11 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan5X3 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan5X4 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan5X5 [
	currentCharacter == $. ifTrue: [ ^ self scan5X2 ].
	currentCharacter == $0 ifTrue: [ ^ self scan15 ].
	currentCharacter == $: ifTrue: [ ^ self scan5X3 ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter isDigit ifTrue: [ ^ self scan5X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $$ and: $Z)
				or: [ (currentCharacter between: $^ and: $z) or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan6 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan7 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $")
						or: [ (currentCharacter between: $$ and: $+)
								or: [ (currentCharacter between: $- and: $9)
										or: [ (currentCharacter between: $; and: $Z)
												or: [ currentCharacter == $\
														or: [ (currentCharacter between: $^ and: $z)
																or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan8 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan9 [
	[ self recordMatch: #(26 27).
	self step.
	currentCharacter == Character tab ] whileTrue.
	^ self scan9X2
]

{ #category : #generated }
YAMLScanner >> scan9X1 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan9 ].
	currentCharacter == Character space ] whileTrue.
	^ self scan9X1X1
]

{ #category : #generated }
YAMLScanner >> scan9X1X1 [
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $")
						or: [ (currentCharacter between: $$ and: $+)
								or: [ (currentCharacter between: $- and: $9)
										or: [ (currentCharacter between: $; and: $Z)
												or: [ currentCharacter == $\
														or: [ (currentCharacter between: $^ and: $z)
																or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan9X2 [
	currentCharacter == Character space ifTrue: [ ^ self scan9X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scanForToken [
	scope == #LITERAL_STRING ifTrue: [ ^ self scanForTokenX1 ].
	scope == #FLOW ifTrue: [ ^ self scan5 ].
	scope == #DOUBLE_QUOTE_STR
		ifTrue: [ self recordMatch: #(30).
			self step.
			currentCharacter == Character lf
				ifTrue: [ [ self recordMatch: #(31).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character space ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == Character cr
				ifTrue: [ self recordMatch: #(31).
					self step.
					((currentCharacter between: Character tab and: Character lf)
						or: [ currentCharacter == Character space ])
						ifTrue: [ [ self recordMatch: #(31).
							self step.
							currentCharacter == Character tab
								or: [ currentCharacter == Character space ] ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(32) ].
			currentCharacter == $\ ifTrue: [ ^ self scan2 ].
			^ self scan1 ].
	scope == #default ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scanForTokenX1 [
	self recordMatch: #(29).
	self step.
	currentCharacter == Character lf
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(28).
			self step.
			((currentCharacter between: Character tab and: Character lf)
				or: [ currentCharacter == Character space ])
				ifTrue: [ [ self recordMatch: #(28).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character space ] ] whileTrue ].
			^ self reportLastMatch ].
	true
		ifTrue: [ [ self recordMatch: #(29).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #accessing }
YAMLScanner >> stateClass [
	^ YAMLScannerState
]

{ #category : #generated }
YAMLScanner >> tokenActions [
	^ #(#newline nil nil nil nil nil nil nil #DOCUMENTSTART1 #DOCUMENTEND1 nil nil nil nil nil nil nil nil nil nil nil nil #SKIP1 nil #comment #STRING_MY_2 #SKIP2 #newline_str_literal #STRING_MY_3 #STRING_MY_4 nil #DOUBLE_QUOTE2)
]
