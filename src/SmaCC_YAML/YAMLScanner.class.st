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
	#(#(21 '---' 9) #(21 '...' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
YAMLScanner >> COLONId [
	^ 12
]

{ #category : #generated }
YAMLScanner >> DEDENTId [
	^ 88
]

{ #category : #private }
YAMLScanner >> DOCUMENTEND1 [
	^ self recordAndReportMatch: {self DOCUMENTENDId}
]

{ #category : #generated }
YAMLScanner >> DOCUMENTENDId [
	^ 89
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
	^ 90
]

{ #category : #generated }
YAMLScanner >> FINISH_LITERAL_STRINGId [
	^ 91
]

{ #category : #generated }
YAMLScanner >> INDENTId [
	^ 92
]

{ #category : #generated }
YAMLScanner >> NEWLINEId [
	^ 93
]

{ #category : #generated }
YAMLScanner >> NEWLINE_STR_LITERALId [
	^ 94
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
	^ 23
]

{ #category : #generated }
YAMLScanner >> STRING_MYId [
	^ 21
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
	^ 95
]

{ #category : #generated }
YAMLScanner >> errorTokenId [
	^ 96
]

{ #category : #private }
YAMLScanner >> indentsBefore: anInteger [
	| text |
	text := String
			streamContents: [ :str | 
				| index crlf |
				index := anInteger - 2.
				crlf := String crlf.
				[ index >= 0
					and: [ (crlf includes: (str nextPut: (self peekAt: index))) not ] ]
					whileTrue: [ index := index - 1 ] ].
	^ self indentsFor: text reversed
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
		whileFalse: [ index := input next = Character tab
					ifTrue: [ (index // 8 + 1) * 8 ]
					ifFalse: [ index + 1 ] ].
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
YAMLScanner >> pushIndent: anInteger [
	indents := indents asLinkPrepend: anInteger
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
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $" ifTrue: [ ^ self scan7 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scan1X8
]

{ #category : #generated }
YAMLScanner >> scan10 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan12 ].
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	currentCharacter == $: ifTrue: [ ^ self scan15 ].
	currentCharacter == $\ ifTrue: [ ^ self scan16 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan11 ].
	(('",' includes: currentCharacter)
		or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan11 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	currentCharacter == $\ ifTrue: [ ^ self scan16 ].
	('-:' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	(currentCharacter == Character tab
		or: [ (currentCharacter between: $" and: $#)
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self scan10
]

{ #category : #generated }
YAMLScanner >> scan12 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(25).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan12 ].
			currentCharacter == $' ifTrue: [ ^ self scan14 ].
			currentCharacter == $: ] whileTrue.
			currentCharacter == $\ ifTrue: [ ^ self scan16 ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan11 ].
			^ self scan10 ].
	currentCharacter == $: ifTrue: [ ^ self scan15 ].
	currentCharacter == $\ ifTrue: [ ^ self scan16 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan11 ].
	(('#,' includes: currentCharacter)
		or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	^ self scan10
]

{ #category : #generated }
YAMLScanner >> scan13 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan13 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan14 [
	self recordMatch: #(25 31).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan15 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	currentCharacter == $\ ifTrue: [ ^ self scan16 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ])
		ifTrue: [ ^ self scan13 ].
	^ self scan10
]

{ #category : #generated }
YAMLScanner >> scan16 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan12 ].
	currentCharacter == $: ifTrue: [ ^ self scan15 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan11 ].
	('",[]{}' includes: currentCharacter) ifTrue: [ ^ self scan13 ].
	^ self scan10
]

{ #category : #generated }
YAMLScanner >> scan17 [
	[ self recordMatch: #(6 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan17X1
]

{ #category : #generated }
YAMLScanner >> scan17X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	^ self scan18X2
]

{ #category : #generated }
YAMLScanner >> scan18X1 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan18X2 [
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan18X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $*)
				or: [ (currentCharacter between: $. and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan19 [
	[ self recordMatch: #(6 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan19X1
]

{ #category : #generated }
YAMLScanner >> scan19X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X1 [
	[ self recordMatch: #(2 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan17 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan1X1X1
]

{ #category : #generated }
YAMLScanner >> scan1X1X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X2 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X3 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan9 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan2 ].
	('",[]{}' includes: currentCharacter)
		ifTrue: [ [ self recordMatch: #(19).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ] whileTrue.
			^ self reportLastMatch ].
	^ self scan8
]

{ #category : #generated }
YAMLScanner >> scan1X4 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X5 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X6 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X7 [
	self recordMatch: #(26).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X8 [
	currentCharacter == $- ifTrue: [ ^ self scan5 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $0 ifTrue: [ ^ self scan21 ].
	currentCharacter == $: ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan23 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X1 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X6 ].
	^ self scan2
]

{ #category : #generated }
YAMLScanner >> scan2 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan20 [
	self recordMatch: #(7 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan21 [
	self recordMatch: #(2 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan17 ].
	currentCharacter == $0 ifTrue: [ ^ self scan21X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan21X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	^ self scan21X5
]

{ #category : #generated }
YAMLScanner >> scan21X1 [
	[ self recordMatch: #(2 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan17 ].
	currentCharacter == $0 ] whileTrue.
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	^ self scan21X1X1
]

{ #category : #generated }
YAMLScanner >> scan21X1X1 [
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan21X2 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 25).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan4 ].
			currentCharacter == $: ifTrue: [ ^ self scan5 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self scan21X2X1
]

{ #category : #generated }
YAMLScanner >> scan21X2X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan21X3 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 25).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan4 ].
			currentCharacter == $: ifTrue: [ ^ self scan5 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	^ self scan21X3X1
]

{ #category : #generated }
YAMLScanner >> scan21X3X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan21X4 [
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan21X5 [
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan21X2 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(25).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan4 ].
			currentCharacter == $: ifTrue: [ ^ self scan5 ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan3 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 25).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan4 ].
					currentCharacter == $: ifTrue: [ ^ self scan5 ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan3 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self scan21X4
]

{ #category : #generated }
YAMLScanner >> scan22 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan17 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan22X1
]

{ #category : #generated }
YAMLScanner >> scan22X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan23 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter == Character tab ] whileTrue.
	^ self scan23X2
]

{ #category : #generated }
YAMLScanner >> scan23X1 [
	[ self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan23 ].
	currentCharacter == Character lf ifTrue: [ ^ self scan24 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan25 ].
	currentCharacter == Character space ] whileTrue.
	^ self scan23X1X1
]

{ #category : #generated }
YAMLScanner >> scan23X1X1 [
	currentCharacter == $- ifTrue: [ ^ self scan6 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter <= $"
		or: [ (currentCharacter between: $$ and: $+)
				or: [ (currentCharacter between: $. and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan23X2 [
	currentCharacter == Character lf ifTrue: [ ^ self scan24 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan25 ].
	currentCharacter == Character space ifTrue: [ ^ self scan23X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan24 [
	self recordMatch: #(26).
	self step.
	('-:' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: $!)
				or: [ (currentCharacter between: $$ and: $+)
						or: [ (currentCharacter between: $. and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan25 [
	self recordMatch: #(26).
	^ self scan25X1
]

{ #category : #generated }
YAMLScanner >> scan25X1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan24 ].
	(currentCharacter == Character cr or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan3 ].
	('-:' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: $!)
				or: [ (currentCharacter between: $$ and: $+)
						or: [ (currentCharacter between: $. and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan26X16 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan26X14 ].
	currentCharacter == $" ifTrue: [ ^ self scan7 ].
	currentCharacter == $# ifTrue: [ ^ self scan26X13 ].
	currentCharacter == $& ifTrue: [ ^ self scan26X12 ].
	currentCharacter == $' ifTrue: [ ^ self scan30 ].
	currentCharacter == $* ifTrue: [ ^ self scan26X11 ].
	currentCharacter == $, ifTrue: [ ^ self scan26X7 ].
	currentCharacter == $- ifTrue: [ ^ self scan26X10 ].
	currentCharacter == $. ifTrue: [ ^ self scan26X4 ].
	currentCharacter == $0 ifTrue: [ ^ self scan39 ].
	^ self scan26X17
]

{ #category : #generated }
YAMLScanner >> scan26X1 [
	[ self recordMatch: #(2 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $. ifTrue: [ ^ self scan35 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X10 [
	self recordMatch: #(8).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X11 [
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ])
		ifTrue: [ [ self recordMatch: #(20).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X12 [
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ])
		ifTrue: [ [ self recordMatch: #(19).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X13 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X14 [
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
YAMLScanner >> scan26X15 [
	[ self recordMatch: #(22 23).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X16 [
	[ self recordMatch: #(1).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X17 [
	currentCharacter == $: ifTrue: [ ^ self scan26X9 ].
	currentCharacter == $> ifTrue: [ ^ self scan26X2 ].
	currentCharacter == $? ifTrue: [ ^ self scan26X8 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan44 ].
	currentCharacter == $] ifTrue: [ ^ self scan26X6 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scan26X3 ].
	currentCharacter == $} ifTrue: [ ^ self scan26X5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan26X1 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan26X15 ].
	^ self scan27
]

{ #category : #generated }
YAMLScanner >> scan26X2 [
	self recordMatch: #(18 21).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan41 ].
	currentCharacter == Character space ifTrue: [ ^ self scan42 ].
	currentCharacter == $# ifTrue: [ ^ self scan43 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ self recordMatch: #(18 21).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan42 ].
			currentCharacter == $# ifTrue: [ ^ self scan43 ].
			currentCharacter == $: ifTrue: [ ^ self scan29 ].
			(currentCharacter == Character tab or: [ '+-' includes: currentCharacter ])
				ifTrue: [ ^ self scan41 ].
			(currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan27 ].
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(18 21).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan42 ].
			currentCharacter == $# ifTrue: [ ^ self scan43 ].
			currentCharacter == $: ifTrue: [ ^ self scan29 ].
			(currentCharacter == Character tab
				or: [ currentCharacter between: $1 and: $9 ]) ifTrue: [ ^ self scan41 ] ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X3 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $#
		ifTrue: [ [ self recordMatch: #(17).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ self recordMatch: #(17).
			self step.
			currentCharacter == $#
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space or: [ '+-' includes: currentCharacter ] ])
				ifTrue: [ ^ self scan46 ].
			^ self reportLastMatch ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan46 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(17).
			self step.
			currentCharacter == $#
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space
						or: [ currentCharacter between: $1 and: $9 ] ]) ifTrue: [ ^ self scan46 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X4 [
	self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ifTrue: [ ^ self scan35 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X5 [
	self recordMatch: #(16 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X6 [
	self recordMatch: #(14 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X7 [
	self recordMatch: #(11 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X8 [
	self recordMatch: #(30).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan26X9 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan28 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $")
						or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan29 [
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan3 [
	[ self step.
	('-:' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: $!)
				or: [ (currentCharacter between: $$ and: $+)
						or: [ (currentCharacter between: $. and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan30 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan31 ].
	currentCharacter == $' ifTrue: [ ^ self scan32 ].
	currentCharacter == $: ifTrue: [ ^ self scan33 ].
	currentCharacter == $\ ifTrue: [ ^ self scan34 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan31 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $' ifTrue: [ ^ self scan32 ].
	currentCharacter == $\ ifTrue: [ ^ self scan34 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ '#:' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	^ self scan30
]

{ #category : #generated }
YAMLScanner >> scan32 [
	self recordMatch: #(21 31).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan33 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan32 ].
	currentCharacter == $\ ifTrue: [ ^ self scan34 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space or: [ currentCharacter == $# ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self scan30
]

{ #category : #generated }
YAMLScanner >> scan34 [
	self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan31 ].
	currentCharacter == $: ifTrue: [ ^ self scan33 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan13 ].
	^ self scan30
]

{ #category : #generated }
YAMLScanner >> scan35 [
	[ self recordMatch: #(6 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan36 [
	self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ifTrue: [ ^ self scan37 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(21).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan28 ].
			currentCharacter == $: ifTrue: [ ^ self scan29 ].
			currentCharacter isDigit ifTrue: [ ^ self scan37 ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan37 [
	[ self recordMatch: #(6 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan38 [
	self recordMatch: #(7 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan39 [
	self recordMatch: #(2 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $. ifTrue: [ ^ self scan35 ].
	currentCharacter == $0 ifTrue: [ ^ self scan39X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ifTrue: [ ^ self scan40 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan39X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan39X2 ].
	^ self scan39X4
]

{ #category : #generated }
YAMLScanner >> scan39X1 [
	[ self recordMatch: #(2 21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $. ifTrue: [ ^ self scan35 ].
	currentCharacter == $0 ] whileTrue.
	^ self scan39X1X1
]

{ #category : #generated }
YAMLScanner >> scan39X1X1 [
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ifTrue: [ ^ self scan40 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan39X2 [
	self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 21).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan28 ].
			currentCharacter == $: ifTrue: [ ^ self scan29 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan39X3 [
	self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 21).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan28 ].
			currentCharacter == $: ifTrue: [ ^ self scan29 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan39X4 [
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(21).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan28 ].
			currentCharacter == $: ifTrue: [ ^ self scan29 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 21).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan28 ].
					currentCharacter == $: ifTrue: [ ^ self scan29 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan4 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $- ifTrue: [ ^ self scan6 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter <= $"
		or: [ (currentCharacter between: $$ and: $+)
				or: [ (currentCharacter between: $. and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan40 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan28 ].
	currentCharacter == $. ifTrue: [ ^ self scan35 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan41 [
	[ self recordMatch: #(18 21).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character space ifTrue: [ ^ self scan42 ].
	currentCharacter == $# ifTrue: [ ^ self scan43 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan42 [
	[ self recordMatch: #(18).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan41 ].
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $#
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $9)
						or: [ currentCharacter >= $; ] ] ]) ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan43 [
	[ self recordMatch: #(18 21).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			currentCharacter == Character space ] whileTrue.
			('#:' includes: currentCharacter)
				ifTrue: [ [ self recordMatch: #(18).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan43 ].
			^ self reportLastMatch ].
	currentCharacter == $:
		ifTrue: [ self recordMatch: #(18).
			self step.
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space or: [ currentCharacter == $# ] ])
				ifTrue: [ [ self recordMatch: #(18).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan43 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan44 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan45 ].
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character tab ifTrue: [ ^ self scan44 ].
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(22) ].
			currentCharacter == Character cr ifTrue: [ ^ self scan45 ].
			currentCharacter == Character space ] whileTrue.
			(currentCharacter <= $"
				or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ])
				ifTrue: [ ^ self scan27 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	^ self scan27
]

{ #category : #generated }
YAMLScanner >> scan45 [
	self recordMatch: #(22).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan46 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $#
		ifTrue: [ [ self recordMatch: #(17).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan5 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan6 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ] whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	^ self scan2
]

{ #category : #generated }
YAMLScanner >> scan7 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan7 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan8 [
	[ self recordMatch: #(19 25).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan9 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan2 ].
	('",[]{}' includes: currentCharacter)
		ifTrue: [ [ self recordMatch: #(19).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan9 [
	self recordMatch: #(19).
	self step.
	(currentCharacter == Character tab
		or: [ currentCharacter between: Character pageUp and: Character newPage ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ]) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scanForToken [
	scope == #LITERAL_STRING
		ifTrue: [ self recordMatch: #(28).
			self step.
			currentCharacter == Character lf
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character space ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == Character cr
				ifTrue: [ self recordMatch: #(27).
					self step.
					((currentCharacter between: Character tab and: Character lf)
						or: [ currentCharacter == Character space ])
						ifTrue: [ [ self recordMatch: #(27).
							self step.
							currentCharacter == Character tab
								or: [ currentCharacter == Character space ] ] whileTrue ].
					^ self reportLastMatch ].
			true
				ifTrue: [ [ self recordMatch: #(28).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	scope == #default ifTrue: [ ^ self scan26 ].
	scope == #FLOW ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #accessing }
YAMLScanner >> stateClass [
	^ YAMLScannerState
]

{ #category : #generated }
YAMLScanner >> tokenActions [
	^ #(#newline nil nil nil nil nil nil nil #DOCUMENTSTART1 #DOCUMENTEND1 nil nil nil nil nil nil nil nil nil nil nil #SKIP1 nil #comment #STRING_MY_2 #SKIP2 #newline_str_literal #STRING_MY_3)
]
