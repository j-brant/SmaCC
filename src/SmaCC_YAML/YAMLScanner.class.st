Class {
	#name : 'YAMLScanner',
	#superclass : 'SmaCCScanner',
	#instVars : [
		'opened',
		'indents',
		'tokens',
		'documentStringLiteral'
	],
	#category : 'SmaCC_YAML-Parser',
	#package : 'SmaCC_YAML',
	#tag : 'Parser'
}

{ #category : 'generated-initialization' }
YAMLScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(23 '---' 9) #(23 '...' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
YAMLScanner >> COLONId [
	^ 12
]

{ #category : 'generated' }
YAMLScanner >> DEDENTId [
	^ 102
]

{ #category : 'private' }
YAMLScanner >> DOCUMENTEND1 [
	matchActions := {(start = 0
				or: [ String crlf includes: (self peekAt: start - 1) ])
				ifTrue: [ self DOCUMENTENDId ]
				ifFalse: [ self STRING_MYId ]}.
	^ self createTokenFor: outputStream contents
]

{ #category : 'generated' }
YAMLScanner >> DOCUMENTENDId [
	^ 103
]

{ #category : 'private' }
YAMLScanner >> DOCUMENTSTART1 [
	matchActions := {(start = 0
				or: [ String crlf includes: (self peekAt: start - 1) ])
				ifTrue: [ self DOCUMENTSTARTId ]
				ifFalse: [ self STRING_MYId ]}.
	^ self createTokenFor: outputStream contents
]

{ #category : 'generated' }
YAMLScanner >> DOCUMENTSTARTId [
	^ 104
]

{ #category : 'generated' }
YAMLScanner >> FINISH_LITERAL_STRINGId [
	^ 105
]

{ #category : 'generated' }
YAMLScanner >> INDENTId [
	^ 106
]

{ #category : 'generated' }
YAMLScanner >> MINUSId [
	^ 8
]

{ #category : 'generated' }
YAMLScanner >> NEWLINEId [
	^ 107
]

{ #category : 'generated' }
YAMLScanner >> NEWLINE_STR_LITERALId [
	^ 108
]

{ #category : 'private' }
YAMLScanner >> SKIP1 [
	| indent |
	start = 0
		ifTrue: [ (currentCharacter = Character cr
				or: [ currentCharacter = Character lf or: [ currentCharacter = $# ] ])
				ifFalse: [ indent := self indentsFor: outputStream contents.
					indent > self currentIndent
						ifTrue: [ indents := indents asLinkPrepend: indent ] ] ].
	^ self whitespace
]

{ #category : 'private' }
YAMLScanner >> SKIP2 [
	^ self whitespace
]

{ #category : 'generated' }
YAMLScanner >> SPACESId [
	^ 25
]

{ #category : 'generated' }
YAMLScanner >> STRING_MYId [
	^ 23
]

{ #category : 'private' }
YAMLScanner >> STRING_MY_2 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : 'private' }
YAMLScanner >> STRING_MY_3 [
	^ self recordAndReportMatch: {self STRING_MYId}
]

{ #category : 'generated' }
YAMLScanner >> TAGId [
	^ 21
]

{ #category : 'private' }
YAMLScanner >> currentIndent [
	^ indents value
]

{ #category : 'private' }
YAMLScanner >> currentState [
	| state |
	state := super currentState.
	state opened: opened.
	state indents: indents.
	state tokens: tokens.
	state documentStringLiteral: documentStringLiteral.
	^ state
]

{ #category : 'accessing' }
YAMLScanner >> documentStringLiteral [
	^ documentStringLiteral
]

{ #category : 'accessing' }
YAMLScanner >> documentStringLiteral: anObject [
	documentStringLiteral := anObject
]

{ #category : 'generated' }
YAMLScanner >> emptySymbolTokenId [
	^ 109
]

{ #category : 'generated' }
YAMLScanner >> errorTokenId [
	^ 110
]

{ #category : 'private' }
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

{ #category : 'private' }
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

{ #category : 'initialize-release' }
YAMLScanner >> initialize [
	super initialize.
	indents := 0 asLink.
	opened := 0.
	documentStringLiteral := false
]

{ #category : 'private' }
YAMLScanner >> newline [
	| dedentToken indent |
	(currentCharacter = Character cr
		or: [ currentCharacter = Character lf or: [ currentCharacter = $# ] ])
		ifFalse: [ opened > 0
				ifFalse: [ indent := self indentsFor: outputStream contents.
					indent > self currentIndent
						ifTrue: [ tokens := (SmaCCToken
									value: ''
									start: matchEnd
									ids: {self INDENTId}) asLink.
							indents := indents asLinkPrepend: indent ]
						ifFalse: [ [ indent < self currentIndent ]
								whileTrue: [ indents := indents nextLink.
									self currentIndent < indent
										ifTrue: [ indents := indents asLinkPrepend: indent ]
										ifFalse: [ dedentToken := SmaCCToken
													value: ''
													start: matchEnd
													ids: {self DEDENTId}.
											tokens := tokens
													ifNil: [ dedentToken asLink ]
													ifNotNil: [ tokens asLinkPrepend: dedentToken ] ] ] ] ] ].
	^ self recordAndReportMatch: {self NEWLINEId}
]

{ #category : 'private' }
YAMLScanner >> newline_str_literal [
	| indent spaceCount |
	(opened > 0
		or: [ currentCharacter = Character cr
				or: [ currentCharacter = Character lf or: [ currentCharacter = $# ] ] ])
		ifFalse: [ indent := self currentIndent.
			spaceCount := self indentsFor: outputStream contents.
			(documentStringLiteral not and: [ spaceCount <= indent ])
				ifTrue: [ stream position: start.
					^ SmaCCToken
						value: ''
						start: start + 1
						ids: {self FINISH_LITERAL_STRINGId} ] ].
	^ self recordAndReportMatch: {self NEWLINE_STR_LITERALId}
]

{ #category : 'private' }
YAMLScanner >> next [
	| token |
	tokens
		ifNotNil: [ token := tokens value.
			tokens := tokens nextLink.
			^ token ].
	^ super next
]

{ #category : 'accessing' }
YAMLScanner >> opened [
	^ opened
]

{ #category : 'accessing' }
YAMLScanner >> opened: anObject [
	opened := anObject
]

{ #category : 'private' }
YAMLScanner >> popIndent [
	indents := indents nextLink ifNil: [ indents ]
]

{ #category : 'private' }
YAMLScanner >> pushIndent: anInteger [
	indents := indents asLinkPrepend: anInteger
]

{ #category : 'private' }
YAMLScanner >> restoreState: aSmaCCScannerState [
	super restoreState: aSmaCCScannerState.
	opened := aSmaCCScannerState opened.
	indents := aSmaCCScannerState indents.
	tokens := aSmaCCScannerState tokens.
	documentStringLiteral := aSmaCCScannerState documentStringLiteral
]

{ #category : 'generated' }
YAMLScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $! ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $" ifTrue: [ ^ self scan16 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $' ifTrue: [ ^ self scan19 ].
	currentCharacter == $* ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scan1X10
]

{ #category : 'generated' }
YAMLScanner >> scan10 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan11 ].
	currentCharacter == $: ifTrue: [ ^ self scan13 ].
	currentCharacter == $> ifTrue: [ ^ self scan14 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('",[]{}' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	true ] whileTrue
]

{ #category : 'generated' }
YAMLScanner >> scan11 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan11 ].
			currentCharacter == $: ] whileTrue.
			currentCharacter == $> ifTrue: [ ^ self scan14 ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan3 ].
			^ self scan10 ].
	currentCharacter == $: ifTrue: [ ^ self scan13 ].
	currentCharacter == $> ifTrue: [ ^ self scan14 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('#,[]{}' includes: currentCharacter) ifTrue: [ ^ self scan12 ].
	^ self scan10
]

{ #category : 'generated' }
YAMLScanner >> scan12 [
	[ self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan13 [
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan12 ].
	currentCharacter == $> ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan14 [
	self recordMatch: #(21 27).
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

{ #category : 'generated' }
YAMLScanner >> scan15 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter == $>
		ifTrue: [ [ self recordMatch: #(21).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
								or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space or: [ currentCharacter == $, ] ])
		ifTrue: [ ^ self scan12 ].
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan16 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan16 ].
	true ] whileTrue
]

{ #category : 'generated' }
YAMLScanner >> scan17 [
	[ self recordMatch: #(19 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan18 ].
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

{ #category : 'generated' }
YAMLScanner >> scan18 [
	self recordMatch: #(19).
	self step.
	(currentCharacter == Character tab
		or: [ currentCharacter between: Character pageUp and: Character newPage ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ]) ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan19 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan21 ].
	currentCharacter == $' ifTrue: [ ^ self scan23 ].
	currentCharacter == $: ifTrue: [ ^ self scan24 ].
	currentCharacter == $\ ifTrue: [ ^ self scan25 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan20 ].
	(('",' includes: currentCharacter)
		or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan22 ].
	true ] whileTrue
]

{ #category : 'generated' }
YAMLScanner >> scan1X1 [
	[ self recordMatch: #(2 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan1X1X1
]

{ #category : 'generated' }
YAMLScanner >> scan1X10 [
	currentCharacter == $- ifTrue: [ ^ self scan5 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $0 ifTrue: [ ^ self scan32 ].
	currentCharacter == $: ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan34 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X1 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X8 ].
	^ self scan2
]

{ #category : 'generated' }
YAMLScanner >> scan1X1X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan29 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X2 [
	self recordMatch: #(27).
	^ self scan1X2X2
]

{ #category : 'generated' }
YAMLScanner >> scan1X2X1 [
	[ self recordMatch: #(22).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $+)
						or: [ (currentCharacter between: $- and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X2X2 [
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $" ifTrue: [ ^ self scan1X2X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan27 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter <= $+
		or: [ (currentCharacter between: $- and: $Z)
				or: [ currentCharacter == $\
						or: [ (currentCharacter between: $^ and: $z)
								or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X3 [
	self recordMatch: #(21 27).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan2 ].
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	currentCharacter == $< ifTrue: [ ^ self scan9 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('"[]{}' includes: currentCharacter) ifTrue: [ ^ self scan1X3X1 ].
	(currentCharacter <= $+ or: [ currentCharacter >= $- ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X3X1 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X4 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan28 ].
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

{ #category : 'generated' }
YAMLScanner >> scan1X5 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan18 ].
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
	^ self scan17
]

{ #category : 'generated' }
YAMLScanner >> scan1X6 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X7 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X8 [
	[ self recordMatch: #(28).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan1X9 [
	self recordMatch: #(28).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
YAMLScanner >> scan20 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan23 ].
	currentCharacter == $\ ifTrue: [ ^ self scan25 ].
	('-:' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
	currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	(currentCharacter == Character tab
		or: [ (currentCharacter between: $" and: $#)
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self scan19
]

{ #category : 'generated' }
YAMLScanner >> scan21 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $' ifTrue: [ ^ self scan23 ].
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan21 ].
			currentCharacter == $' ifTrue: [ ^ self scan23 ].
			currentCharacter == $: ] whileTrue.
			currentCharacter == $\ ifTrue: [ ^ self scan25 ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan20 ].
			^ self scan19 ].
	currentCharacter == $: ifTrue: [ ^ self scan24 ].
	currentCharacter == $\ ifTrue: [ ^ self scan25 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan20 ].
	(('#,' includes: currentCharacter)
		or: [ (currentCharacter between: $[ and: $]) or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan22 ].
	^ self scan19
]

{ #category : 'generated' }
YAMLScanner >> scan22 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(33).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan22 ].
	true ] whileTrue
]

{ #category : 'generated' }
YAMLScanner >> scan23 [
	self recordMatch: #(27 33).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $' ifTrue: [ ^ self scan19 ].
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

{ #category : 'generated' }
YAMLScanner >> scan24 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan23 ].
	currentCharacter == $\ ifTrue: [ ^ self scan25 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ])
		ifTrue: [ ^ self scan22 ].
	^ self scan19
]

{ #category : 'generated' }
YAMLScanner >> scan25 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan21 ].
	currentCharacter == $: ifTrue: [ ^ self scan24 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan20 ].
	('",[]{}' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self scan19
]

{ #category : 'generated' }
YAMLScanner >> scan26 [
	[ self recordMatch: #(22 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $" ifTrue: [ ^ self scan26X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan27 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan2 ].
	currentCharacter <= $+
		or: [ (currentCharacter between: $- and: $Z)
				or: [ currentCharacter == $\
						or: [ (currentCharacter between: $^ and: $z)
								or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan26X1 [
	[ self recordMatch: #(22).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $+)
						or: [ (currentCharacter between: $- and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan27 [
	self recordMatch: #(22).
	self step.
	(currentCharacter == Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ ',[]{}' includes: currentCharacter ] ]) ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ currentCharacter >= $! ] ]) ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan28 [
	[ self recordMatch: #(6 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan28X1
]

{ #category : 'generated' }
YAMLScanner >> scan28X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan29 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan29 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	^ self scan29X2
]

{ #category : 'generated' }
YAMLScanner >> scan29X1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan30 ].
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

{ #category : 'generated' }
YAMLScanner >> scan29X2 [
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan30 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan29X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $*)
				or: [ (currentCharacter between: $. and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
YAMLScanner >> scan30 [
	[ self recordMatch: #(6 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan30X1
]

{ #category : 'generated' }
YAMLScanner >> scan30X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan31 [
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

{ #category : 'generated' }
YAMLScanner >> scan32 [
	self recordMatch: #(2 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan28 ].
	currentCharacter == $0 ifTrue: [ ^ self scan32X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan33 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan32X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan29 ].
	^ self scan32X5
]

{ #category : 'generated' }
YAMLScanner >> scan32X1 [
	[ self recordMatch: #(2 27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan28 ].
	currentCharacter == $0 ] whileTrue.
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	^ self scan32X1X1
]

{ #category : 'generated' }
YAMLScanner >> scan32X1X1 [
	currentCharacter isDigit ifTrue: [ ^ self scan33 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan29 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan32X2 [
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
	^ self scan32X2X1
]

{ #category : 'generated' }
YAMLScanner >> scan32X2X1 [
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

{ #category : 'generated' }
YAMLScanner >> scan32X3 [
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
	^ self scan32X3X1
]

{ #category : 'generated' }
YAMLScanner >> scan32X3X1 [
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

{ #category : 'generated' }
YAMLScanner >> scan32X4 [
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan32X5 [
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan32X2 ].
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
	^ self scan32X4
]

{ #category : 'generated' }
YAMLScanner >> scan33 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $. ifTrue: [ ^ self scan28 ].
	currentCharacter == $: ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan33X1
]

{ #category : 'generated' }
YAMLScanner >> scan33X1 [
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan29 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $+)
				or: [ (currentCharacter between: $- and: $Z)
						or: [ currentCharacter == $\
								or: [ (currentCharacter between: $^ and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan34 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character tab ] whileTrue.
	^ self scan34X2
]

{ #category : 'generated' }
YAMLScanner >> scan34X1 [
	[ self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan34 ].
	currentCharacter == Character lf ifTrue: [ ^ self scan35 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan36 ].
	currentCharacter == Character space ] whileTrue.
	^ self scan34X1X1
]

{ #category : 'generated' }
YAMLScanner >> scan34X1X1 [
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

{ #category : 'generated' }
YAMLScanner >> scan34X2 [
	currentCharacter == Character lf ifTrue: [ ^ self scan35 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan36 ].
	currentCharacter == Character space ifTrue: [ ^ self scan34X1 ].
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

{ #category : 'generated' }
YAMLScanner >> scan35 [
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

{ #category : 'generated' }
YAMLScanner >> scan36 [
	self recordMatch: #(28).
	^ self scan36X1
]

{ #category : 'generated' }
YAMLScanner >> scan36X1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan35 ].
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

{ #category : 'generated' }
YAMLScanner >> scan37 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan37X18 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan37X16 ].
	currentCharacter == $! ifTrue: [ ^ self scan37X7 ].
	currentCharacter == $" ifTrue: [ ^ self scan16 ].
	currentCharacter == $# ifTrue: [ ^ self scan37X15 ].
	currentCharacter == $% ifTrue: [ ^ self scan37X3 ].
	currentCharacter == $& ifTrue: [ ^ self scan37X14 ].
	currentCharacter == $' ifTrue: [ ^ self scan43 ].
	currentCharacter == $* ifTrue: [ ^ self scan37X4 ].
	currentCharacter == $, ifTrue: [ ^ self scan37X10 ].
	currentCharacter == $- ifTrue: [ ^ self scan37X13 ].
	currentCharacter == $. ifTrue: [ ^ self scan37X6 ].
	currentCharacter == $0 ifTrue: [ ^ self scan52 ].
	^ self scan37X19
]

{ #category : 'generated' }
YAMLScanner >> scan37X1 [
	[ self recordMatch: #(2 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $. ifTrue: [ ^ self scan48 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan49 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan51 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X10 [
	self recordMatch: #(11 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X11 [
	self recordMatch: #(32).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X12 [
	self recordMatch: #(12).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X13 [
	self recordMatch: #(8).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X14 [
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

{ #category : 'generated' }
YAMLScanner >> scan37X15 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X16 [
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

{ #category : 'generated' }
YAMLScanner >> scan37X17 [
	[ self recordMatch: #(24 25).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X18 [
	[ self recordMatch: #(1).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X19 [
	currentCharacter == $: ifTrue: [ ^ self scan37X12 ].
	currentCharacter == $> ifTrue: [ ^ self scan37X2 ].
	currentCharacter == $? ifTrue: [ ^ self scan37X11 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $\ ifTrue: [ ^ self scan58 ].
	currentCharacter == $] ifTrue: [ ^ self scan37X9 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scan37X5 ].
	currentCharacter == $} ifTrue: [ ^ self scan37X8 ].
	currentCharacter isDigit ifTrue: [ ^ self scan37X1 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan37X17 ].
	^ self scan38
]

{ #category : 'generated' }
YAMLScanner >> scan37X2 [
	self recordMatch: #(18 23).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan54 ].
	currentCharacter == Character space ifTrue: [ ^ self scan55 ].
	currentCharacter == $# ifTrue: [ ^ self scan56 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ self recordMatch: #(18 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan55 ].
			currentCharacter == $# ifTrue: [ ^ self scan56 ].
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			(currentCharacter == Character tab or: [ '+-' includes: currentCharacter ])
				ifTrue: [ ^ self scan54 ].
			(currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan38 ].
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(18 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan55 ].
			currentCharacter == $# ifTrue: [ ^ self scan56 ].
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			(currentCharacter == Character tab
				or: [ currentCharacter between: $1 and: $9 ]) ifTrue: [ ^ self scan54 ] ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X3 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan41 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X4 [
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $+)
						or: [ (currentCharacter between: $- and: $Z)
								or: [ currentCharacter == $\
										or: [ (currentCharacter between: $^ and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(22).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $+)
								or: [ (currentCharacter between: $- and: $Z)
										or: [ currentCharacter == $\
												or: [ (currentCharacter between: $^ and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X5 [
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
				ifTrue: [ ^ self scan60 ].
			^ self reportLastMatch ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan60 ].
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
						or: [ currentCharacter between: $1 and: $9 ] ]) ifTrue: [ ^ self scan60 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X6 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ifTrue: [ ^ self scan48 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X7 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $< ifTrue: [ ^ self scan15 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ])
		ifTrue: [ [ self recordMatch: #(21).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
								or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X8 [
	self recordMatch: #(16 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan37X9 [
	self recordMatch: #(14 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan38 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan39 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $")
						or: [ currentCharacter >= $$ ] ] ]) ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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

{ #category : 'generated' }
YAMLScanner >> scan40 [
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $") or: [ currentCharacter >= $$ ] ] ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan41 [
	[ self recordMatch: #(20 23).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self recordMatch: #(20).
			self step.
			currentCharacter == Character space ] whileTrue.
			currentCharacter == $#
				ifTrue: [ [ self recordMatch: #(20).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == $: ifTrue: [ ^ self scan42 ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan41 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan42 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan42 [
	self recordMatch: #(20).
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
		ifTrue: [ ^ self scan41 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan43 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan44 ].
	currentCharacter == $' ifTrue: [ ^ self scan45 ].
	currentCharacter == $: ifTrue: [ ^ self scan46 ].
	currentCharacter == $\ ifTrue: [ ^ self scan47 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan22 ].
	true ] whileTrue
]

{ #category : 'generated' }
YAMLScanner >> scan44 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $' ifTrue: [ ^ self scan45 ].
	currentCharacter == $: ifTrue: [ ^ self scan46 ].
	currentCharacter == $\ ifTrue: [ ^ self scan47 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == $# ] ])
		ifTrue: [ ^ self scan22 ].
	^ self scan43
]

{ #category : 'generated' }
YAMLScanner >> scan45 [
	self recordMatch: #(23 33).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $' ifTrue: [ ^ self scan43 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan46 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan45 ].
	currentCharacter == $\ ifTrue: [ ^ self scan47 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space or: [ currentCharacter == $# ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self scan43
]

{ #category : 'generated' }
YAMLScanner >> scan47 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan44 ].
	currentCharacter == $: ifTrue: [ ^ self scan46 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan22 ].
	^ self scan43
]

{ #category : 'generated' }
YAMLScanner >> scan48 [
	[ self recordMatch: #(6 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan49 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan51 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan49 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ifTrue: [ ^ self scan50 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan39 ].
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			currentCharacter isDigit ifTrue: [ ^ self scan50 ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan5 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ currentCharacter >= $! ] ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan50 [
	[ self recordMatch: #(6 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ] whileTrue.
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan51 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan51 [
	self recordMatch: #(7 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan52 [
	self recordMatch: #(2 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $. ifTrue: [ ^ self scan48 ].
	currentCharacter == $0 ifTrue: [ ^ self scan52X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ifTrue: [ ^ self scan53 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan52X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan49 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan51 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan52X2 ].
	^ self scan52X4
]

{ #category : 'generated' }
YAMLScanner >> scan52X1 [
	[ self recordMatch: #(2 23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $. ifTrue: [ ^ self scan48 ].
	currentCharacter == $0 ] whileTrue.
	^ self scan52X1X1
]

{ #category : 'generated' }
YAMLScanner >> scan52X1X1 [
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ifTrue: [ ^ self scan53 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan49 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan51 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan52X2 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(3 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan39 ].
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan52X3 [
	self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(5 23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan39 ].
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan52X4 [
	('Xx' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == Character space ifTrue: [ ^ self scan39 ].
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(4 23).
					self step.
					currentCharacter == Character space ifTrue: [ ^ self scan39 ].
					currentCharacter == $: ifTrue: [ ^ self scan40 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan53 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan39 ].
	currentCharacter == $. ifTrue: [ ^ self scan48 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan49 ].
	('Jj' includes: currentCharacter) ifTrue: [ ^ self scan51 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan54 [
	[ self recordMatch: #(18 23).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character space ifTrue: [ ^ self scan55 ].
	currentCharacter == $# ifTrue: [ ^ self scan56 ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan55 [
	[ self recordMatch: #(18).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan54 ].
	currentCharacter == Character space ] whileTrue.
	currentCharacter == $#
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan56 [
	[ self recordMatch: #(18 23).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			currentCharacter == Character space ] whileTrue.
			currentCharacter == $#
				ifTrue: [ [ self recordMatch: #(18).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == $: ifTrue: [ ^ self scan57 ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan56 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan57 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan57 [
	self recordMatch: #(18).
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
		ifTrue: [ ^ self scan56 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan58 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character tab ] whileTrue.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan59 ].
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character tab ifTrue: [ ^ self scan58 ].
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			currentCharacter == Character cr ifTrue: [ ^ self scan59 ].
			currentCharacter == Character space ] whileTrue.
			currentCharacter == $: ifTrue: [ ^ self scan40 ].
			(currentCharacter <= $" or: [ currentCharacter >= $$ ])
				ifTrue: [ ^ self scan38 ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self scan40 ].
	^ self scan38
]

{ #category : 'generated' }
YAMLScanner >> scan59 [
	self recordMatch: #(24).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan6 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ] whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	^ self scan2
]

{ #category : 'generated' }
YAMLScanner >> scan60 [
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

{ #category : 'generated' }
YAMLScanner >> scan7 [
	[ self recordMatch: #(21 27).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan2 ].
	currentCharacter == Character space ifTrue: [ ^ self scan4 ].
	currentCharacter == $: ifTrue: [ ^ self scan8 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('"[]{}' includes: currentCharacter) ifTrue: [ ^ self scan7X1 ].
	currentCharacter <= $+ or: [ currentCharacter >= $- ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan7X1 [
	[ self recordMatch: #(21).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $+) or: [ currentCharacter >= $- ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
YAMLScanner >> scan8 [
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

{ #category : 'generated' }
YAMLScanner >> scan9 [
	[ self recordMatch: #(21 27).
	self step.
	currentCharacter == Character tab ifTrue: [ ^ self scan10 ].
	currentCharacter == Character space ifTrue: [ ^ self scan11 ].
	currentCharacter == $, ifTrue: [ ^ self scan12 ].
	currentCharacter == $: ifTrue: [ ^ self scan9X1 ].
	currentCharacter == $> ifTrue: [ ^ self scan7 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan3 ].
	('"[]{}' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	true ] whileTrue
]

{ #category : 'generated' }
YAMLScanner >> scan9X1 [
	self recordMatch: #(21).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan12 ].
	currentCharacter == $> ifTrue: [ ^ self scan7 ].
	(currentCharacter == Character tab or: [ currentCharacter == $, ])
		ifTrue: [ ^ self scan10 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
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
	scope == #default ifTrue: [ ^ self scan37 ].
	scope == #FLOW ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'private' }
YAMLScanner >> scanString [
	| string pos |
	pos := stream position + 1.
	string := stream upToAny: String crlf.
	^ SmaCCToken
		value: string
		start: pos
		ids: {self STRING_MYId}
]

{ #category : 'private' }
YAMLScanner >> setIndent: anInteger [
	indents := anInteger asLink
]

{ #category : 'accessing' }
YAMLScanner >> stateClass [
	^ YAMLScannerState
]

{ #category : 'generated' }
YAMLScanner >> tokenActions [
	^ #(#newline nil nil nil nil nil nil nil #DOCUMENTSTART1 #DOCUMENTEND1 nil nil nil nil nil nil nil nil nil nil nil nil nil #SKIP1 nil #comment #STRING_MY_2 #SKIP2 #newline_str_literal #STRING_MY_3)
]
