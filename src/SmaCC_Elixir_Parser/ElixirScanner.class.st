Class {
	#name : 'ElixirScanner',
	#superclass : 'SmaCCScanner',
	#instVars : [
		'lastWasEol'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated-initialization' }
ElixirScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(55 'do' 9) #(55 'end' 10) #(55 'false' 11) #(55 'fn' 12) #(55 'nil' 13) #(55 'true' 14) #(55 'when' 33) #(59 'do' 9) #(59 'end' 10) #(59 'false' 11) #(59 'fn' 12) #(59 'nil' 13) #(59 'true' 14) #(59 'when' 33))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
ElixirScanner >> aliasId [
	^ 57
]

{ #category : 'generated' }
ElixirScanner >> block_identifierId [
	^ 59
]

{ #category : 'generated' }
ElixirScanner >> bracket_identifierId [
	^ 154
]

{ #category : 'accessing' }
ElixirScanner >> currentState [
	| state |
	state := super currentState.
	state attributeNamed: #lastWasEol put: self lastWasEol.
	^ state
]

{ #category : 'private' }
ElixirScanner >> dot_call_op [
	stream position: stream position - 1.
	^ self createTokenFor: '.'
]

{ #category : 'generated' }
ElixirScanner >> dot_call_opId [
	^ 60
]

{ #category : 'generated' }
ElixirScanner >> dot_opId [
	^ 53
]

{ #category : 'generated' }
ElixirScanner >> do_identifierId [
	^ 155
]

{ #category : 'generated' }
ElixirScanner >> dual_opId [
	^ 46
]

{ #category : 'generated' }
ElixirScanner >> emptySymbolTokenId [
	^ 158
]

{ #category : 'private' }
ElixirScanner >> eol [
	lastWasEol := true.
	^ self whitespace
]

{ #category : 'generated' }
ElixirScanner >> eolId [
	^ 28
]

{ #category : 'generated' }
ElixirScanner >> errorTokenId [
	^ 159
]

{ #category : 'generated' }
ElixirScanner >> identifierId [
	^ 55
]

{ #category : 'generated' }
ElixirScanner >> interpolatedStringEndId [
	^ 21
]

{ #category : 'generated' }
ElixirScanner >> interpolatedStringMidId [
	^ 20
]

{ #category : 'private' }
ElixirScanner >> kw_identifier [
	| string |
	string := outputStream contents.
	stream peek == $:
		ifTrue: [ stream position: stream position - 1.
			matchActions := string first isUppercase
				ifTrue: [ {self aliasId} ]
				ifFalse: [ string first = $"
						ifTrue: [ {self stringId} ]
						ifFalse: [ {self identifierId} ] ] ].
	^ self createTokenFor: string
]

{ #category : 'generated' }
ElixirScanner >> kw_identifierId [
	^ 56
]

{ #category : 'accessing' }
ElixirScanner >> lastWasEol [
	^ lastWasEol
]

{ #category : 'accessing' }
ElixirScanner >> lastWasEol: anObject [
	lastWasEol := anObject
]

{ #category : 'generated' }
ElixirScanner >> map_opId [
	^ 30
]

{ #category : 'accessing' }
ElixirScanner >> next [
	lastWasEol := false.
	^ super next
]

{ #category : 'generated' }
ElixirScanner >> op_identifierId [
	^ 156
]

{ #category : 'generated' }
ElixirScanner >> paren_identifierId [
	^ 157
]

{ #category : 'accessing' }
ElixirScanner >> restoreState: aSmaCCScannerState [
	super restoreState: aSmaCCScannerState.
	self lastWasEol: (aSmaCCScannerState attributeNamed: #lastWasEol)
]

{ #category : 'generated' }
ElixirScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X20 ].
	currentCharacter == $! ifTrue: [ ^ self scan1X19 ].
	currentCharacter == $" ifTrue: [ ^ self scan3 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X8 ].
	^ self scan1X25
]

{ #category : 'generated' }
ElixirScanner >> scan10 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan12 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan11 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan12 ].
					^ self scan11 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan12 ].
			^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan11 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan12 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan12 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan12 ].
			^ self scan11 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan11
]

{ #category : 'generated' }
ElixirScanner >> scan13 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan16 ].
	currentCharacter == $\ ifTrue: [ ^ self scan15 ].
	^ self scan14
]

{ #category : 'generated' }
ElixirScanner >> scan14 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $\ ifTrue: [ ^ self scan15 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan15 [
	self step.
	^ self scan14
]

{ #category : 'generated' }
ElixirScanner >> scan16 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan17 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter == $'
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan19 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan18 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan19 ].
					^ self scan18 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan19 ].
			^ self scan18 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan18 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan19 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan19 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan19 ].
			^ self scan18 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan18
]

{ #category : 'generated' }
ElixirScanner >> scan1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan20 ].
	currentCharacter == $_ ifTrue: [ ^ self scan25 ].
	currentCharacter == $b ifTrue: [ ^ self scan26 ].
	currentCharacter == $o ifTrue: [ ^ self scan27 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X10 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(35 42) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(39) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X11 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(6).
			self step.
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X12 [
	self recordMatch: #(53).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X13 [
	self recordMatch: #(46 48).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X14 [
	self recordMatch: #(29).
	self step.
	currentCharacter == ${
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(30) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X15 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X16 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(44) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X17 [
	self recordMatch: #(46 48).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X18 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(40) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X19 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X2 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(48 55 59).
					self step.
					currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
					('!?' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
					(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
						ifTrue: [ [ self step.
							currentCharacter == $i
								ifTrue: [ self step.
									currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(43) ].
									^ self reportLastMatch ].
							currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
								whileTrue.
							^ self reportLastMatch ].
					(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
						ifTrue: [ ^ self scan34 ].
					^ self reportLastMatch ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X20 [
	self recordMatch: #(28).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X21 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X22 [
	self step.
	currentCharacter == $\ ifTrue: [ self step ].
	^ self recordAndReportMatch: #(51)
]

{ #category : 'generated' }
ElixirScanner >> scan1X23 [
	currentCharacter == $o ifTrue: [ ^ self scan1X5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $~ ifTrue: [ ^ self scan36 ].
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X15 ].
	(currentCharacter between: $* and: $/)
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter isUppercase ifTrue: [ ^ self scan1X7 ].
	(currentCharacter isLowercase or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X24 [
	currentCharacter == $< ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $? ifTrue: [ ^ self scan1X22 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $\ ifTrue: [ ^ self scan1X21 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $^ ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $a ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $i ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $n ifTrue: [ ^ self scan1X2 ].
	^ self scan1X23
]

{ #category : 'generated' }
ElixirScanner >> scan1X25 [
	currentCharacter == $% ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X18 ].
	currentCharacter == $' ifTrue: [ ^ self scan13 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan28 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(4 58) ].
	^ self scan1X24
]

{ #category : 'generated' }
ElixirScanner >> scan1X3 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(5).
			self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $|
		ifTrue: [ self step.
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter == $~ ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X4 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
			currentCharacter == $d
				ifTrue: [ self recordMatch: #(40 55 59).
					self step.
					currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X5 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(39 55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X6 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(43 55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X7 [
	[ self recordMatch: #(57).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	('!?' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(57).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
			^ self reportLastMatch ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X8 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X9 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan2 ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan2 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan20 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(50).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan20 ].
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan21 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan21 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan22 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan23 [
	[ self recordMatch: #(50).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan24 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan20 ].
	currentCharacter == $_ ifTrue: [ ^ self scan25 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan25 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan26 [
	self step.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(17).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan26 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan27 [
	self step.
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(17).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan27 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan28X10 ].
	currentCharacter == $" ifTrue: [ ^ self scan30 ].
	currentCharacter == $& ifTrue: [ ^ self scan28X14 ].
	currentCharacter == $' ifTrue: [ ^ self scan28X5 ].
	currentCharacter == $+ ifTrue: [ ^ self scan28X9 ].
	currentCharacter == $- ifTrue: [ ^ self scan28X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan28X12 ].
	currentCharacter == $: ifTrue: [ ^ self scan28X2 ].
	currentCharacter == $< ifTrue: [ ^ self scan28X1 ].
	^ self scan28X15
]

{ #category : 'generated' }
ElixirScanner >> scan28X1 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $<
		ifTrue: [ self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			^ self reportLastMatch ].
	currentCharacter == $| ifTrue: [ ^ self scan31 ].
	currentCharacter == $~ ifTrue: [ ^ self scan32 ].
	(currentCharacter == $- or: [ currentCharacter between: $= and: $> ])
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X10 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X11 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X12 [
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X13 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan32 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X14 [
	(self scanForString: '&&' match: #(18))
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X15 [
	currentCharacter == $= ifTrue: [ ^ self scan28X4 ].
	currentCharacter == $> ifTrue: [ ^ self scan28X3 ].
	currentCharacter == $\ ifTrue: [ ^ self scan28X11 ].
	currentCharacter == $^ ifTrue: [ ^ self scan28X7 ].
	currentCharacter == $| ifTrue: [ ^ self scan28X6 ].
	currentCharacter == $~ ifTrue: [ ^ self scan28X13 ].
	('*/' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			('!?' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			currentCharacter isAlphaNumeric or: [ '@_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X2 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X3 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X4 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan29 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X5 [
	self step.
	currentCharacter ~~ $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X6 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(18).
			self step.
			currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X7 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X8 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28X9 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan3 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan9 ].
	currentCharacter == $# ifTrue: [ ^ self scan6 ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	^ self scan4
]

{ #category : 'generated' }
ElixirScanner >> scan30 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $#
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			(currentCharacter <= $z or: [ currentCharacter >= $| ])
				ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan30 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan31 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan32 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan33 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan34 [
	[ self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan35 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan36 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan33 ].
	currentCharacter == $~ ifTrue: [ ^ self scan36X2 ].
	(currentCharacter between: $A and: $Z) ifTrue: [ ^ self scan37 ].
	(currentCharacter between: $a and: $z)
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan36X1 ].
			currentCharacter == $' ifTrue: [ ^ self scan50 ].
			currentCharacter == $( ifTrue: [ ^ self scan52 ].
			currentCharacter == $/ ifTrue: [ ^ self scan54 ].
			currentCharacter == $< ifTrue: [ ^ self scan56 ].
			currentCharacter == $[ ifTrue: [ ^ self scan58 ].
			currentCharacter == ${ ifTrue: [ ^ self scan60 ].
			currentCharacter == $| ifTrue: [ ^ self scan62 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan36X1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan38 ].
	currentCharacter == $\ ifTrue: [ ^ self scan48 ].
	^ self scan47
]

{ #category : 'generated' }
ElixirScanner >> scan36X2 [
	self step.
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan37 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan38 ].
			true
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ [ self recordMatch: #(54).
							self step.
							(currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] whileTrue.
							^ self reportLastMatch ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $' ifTrue: [ ^ self scan42 ].
	currentCharacter == $(
		ifTrue: [ [ self step.
			currentCharacter == $)
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $/
		ifTrue: [ [ self step.
			currentCharacter == $/
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $<
		ifTrue: [ [ self step.
			currentCharacter == $>
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $[
		ifTrue: [ [ self step.
			currentCharacter == $]
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == ${
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $|
		ifTrue: [ [ self step.
			currentCharacter == $|
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan38 [
	self recordMatch: #(54).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan39 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan39 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan41 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan40 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan41 ].
					^ self scan40 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan41 ].
			^ self scan40 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan4 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan5 ].
	currentCharacter == $# ifTrue: [ ^ self scan6 ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan40 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan41 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan41 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan41 ].
			^ self scan40 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan40
]

{ #category : 'generated' }
ElixirScanner >> scan42 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan43 ].
	true
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan43 [
	self recordMatch: #(54).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan44 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan44 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter == $'
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan46 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan45 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan46 ].
					^ self scan45 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan46 ].
			^ self scan45 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan45 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan46 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan46 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan46 ].
			^ self scan45 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan45
]

{ #category : 'generated' }
ElixirScanner >> scan47 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan48 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan48 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			currentCharacter == ${
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
												ifTrue: [ self step.
													currentCharacter == $} ifTrue: [ ^ self scan47 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step ].
															currentCharacter == $} ifTrue: [ ^ self scan47 ] ] ] ] ] ].
					^ self reportLastMatch ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan49 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan49 ].
	^ self scan47
]

{ #category : 'generated' }
ElixirScanner >> scan49 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan47 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan5 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan50 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan50 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan50 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan51 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan51 ].
			^ self scan50 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan51 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan50 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan52 [
	[ self step.
	currentCharacter == $)
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan52 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan52 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan53 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan53 ].
			^ self scan52 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan53 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan52 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan54 [
	[ self step.
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan54 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan54 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan55 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan55 ].
			^ self scan54 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan55 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan54 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan56 [
	[ self step.
	currentCharacter == $>
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan56 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan56 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan57 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan57 ].
			^ self scan56 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan57 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan56 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan58 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan58 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan58 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan59 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan59 ].
			^ self scan58 ].
	currentCharacter == $]
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan59 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan58 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan6 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self scan7
]

{ #category : 'generated' }
ElixirScanner >> scan60 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan60 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan60 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan61 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan61 ].
			^ self scan60 ].
	currentCharacter == $}
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan61 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan60 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan62 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
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
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan62 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan62 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan63 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan63 ].
			^ self scan62 ].
	currentCharacter == $|
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan63 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan62 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan64 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $#
		ifTrue: [ self step.
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(20) ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan64 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan7 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan5 ].
	currentCharacter == $#
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan5 ].
			(currentCharacter <= $z or: [ currentCharacter >= $| ])
				ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan7 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan8 [
	self step.
	^ self scan4
]

{ #category : 'generated' }
ElixirScanner >> scan9 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan10 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #interpolatedString
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan64 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> semicolonId [
	^ 58
]

{ #category : 'generated' }
ElixirScanner >> stringId [
	^ 22
]

{ #category : 'generated' }
ElixirScanner >> struct_opId [
	^ 29
]

{ #category : 'generated' }
ElixirScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment #eol nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #kw_identifier nil nil nil #dot_call_op)
]

{ #category : 'generated' }
ElixirScanner >> unary_opId [
	^ 48
]
