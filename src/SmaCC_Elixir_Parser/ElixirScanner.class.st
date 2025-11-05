Class {
	#name : #ElixirScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'lastWasEol'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #'generated-initialization' }
ElixirScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(55 'do' 9) #(55 'end' 10) #(55 'false' 11) #(55 'fn' 12) #(55 'nil' 13) #(55 'true' 14) #(55 'when' 33) #(59 'do' 9) #(59 'end' 10) #(59 'false' 11) #(59 'fn' 12) #(59 'nil' 13) #(59 'true' 14) #(59 'when' 33))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
ElixirScanner >> aliasId [
	^ 57
]

{ #category : #generated }
ElixirScanner >> block_identifierId [
	^ 59
]

{ #category : #generated }
ElixirScanner >> bracket_identifierId [
	^ 154
]

{ #category : #accessing }
ElixirScanner >> currentState [
	| state |
	state := super currentState.
	state attributeNamed: #lastWasEol put: self lastWasEol.
	^ state
]

{ #category : #generated }
ElixirScanner >> do_identifierId [
	^ 155
]

{ #category : #private }
ElixirScanner >> dot_call_op [
	stream position: stream position - 1.
	^ self createTokenFor: '.'
]

{ #category : #generated }
ElixirScanner >> dot_call_opId [
	^ 60
]

{ #category : #generated }
ElixirScanner >> dot_opId [
	^ 53
]

{ #category : #generated }
ElixirScanner >> dual_opId [
	^ 46
]

{ #category : #generated }
ElixirScanner >> emptySymbolTokenId [
	^ 158
]

{ #category : #private }
ElixirScanner >> eol [
	lastWasEol := true.
	^ self whitespace
]

{ #category : #generated }
ElixirScanner >> eolId [
	^ 28
]

{ #category : #generated }
ElixirScanner >> errorTokenId [
	^ 159
]

{ #category : #generated }
ElixirScanner >> identifierId [
	^ 55
]

{ #category : #generated }
ElixirScanner >> interpolatedStringEndId [
	^ 21
]

{ #category : #generated }
ElixirScanner >> interpolatedStringMidId [
	^ 20
]

{ #category : #private }
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

{ #category : #generated }
ElixirScanner >> kw_identifierId [
	^ 56
]

{ #category : #accessing }
ElixirScanner >> lastWasEol [
	^ lastWasEol
]

{ #category : #accessing }
ElixirScanner >> lastWasEol: anObject [
	lastWasEol := anObject
]

{ #category : #generated }
ElixirScanner >> map_opId [
	^ 30
]

{ #category : #accessing }
ElixirScanner >> next [
	lastWasEol := false.
	^ super next
]

{ #category : #generated }
ElixirScanner >> op_identifierId [
	^ 156
]

{ #category : #generated }
ElixirScanner >> paren_identifierId [
	^ 157
]

{ #category : #accessing }
ElixirScanner >> restoreState: aSmaCCScannerState [
	super restoreState: aSmaCCScannerState.
	self lastWasEol: (aSmaCCScannerState attributeNamed: #lastWasEol)
]

{ #category : #generated }
ElixirScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X20 ].
	currentCharacter == $! ifTrue: [ ^ self scan1X19 ].
	currentCharacter == $" ifTrue: [ ^ self scan3 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X8 ].
	^ self scan1X25
]

{ #category : #generated }
ElixirScanner >> scan10 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan10 ].
			^ self scan9 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan9
]

{ #category : #generated }
ElixirScanner >> scan11 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	currentCharacter == $\ ifTrue: [ ^ self scan13 ].
	^ self scan12
]

{ #category : #generated }
ElixirScanner >> scan12 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $\ ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan13 [
	self step.
	^ self scan12
]

{ #category : #generated }
ElixirScanner >> scan14 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan15 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan17 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan16 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan17 ].
					^ self scan16 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan17 ].
			^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan16 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan17 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan17 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan17 ].
			^ self scan16 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan16
]

{ #category : #generated }
ElixirScanner >> scan18 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(50).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan18 ].
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan19 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $_ ifTrue: [ ^ self scan23 ].
	currentCharacter == $b
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
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
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
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

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan1X12 [
	self recordMatch: #(53).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X13 [
	self recordMatch: #(46 48).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X14 [
	self recordMatch: #(29).
	self step.
	currentCharacter == ${
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(30) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X15 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X16 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(44) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X17 [
	self recordMatch: #(46 48).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X18 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(40) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X19 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
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
					('!?' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
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
						ifTrue: [ ^ self scan30 ].
					^ self reportLastMatch ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X20 [
	self recordMatch: #(28).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X21 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X22 [
	self step.
	currentCharacter == $\ ifTrue: [ self step ].
	^ self recordAndReportMatch: #(51)
]

{ #category : #generated }
ElixirScanner >> scan1X23 [
	currentCharacter == $o ifTrue: [ ^ self scan1X5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $~ ifTrue: [ ^ self scan32 ].
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X15 ].
	(currentCharacter between: $* and: $/)
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter isUppercase ifTrue: [ ^ self scan1X7 ].
	(currentCharacter isLowercase or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan1X25 [
	currentCharacter == $% ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X18 ].
	currentCharacter == $' ifTrue: [ ^ self scan11 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan24 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(4 58) ].
	^ self scan1X24
]

{ #category : #generated }
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
	currentCharacter == $~ ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
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
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X5 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(39 55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X6 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(43 55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan1X8 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan1X9 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan2 ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan2 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan20 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan21 [
	[ self recordMatch: #(50).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $_ ifTrue: [ ^ self scan23 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan24X10 ].
	currentCharacter == $" ifTrue: [ ^ self scan26 ].
	currentCharacter == $& ifTrue: [ ^ self scan24X14 ].
	currentCharacter == $' ifTrue: [ ^ self scan24X5 ].
	currentCharacter == $+ ifTrue: [ ^ self scan24X9 ].
	currentCharacter == $- ifTrue: [ ^ self scan24X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan24X12 ].
	currentCharacter == $: ifTrue: [ ^ self scan24X2 ].
	currentCharacter == $< ifTrue: [ ^ self scan24X1 ].
	^ self scan24X15
]

{ #category : #generated }
ElixirScanner >> scan24X1 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $<
		ifTrue: [ self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			^ self reportLastMatch ].
	currentCharacter == $| ifTrue: [ ^ self scan27 ].
	currentCharacter == $~ ifTrue: [ ^ self scan28 ].
	(currentCharacter == $- or: [ currentCharacter between: $= and: $> ])
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X10 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan25 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X11 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X12 [
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X13 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X14 [
	(self scanForString: '&&' match: #(18))
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X15 [
	currentCharacter == $= ifTrue: [ ^ self scan24X4 ].
	currentCharacter == $> ifTrue: [ ^ self scan24X3 ].
	currentCharacter == $\ ifTrue: [ ^ self scan24X11 ].
	currentCharacter == $^ ifTrue: [ ^ self scan24X7 ].
	currentCharacter == $| ifTrue: [ ^ self scan24X6 ].
	currentCharacter == $~ ifTrue: [ ^ self scan24X13 ].
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

{ #category : #generated }
ElixirScanner >> scan24X2 [
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

{ #category : #generated }
ElixirScanner >> scan24X3 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X4 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan25 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X5 [
	self step.
	currentCharacter ~~ $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X6 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(18).
			self step.
			currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X7 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X8 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24X9 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan25 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan26 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan26 ].
	currentCharacter <= $! or: [ currentCharacter >= $$ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan27 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan28 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan29 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan3 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan7 ].
	currentCharacter == $# ifTrue: [ ^ self scan5 ].
	currentCharacter == $\ ifTrue: [ ^ self scan6 ].
	^ self scan4
]

{ #category : #generated }
ElixirScanner >> scan30 [
	[ self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan31 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan31 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan32 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan29 ].
	currentCharacter == $~ ifTrue: [ ^ self scan32X2 ].
	(currentCharacter between: $A and: $Z) ifTrue: [ ^ self scan33 ].
	(currentCharacter between: $a and: $z)
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan32X1 ].
			currentCharacter == $' ifTrue: [ ^ self scan46 ].
			currentCharacter == $( ifTrue: [ ^ self scan48 ].
			currentCharacter == $/ ifTrue: [ ^ self scan50 ].
			currentCharacter == $< ifTrue: [ ^ self scan52 ].
			currentCharacter == $[ ifTrue: [ ^ self scan54 ].
			currentCharacter == ${ ifTrue: [ ^ self scan56 ].
			currentCharacter == $| ifTrue: [ ^ self scan58 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan32X1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan34 ].
	currentCharacter == $\ ifTrue: [ ^ self scan44 ].
	^ self scan43
]

{ #category : #generated }
ElixirScanner >> scan32X2 [
	self step.
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan33 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan34 ].
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
	currentCharacter == $' ifTrue: [ ^ self scan38 ].
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

{ #category : #generated }
ElixirScanner >> scan34 [
	self recordMatch: #(54).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan35 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan35 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan37 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan36 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan37 ].
					^ self scan36 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan37 ].
			^ self scan36 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan36 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan37 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan37 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan37 ].
			^ self scan36 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan36
]

{ #category : #generated }
ElixirScanner >> scan38 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan39 ].
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

{ #category : #generated }
ElixirScanner >> scan39 [
	self recordMatch: #(54).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan40 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan4 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
			^ self reportLastMatch ].
	currentCharacter == $# ifTrue: [ ^ self scan5 ].
	currentCharacter == $\ ifTrue: [ ^ self scan6 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan40 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan42 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan41 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan42 ].
					^ self scan41 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan42 ].
			^ self scan41 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan41 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan42 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan42 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan42 ].
			^ self scan41 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan41
]

{ #category : #generated }
ElixirScanner >> scan43 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan44 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan44 [
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
						ifTrue: [ ^ self scan45 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan45 ].
	^ self scan43
]

{ #category : #generated }
ElixirScanner >> scan45 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan43 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan46 [
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
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan47 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan47 ].
			^ self scan46 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan47 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan46 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan48 [
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
			^ self scan48 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan49 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan48 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan5 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan50 [
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

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan52 [
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

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan54 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
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
	currentCharacter == $]
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan56 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
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
	currentCharacter == $}
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan58 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
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
	currentCharacter == $|
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan6 [
	self step.
	^ self scan4
]

{ #category : #generated }
ElixirScanner >> scan60 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $#
		ifTrue: [ self step.
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(20) ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan60 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan7 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan8 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan8 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan10 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan9 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan10 ].
					^ self scan9 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan10 ].
			^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan9 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan10 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #interpolatedString
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan60 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> semicolonId [
	^ 58
]

{ #category : #generated }
ElixirScanner >> stringId [
	^ 22
]

{ #category : #generated }
ElixirScanner >> struct_opId [
	^ 29
]

{ #category : #generated }
ElixirScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment #eol nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #kw_identifier nil nil nil #dot_call_op)
]

{ #category : #generated }
ElixirScanner >> unary_opId [
	^ 48
]
