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
	#(#(23 '---' 9) #(23 '...' 10))
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
	^ 96
]

{ #category : #private }
YAMLScanner >> DOCUMENTEND1 [
	^ self recordAndReportMatch: {self DOCUMENTENDId}
]

{ #category : #generated }
YAMLScanner >> DOCUMENTENDId [
	^ 97
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
	^ 98
]

{ #category : #generated }
YAMLScanner >> FINISH_LITERAL_STRINGId [
	^ 99
]

{ #category : #generated }
YAMLScanner >> INDENTId [
	^ 100
]

{ #category : #generated }
YAMLScanner >> MINUSId [
	^ 8
]

{ #category : #generated }
YAMLScanner >> NEWLINEId [
	^ 101
]

{ #category : #generated }
YAMLScanner >> NEWLINE_STR_LITERALId [
	^ 102
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
	^ 25
]

{ #category : #generated }
YAMLScanner >> STRING_MYId [
	^ 23
]

{ #category : #private }
YAMLScanner >> STRING_MY_2 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : #private }
YAMLScanner >> STRING_MY_3 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : #generated }
YAMLScanner >> TAGId [
	^ 21
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
	^ 103
]

{ #category : #generated }
YAMLScanner >> errorTokenId [
	^ 104
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
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $! ifTrue: [ ^ self scan7 ].
	currentCharacter == $" ifTrue: [ ^ self scan8 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $' ifTrue: [ ^ self scan11 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scan1X8
]

{ #category : #generated }
YAMLScanner >> scan10 [
	self recordMatch: #(19).
	self step.
	(currentCharacter == Character tab
		or: [ currentCharacter between: Character pageUp and: Character newPage ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ]) ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan11 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan13 ].
	currentCharacter == $' ifTrue: [ ^ self scan15 ].
	currentCharacter == $: ifTrue: [ ^ self scan16 ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan12 ].
	(('",' includes: currentCharacter)
		or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan14 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan12 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan15 ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	('-:' includes: currentCharacter) ifTrue: [ ^ self scan16 ].
	currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	(currentCharacter == Character tab
		or: [ (currentCharacter between: $" and: $#)
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan14 ].
	^ self scan11
]

{ #category : #generated }
YAMLScanner >> scan13 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $' ifTrue: [ ^ self scan15 ].
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan13 ].
			currentCharacter == $' ifTrue: [ ^ self scan15 ].
			currentCharacter == $: ] whileTrue.
			currentCharacter == $\ ifTrue: [ ^ self scan17 ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan12 ].
			^ self scan11 ].
	currentCharacter == $: ifTrue: [ ^ self scan16 ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan12 ].
	(('#,' includes: currentCharacter)
		or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan14 ].
	^ self scan11
]

{ #category : #generated }
YAMLScanner >> scan14 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan14 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan15 [
	self recordMatch: #(27 33).
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
YAMLScanner >> scan16 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan15 ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ])
		ifTrue: [ ^ self scan14 ].
	^ self scan11
]

{ #category : #generated }
YAMLScanner >> scan17 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan13 ].
	currentCharacter == $: ifTrue: [ ^ self scan16 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan12 ].
	('",[]{}' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	^ self scan11
]

{ #category : #generated }
YAMLScanner >> scan18 [
	[ self recordMatch: #(6 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan18X1
]

{ #category : #generated }
YAMLScanner >> scan18X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
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
YAMLScanner >> scan19 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	^ self scan19X2
]

{ #category : #generated }
YAMLScanner >> scan19X1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan20 ].
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
YAMLScanner >> scan19X2 [
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan20 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan19X1 ].
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
YAMLScanner >> scan1X1 [
	[ self recordMatch: #(2 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan1X1X1
]

{ #category : #generated }
YAMLScanner >> scan1X1X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
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
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan18 ].
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
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan10 ].
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
	^ self scan9
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
	[ self recordMatch: #(26).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X6 [
	[ self recordMatch: #(28).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X7 [
	self recordMatch: #(28).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan1X8 [
	currentCharacter == $- ifTrue: [ ^ self scan5 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $0 ifTrue: [ ^ self scan22 ].
	currentCharacter == $: ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan24 ].
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
	[ self recordMatch: #(27).
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
	[ self recordMatch: #(6 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan20X1
]

{ #category : #generated }
YAMLScanner >> scan20X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
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
	self recordMatch: #(7 27).
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
YAMLScanner >> scan22 [
	self recordMatch: #(2 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $0 ifTrue: [ ^ self scan22X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan22X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	^ self scan22X5
]

{ #category : #generated }
YAMLScanner >> scan22X1 [
	[ self recordMatch: #(2 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $0 ] whileTrue.
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	^ self scan22X1X1
]

{ #category : #generated }
YAMLScanner >> scan22X1X1 [
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
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
YAMLScanner >> scan22X2 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 27).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan4 ].
			currentCharacter == $: ifTrue: [ ^ self scan5 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self scan22X2X1
]

{ #category : #generated }
YAMLScanner >> scan22X2X1 [
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
YAMLScanner >> scan22X3 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 27).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan4 ].
			currentCharacter == $: ifTrue: [ ^ self scan5 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	^ self scan22X3X1
]

{ #category : #generated }
YAMLScanner >> scan22X3X1 [
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
YAMLScanner >> scan22X4 [
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
YAMLScanner >> scan22X5 [
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan22X2 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan4 ].
			currentCharacter == $: ifTrue: [ ^ self scan5 ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan3 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 27).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan4 ].
					currentCharacter == $: ifTrue: [ ^ self scan5 ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan3 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self scan22X4
]

{ #category : #generated }
YAMLScanner >> scan23 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan23X1
]

{ #category : #generated }
YAMLScanner >> scan23X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
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
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character tab ] whileTrue.
	^ self scan24X2
]

{ #category : #generated }
YAMLScanner >> scan24X1 [
	[ self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan24 ].
	currentCharacter == Character lf ifTrue: [ ^ self scan25 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan26 ].
	currentCharacter == Character space ] whileTrue.
	^ self scan24X1X1
]

{ #category : #generated }
YAMLScanner >> scan24X1X1 [
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
YAMLScanner >> scan24X2 [
	currentCharacter == Character lf ifTrue: [ ^ self scan25 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan26 ].
	currentCharacter == Character space ifTrue: [ ^ self scan24X1 ].
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
YAMLScanner >> scan25 [
	self recordMatch: #(28).
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
YAMLScanner >> scan26 [
	self recordMatch: #(28).
	^ self scan26X1
]

{ #category : #generated }
YAMLScanner >> scan26X1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan25 ].
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
YAMLScanner >> scan27 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan27X18 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan27X16 ].
	currentCharacter == $! ifTrue: [ ^ self scan27X11 ].
	currentCharacter == $" ifTrue: [ ^ self scan8 ].
	currentCharacter == $# ifTrue: [ ^ self scan27X15 ].
	currentCharacter == $% ifTrue: [ ^ self scan27X3 ].
	currentCharacter == $& ifTrue: [ ^ self scan27X14 ].
	currentCharacter == $' ifTrue: [ ^ self scan32 ].
	currentCharacter == $* ifTrue: [ ^ self scan27X13 ].
	currentCharacter == $, ifTrue: [ ^ self scan27X8 ].
	currentCharacter == $- ifTrue: [ ^ self scan27X12 ].
	currentCharacter == $. ifTrue: [ ^ self scan27X5 ].
	currentCharacter == $0 ifTrue: [ ^ self scan41 ].
	^ self scan27X19
]

{ #category : #generated }
YAMLScanner >> scan27X1 [
	[ self recordMatch: #(2 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $. ifTrue: [ ^ self scan37 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X10 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X11 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X12 [
	self recordMatch: #(8).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X13 [
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ])
		ifTrue: [ [ self recordMatch: #(22).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X14 [
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
YAMLScanner >> scan27X15 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X16 [
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
YAMLScanner >> scan27X17 [
	[ self recordMatch: #(24 25).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X18 [
	[ self recordMatch: #(1).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X19 [
	currentCharacter == $: ifTrue: [ ^ self scan27X10 ].
	currentCharacter == $> ifTrue: [ ^ self scan27X2 ].
	currentCharacter == $? ifTrue: [ ^ self scan27X9 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan46 ].
	currentCharacter == $] ifTrue: [ ^ self scan27X7 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scan27X4 ].
	currentCharacter == $} ifTrue: [ ^ self scan27X6 ].
	currentCharacter isDigit ifTrue: [ ^ self scan27X1 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan27X17 ].
	^ self scan28
]

{ #category : #generated }
YAMLScanner >> scan27X2 [
	self recordMatch: #(18 23).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan43 ].
	currentCharacter == Character space ifTrue: [ ^ self scan44 ].
	currentCharacter == $# ifTrue: [ ^ self scan45 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ self recordMatch: #(18 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan44 ].
			currentCharacter == $# ifTrue: [ ^ self scan45 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			(currentCharacter == Character tab or: [ '+-' includes: currentCharacter ])
				ifTrue: [ ^ self scan43 ].
			(currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan28 ].
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(18 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan44 ].
			currentCharacter == $# ifTrue: [ ^ self scan45 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			(currentCharacter == Character tab
				or: [ currentCharacter between: $1 and: $9 ]) ifTrue: [ ^ self scan43 ] ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X3 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter == $T
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan29 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			currentCharacter == $A
				ifTrue: [ self recordMatch: #(23).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan29 ].
					currentCharacter == $: ifTrue: [ ^ self scan30 ].
					currentCharacter == $G ifTrue: [ ^ self scan31 ] ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X4 [
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
				ifTrue: [ ^ self scan48 ].
			^ self reportLastMatch ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan48 ].
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
						or: [ currentCharacter between: $1 and: $9 ] ]) ifTrue: [ ^ self scan48 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X5 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ifTrue: [ ^ self scan37 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X6 [
	self recordMatch: #(16 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X7 [
	self recordMatch: #(14 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X8 [
	self recordMatch: #(11 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan27X9 [
	self recordMatch: #(32).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan28 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan29 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $")
						or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ] ] ])
		ifTrue: [ ^ self scan28 ].
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
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan31 [
	[ self recordMatch: #(20 23).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self recordMatch: #(20).
			self step.
			currentCharacter == Character space ] whileTrue.
			('#:' includes: currentCharacter)
				ifTrue: [ [ self recordMatch: #(20).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter == $:
		ifTrue: [ self recordMatch: #(20).
			self step.
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space or: [ currentCharacter == $# ] ])
				ifTrue: [ [ self recordMatch: #(20).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan32 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan33 ].
	currentCharacter == $' ifTrue: [ ^ self scan34 ].
	currentCharacter == $: ifTrue: [ ^ self scan35 ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan14 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan33 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $' ifTrue: [ ^ self scan34 ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ '#:' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan14 ].
	^ self scan32
]

{ #category : #generated }
YAMLScanner >> scan34 [
	self recordMatch: #(23 33).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan35 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan34 ].
	currentCharacter == $\ ifTrue: [ ^ self scan36 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space or: [ currentCharacter == $# ] ] ])
		ifTrue: [ ^ self scan14 ].
	^ self scan32
]

{ #category : #generated }
YAMLScanner >> scan36 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan33 ].
	currentCharacter == $: ifTrue: [ ^ self scan35 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan14 ].
	^ self scan32
]

{ #category : #generated }
YAMLScanner >> scan37 [
	[ self recordMatch: #(6 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan38 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ifTrue: [ ^ self scan39 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan29 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			currentCharacter isDigit ifTrue: [ ^ self scan39 ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan39 [
	[ self recordMatch: #(6 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ] whileTrue.
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
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
	self recordMatch: #(7 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan41 [
	self recordMatch: #(2 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $. ifTrue: [ ^ self scan37 ].
	currentCharacter == $0 ifTrue: [ ^ self scan41X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ifTrue: [ ^ self scan42 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan41X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan40 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan41X2 ].
	^ self scan41X4
]

{ #category : #generated }
YAMLScanner >> scan41X1 [
	[ self recordMatch: #(2 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $. ifTrue: [ ^ self scan37 ].
	currentCharacter == $0 ] whileTrue.
	^ self scan41X1X1
]

{ #category : #generated }
YAMLScanner >> scan41X1X1 [
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ifTrue: [ ^ self scan42 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan41X2 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan29 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan41X3 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan29 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan41X4 [
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan29 ].
			currentCharacter == $: ifTrue: [ ^ self scan30 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 23).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan29 ].
					currentCharacter == $: ifTrue: [ ^ self scan30 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan42 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan29 ].
	currentCharacter == $. ifTrue: [ ^ self scan37 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan38 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan43 [
	[ self recordMatch: #(18 23).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character space ifTrue: [ ^ self scan44 ].
	currentCharacter == $# ifTrue: [ ^ self scan45 ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan44 [
	[ self recordMatch: #(18).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan43 ].
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
						or: [ currentCharacter >= $; ] ] ]) ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan45 [
	[ self recordMatch: #(18 23).
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
				ifTrue: [ ^ self scan45 ].
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
				ifTrue: [ ^ self scan45 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan46 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan47 ].
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character tab ifTrue: [ ^ self scan46 ].
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			currentCharacter == Character cr ifTrue: [ ^ self scan47 ].
			currentCharacter == Character space ] whileTrue.
			(currentCharacter <= $"
				or: [ (currentCharacter between: $$ and: $9) or: [ currentCharacter >= $; ] ])
				ifTrue: [ ^ self scan28 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan30 ].
	^ self scan28
]

{ #category : #generated }
YAMLScanner >> scan47 [
	self recordMatch: #(24).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan48 [
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
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ] whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	^ self scan2
]

{ #category : #generated }
YAMLScanner >> scan7 [
	[ self recordMatch: #(21 27).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan2 ].
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan7X1 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('"[]{}' includes: currentCharacter) ifTrue: [ ^ self scan7X2 ].
	currentCharacter <= $+ or: [ currentCharacter >= $- ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan7X1 [
	self recordMatch: #(21).
	self step.
	(currentCharacter == Character tab or: [ currentCharacter == $, ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan7X2 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
YAMLScanner >> scan8 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan8 ].
	true ] whileTrue
]

{ #category : #generated }
YAMLScanner >> scan9 [
	[ self recordMatch: #(19 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan10 ].
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
YAMLScanner >> scanForToken [
	scope == #LITERAL_STRING
		ifTrue: [ self recordMatch: #(30).
			self step.
			currentCharacter == Character lf
				ifTrue: [ [ self recordMatch: #(29).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character space ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == Character cr
				ifTrue: [ self recordMatch: #(29).
					self step.
					((currentCharacter between: Character tab and: Character lf)
						or: [ currentCharacter == Character space ])
						ifTrue: [ [ self recordMatch: #(29).
							self step.
							currentCharacter == Character tab
								or: [ currentCharacter == Character space ] ] whileTrue ].
					^ self reportLastMatch ].
			true
				ifTrue: [ [ self recordMatch: #(30).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	scope == #default ifTrue: [ ^ self scan27 ].
	scope == #FLOW ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #private }
YAMLScanner >> scanString [
	| string pos |
	pos := stream position + 1.
	string := stream upToAny: String crlf.
	^ SmaCCToken
		value: string
		start: pos
		ids: {self STRING_MYId}
]

{ #category : #accessing }
YAMLScanner >> stateClass [
	^ YAMLScannerState
]

{ #category : #generated }
YAMLScanner >> tokenActions [
	^ #(#newline nil nil nil nil nil nil nil #DOCUMENTSTART1 #DOCUMENTEND1 nil nil nil nil nil nil nil nil nil nil nil nil nil #SKIP1 nil #comment #STRING_MY_2 #SKIP2 #newline_str_literal #STRING_MY_3)
]
