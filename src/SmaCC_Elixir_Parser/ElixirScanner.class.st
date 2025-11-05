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
	self recordMatch: #(32).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan10 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan13 ].
	currentCharacter == $\ ifTrue: [ ^ self scan12 ].
	^ self scan11
]

{ #category : #generated }
ElixirScanner >> scan11 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $\ ifTrue: [ ^ self scan12 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan12 [
	self step.
	^ self scan11
]

{ #category : #generated }
ElixirScanner >> scan13 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan14 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan16 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan15 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan16 ].
					^ self scan15 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan16 ].
			^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan15 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan16 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan16 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan16 ].
			^ self scan15 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan15
]

{ #category : #generated }
ElixirScanner >> scan17 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(50).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan17 ].
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan18 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan20 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan19 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan2 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan6 ].
	currentCharacter == $# ifTrue: [ ^ self scan4 ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
ElixirScanner >> scan20 [
	[ self recordMatch: #(50).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan19 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan21 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan17 ].
	currentCharacter == $_ ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan23X10 ].
	currentCharacter == $" ifTrue: [ ^ self scan25 ].
	currentCharacter == $& ifTrue: [ ^ self scan23X14 ].
	currentCharacter == $' ifTrue: [ ^ self scan23X5 ].
	currentCharacter == $+ ifTrue: [ ^ self scan23X9 ].
	currentCharacter == $- ifTrue: [ ^ self scan23X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan23X12 ].
	currentCharacter == $: ifTrue: [ ^ self scan23X2 ].
	currentCharacter == $< ifTrue: [ ^ self scan23X1 ].
	^ self scan23X15
]

{ #category : #generated }
ElixirScanner >> scan23X1 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $<
		ifTrue: [ self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			^ self reportLastMatch ].
	currentCharacter == $| ifTrue: [ ^ self scan26 ].
	currentCharacter == $~ ifTrue: [ ^ self scan27 ].
	(currentCharacter == $- or: [ currentCharacter between: $= and: $> ])
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X10 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X11 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X12 [
	self step.
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X13 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X14 [
	(self scanForString: '&&' match: #(18))
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X15 [
	currentCharacter == $= ifTrue: [ ^ self scan23X4 ].
	currentCharacter == $> ifTrue: [ ^ self scan23X3 ].
	currentCharacter == $\ ifTrue: [ ^ self scan23X11 ].
	currentCharacter == $^ ifTrue: [ ^ self scan23X7 ].
	currentCharacter == $| ifTrue: [ ^ self scan23X6 ].
	currentCharacter == $~ ifTrue: [ ^ self scan23X13 ].
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
ElixirScanner >> scan23X2 [
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
ElixirScanner >> scan23X3 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X4 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan24 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X5 [
	self step.
	currentCharacter ~~ $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X6 [
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
ElixirScanner >> scan23X7 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X8 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23X9 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan25 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan25 ].
	currentCharacter <= $! or: [ currentCharacter >= $$ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan26 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan27 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan28 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan29 [
	[ self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan3 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
			^ self reportLastMatch ].
	currentCharacter == $# ifTrue: [ ^ self scan4 ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan30 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan31 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $# ifTrue: [ ^ self scan32 ].
	currentCharacter == $\ ifTrue: [ ^ self scan33 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan32 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan33 [
	self step.
	^ self scan31
]

{ #category : #generated }
ElixirScanner >> scan34 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan28 ].
	currentCharacter == $~ ifTrue: [ ^ self scan34X2 ].
	(currentCharacter between: $A and: $Z) ifTrue: [ ^ self scan35 ].
	(currentCharacter between: $a and: $z)
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan34X1 ].
			currentCharacter == $' ifTrue: [ ^ self scan48 ].
			currentCharacter == $( ifTrue: [ ^ self scan50 ].
			currentCharacter == $/ ifTrue: [ ^ self scan52 ].
			currentCharacter == $< ifTrue: [ ^ self scan54 ].
			currentCharacter == $[ ifTrue: [ ^ self scan56 ].
			currentCharacter == ${ ifTrue: [ ^ self scan58 ].
			currentCharacter == $| ifTrue: [ ^ self scan60 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan34X1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan36 ].
	currentCharacter == $\ ifTrue: [ ^ self scan46 ].
	^ self scan45
]

{ #category : #generated }
ElixirScanner >> scan34X2 [
	self step.
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan35 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan36 ].
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
	currentCharacter == $' ifTrue: [ ^ self scan40 ].
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
ElixirScanner >> scan36 [
	self recordMatch: #(54).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan37 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan37 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan39 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan38 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan39 ].
					^ self scan38 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan39 ].
			^ self scan38 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan38 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan39 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan39 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan39 ].
			^ self scan38 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan38
]

{ #category : #generated }
ElixirScanner >> scan4 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan40 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan41 ].
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
ElixirScanner >> scan41 [
	self recordMatch: #(54).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan42 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan42 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan44 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan43 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan44 ].
					^ self scan43 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan44 ].
			^ self scan43 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan43 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan44 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan44 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan44 ].
			^ self scan43 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan43
]

{ #category : #generated }
ElixirScanner >> scan45 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan46 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan46 [
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
						ifTrue: [ ^ self scan47 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan47 ].
	^ self scan45
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
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan45 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan48 [
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
	^ self scan3
]

{ #category : #generated }
ElixirScanner >> scan50 [
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
								ifTrue: [ ^ self scan55 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan55 ].
			^ self scan54 ].
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
	currentCharacter == $]
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
	currentCharacter == $}
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
	self recordMatch: #(22).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan7 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan60 [
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
								ifTrue: [ ^ self scan61 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan61 ].
			^ self scan60 ].
	currentCharacter == $|
		ifTrue: [ [ self recordMatch: #(54).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
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

{ #category : #generated }
ElixirScanner >> scan7 [
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
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan9 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan8 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan9 ].
					^ self scan8 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan9 ].
			^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan8 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan9 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan9 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan9 ].
			^ self scan8 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan8
]

{ #category : #generated }
ElixirScanner >> scanForToken [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == Character cr ifTrue: [ ^ self scanForTokenX21 ].
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX20 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $# ifTrue: [ ^ self scanForTokenX8 ].
	^ self scanForTokenX26
]

{ #category : #generated }
ElixirScanner >> scanForTokenX1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan17 ].
	currentCharacter == $_ ifTrue: [ ^ self scan22 ].
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
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX10 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan1 ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX11 [
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
ElixirScanner >> scanForTokenX12 [
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
ElixirScanner >> scanForTokenX13 [
	self recordMatch: #(53).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX14 [
	self recordMatch: #(46 48).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX15 [
	self recordMatch: #(29).
	self step.
	currentCharacter == ${
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(30) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX16 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX17 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(44) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX18 [
	self recordMatch: #(46 48).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX19 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(40) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX2 [
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
					('!?' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
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
						ifTrue: [ ^ self scan29 ].
					^ self reportLastMatch ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX20 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX21 [
	self recordMatch: #(28).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX22 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX23 [
	self step.
	currentCharacter == $\ ifTrue: [ self step ].
	^ self recordAndReportMatch: #(51)
]

{ #category : #generated }
ElixirScanner >> scanForTokenX24 [
	currentCharacter == $o ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $} ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $~ ifTrue: [ ^ self scan34 ].
	currentCharacter isDigit ifTrue: [ ^ self scan21 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scanForTokenX16 ].
	(currentCharacter between: $* and: $/)
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter isUppercase ifTrue: [ ^ self scanForTokenX7 ].
	(currentCharacter isLowercase or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX25 [
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $? ifTrue: [ ^ self scanForTokenX23 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $\ ifTrue: [ ^ self scanForTokenX22 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $a ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $i ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $n ifTrue: [ ^ self scanForTokenX2 ].
	^ self scanForTokenX24
]

{ #category : #generated }
ElixirScanner >> scanForTokenX26 [
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter == $' ifTrue: [ ^ self scan10 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $: ifTrue: [ ^ self scan23 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(4 58) ].
	^ self scanForTokenX25
]

{ #category : #generated }
ElixirScanner >> scanForTokenX3 [
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
	currentCharacter == $~ ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX4 [
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
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX5 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(39 55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX6 [
	self recordMatch: #(55 59).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(43 55 59).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(56) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan30 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX7 [
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
ElixirScanner >> scanForTokenX8 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX9 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $# ifTrue: [ ^ self scan32 ].
	currentCharacter == $\ ifTrue: [ ^ self scan33 ].
	^ self scan31
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
