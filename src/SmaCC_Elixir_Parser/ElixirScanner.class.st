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
	#(#(52 'do' 9) #(52 'end' 10) #(52 'false' 11) #(52 'fn' 12) #(52 'nil' 13) #(52 'true' 14) #(52 'when' 30))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
ElixirScanner >> aliasId [
	^ 54
]

{ #category : #generated }
ElixirScanner >> block_identifierId [
	^ 146
]

{ #category : #generated }
ElixirScanner >> bracket_identifierId [
	^ 147
]

{ #category : #generated }
ElixirScanner >> do_identifierId [
	^ 148
]

{ #category : #generated }
ElixirScanner >> dot_call_opId [
	^ 149
]

{ #category : #generated }
ElixirScanner >> dot_opId [
	^ 50
]

{ #category : #generated }
ElixirScanner >> emptySymbolTokenId [
	^ 152
]

{ #category : #private }
ElixirScanner >> eol [
	lastWasEol := true.
	^ self whitespace
]

{ #category : #generated }
ElixirScanner >> eolId [
	^ 25
]

{ #category : #generated }
ElixirScanner >> errorTokenId [
	^ 153
]

{ #category : #generated }
ElixirScanner >> identifierId [
	^ 52
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
	^ 53
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
	^ 27
]

{ #category : #accessing }
ElixirScanner >> next [
	lastWasEol := false.
	^ super next
]

{ #category : #generated }
ElixirScanner >> op_identifierId [
	^ 150
]

{ #category : #generated }
ElixirScanner >> paren_identifierId [
	^ 151
]

{ #category : #generated }
ElixirScanner >> scan1 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan10 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan11 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan11 [
	self step.
	^ self scan10
]

{ #category : #generated }
ElixirScanner >> scan12 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan13 [
	[ self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter == $'
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ])
								ifTrue: [ ^ self scan15 ].
							(currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ (currentCharacter between: (Character value: 14) and: $&)
												or: [ currentCharacter >= $( ] ] ])
								ifTrue: [ ^ self scan14 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf
						or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan15 ].
					^ self scan14 ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan15 ].
			^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan14 [
	[ self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan15 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan15 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ ^ self recordAndReportMatch: #(22) ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan15 ].
			^ self scan14 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self scan14
]

{ #category : #generated }
ElixirScanner >> scan16 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(47).
			self step.
			currentCharacter == $_
				ifTrue: [ ^ self scan16 ].
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter)
				ifTrue: [ ^ self scan17 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan17 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan18 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan19 [
	[ self recordMatch: #(47).
	self step.
	currentCharacter == $_
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan2 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
ElixirScanner >> scan20 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $_
		ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan21 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22 [
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scan22X10 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scan22X13 ].
	currentCharacter == $'
		ifTrue:
			[ ^ self scan22X5 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scan22X9 ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan22X8 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan22X12 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan22X2 ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scan22X1 ].
	^ self scan22X15
]

{ #category : #generated }
ElixirScanner >> scan22X1 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $<
		ifTrue: [ self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			^ self reportLastMatch ].
	currentCharacter == $|
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $~
		ifTrue: [ ^ self scan26 ].
	(currentCharacter == $- or: [ currentCharacter between: $= and: $> ])
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X10 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X11 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X12 [
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X13 [
	self recordMatch: #(18).
	(self scanForString: '&&')
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X14 [
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X15 [
	currentCharacter == $=
		ifTrue:
			[ ^ self scan22X4 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scan22X3 ].
	currentCharacter == $\
		ifTrue:
			[ ^ self scan22X11 ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scan22X7 ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scan22X6 ].
	currentCharacter == $~
		ifTrue:
			[ ^ self scan22X14 ].
	('*/' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			('!?' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			currentCharacter isAlphaNumeric
				or: [ '@_' includes: currentCharacter ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X2 [
	self recordMatch: #(31).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self recordAndReportMatch: #(18) ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X3 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $>
		ifTrue: [ ^ self scan25 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X4 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X5 [
	self step.
	currentCharacter ~~ $'
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X6 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(18).
			self step.
			currentCharacter == $|
				ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X7 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^
				ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X8 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan22X9 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan23 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan24 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan24 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan25 [
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan26 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan27 [
	self recordMatch: #(39).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan28 [
	[ self recordMatch: #(52).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	('!?' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan29 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan3 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(19).
			self step.
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(53) ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan30 [
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $~
		ifTrue:
			[ ^ self scan30X2 ].
	(currentCharacter between: $A and: $Z)
		ifTrue: [ ^ self scan31 ].
	(currentCharacter between: $a and: $z)
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue:
					[ ^ self scan30X1 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan44 ].
			currentCharacter == $(
				ifTrue: [ ^ self scan46 ].
			currentCharacter == $/
				ifTrue: [ ^ self scan48 ].
			currentCharacter == $<
				ifTrue: [ ^ self scan50 ].
			currentCharacter == $[
				ifTrue: [ ^ self scan52 ].
			currentCharacter == ${
				ifTrue: [ ^ self scan54 ].
			currentCharacter == $|
				ifTrue: [ ^ self scan56 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan30X1 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan42 ].
	^ self scan41
]

{ #category : #generated }
ElixirScanner >> scan30X2 [
	self step.
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan31 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan32 ].
			true
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ [ self recordMatch: #(51).
							self step.
							(currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] whileTrue.
							^ self reportLastMatch ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $'
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $(
		ifTrue: [ [ self step.
			currentCharacter == $)
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $/
		ifTrue: [ [ self step.
			currentCharacter == $/
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $<
		ifTrue: [ [ self step.
			currentCharacter == $>
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $[
		ifTrue: [ [ self step.
			currentCharacter == $]
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == ${
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $|
		ifTrue: [ [ self step.
			currentCharacter == $|
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan32 [
	self recordMatch: #(51).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan33 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(51).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan33 [
	[ self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ])
								ifTrue: [ ^ self scan35 ].
							(currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ (currentCharacter between: (Character value: 14) and: $!)
												or: [ currentCharacter >= $# ] ] ])
								ifTrue: [ ^ self scan34 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf
						or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan35 ].
					^ self scan34 ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan35 ].
			^ self scan34 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan34 [
	[ self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan35 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan35 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan35 ].
			^ self scan34 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self scan34
]

{ #category : #generated }
ElixirScanner >> scan36 [
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan37 ].
	true
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan37 [
	self recordMatch: #(51).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan38 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(51).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan38 [
	[ self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter == $'
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ])
								ifTrue: [ ^ self scan40 ].
							(currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ (currentCharacter between: (Character value: 14) and: $&)
												or: [ currentCharacter >= $( ] ] ])
								ifTrue: [ ^ self scan39 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf
						or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan40 ].
					^ self scan39 ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan40 ].
			^ self scan39 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan39 [
	[ self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan40 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan4 [
	self step.
	^ self scan3
]

{ #category : #generated }
ElixirScanner >> scan40 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan40 ].
			^ self scan39 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self scan39
]

{ #category : #generated }
ElixirScanner >> scan41 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(51).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan42 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan42 [
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
						ifTrue: [ ^ self scan43 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ ^ self scan43 ].
	^ self scan41
]

{ #category : #generated }
ElixirScanner >> scan43 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan41 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan44 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ [ self recordMatch: #(51).
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
								ifTrue: [ ^ self scan45 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue: [ ^ self scan45 ].
			^ self scan44 ].
	true ] whileTrue
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan44 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan46 [
	[ self step.
	currentCharacter == $)
		ifTrue: [ [ self recordMatch: #(51).
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
			currentCharacter == $x
				ifTrue: [ ^ self scan47 ].
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan46 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan48 [
	[ self step.
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(51).
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
			currentCharacter == $x
				ifTrue: [ ^ self scan49 ].
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan48 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan5 [
	self recordMatch: #(19).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan50 [
	[ self step.
	currentCharacter == $>
		ifTrue: [ [ self recordMatch: #(51).
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
			currentCharacter == $x
				ifTrue: [ ^ self scan51 ].
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan50 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan52 [
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
								ifTrue: [ ^ self scan53 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue: [ ^ self scan53 ].
			^ self scan52 ].
	currentCharacter == $]
		ifTrue: [ [ self recordMatch: #(51).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan52 ] ].
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
			currentCharacter == $x
				ifTrue: [ ^ self scan55 ].
			^ self scan54 ].
	currentCharacter == $}
		ifTrue: [ [ self recordMatch: #(51).
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan54 ] ].
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
			currentCharacter == $x
				ifTrue: [ ^ self scan57 ].
			^ self scan56 ].
	currentCharacter == $|
		ifTrue: [ [ self recordMatch: #(51).
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
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan56 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan6 [
	[ self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ])
								ifTrue: [ ^ self scan8 ].
							(currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ (currentCharacter between: (Character value: 14) and: $!)
												or: [ currentCharacter >= $# ] ] ])
								ifTrue: [ ^ self scan7 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf
						or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan8 ].
					^ self scan7 ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan8 ].
			^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scan7 [
	[ self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan8 ].
	true ] whileTrue
]

{ #category : #generated }
ElixirScanner >> scan8 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ ^ self recordAndReportMatch: #(20) ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan8 ].
			^ self scan7 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self scan7
]

{ #category : #generated }
ElixirScanner >> scan9 [
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan11 ].
	^ self scan10
]

{ #category : #generated }
ElixirScanner >> scanForToken [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scanForTokenX20 ].
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX19 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scanForTokenX8 ].
	^ self scanForTokenX25
]

{ #category : #generated }
ElixirScanner >> scanForTokenX1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $_
		ifTrue: [ ^ self scan21 ].
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
	currentCharacter isDigit
		ifTrue: [ ^ self scan20 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX10 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(32 39) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(36).
			self step.
			currentCharacter == $|
				ifTrue: [ ^ self recordAndReportMatch: #(36) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX11 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(6).
			self step.
			currentCharacter == $>
				ifTrue: [ ^ self recordAndReportMatch: #(39) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX12 [
	self recordMatch: #(43 45).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX13 [
	self recordMatch: #(26).
	self step.
	currentCharacter == ${
		ifTrue: [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self recordAndReportMatch: #(27) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX14 [
	[ self recordMatch: #(23).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX15 [
	self recordMatch: #(45).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^
				ifTrue: [ ^ self recordAndReportMatch: #(41) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX16 [
	self recordMatch: #(50).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX17 [
	self recordMatch: #(43 45).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX18 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(37).
			self step.
			currentCharacter == $&
				ifTrue: [ ^ self recordAndReportMatch: #(37) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX19 [
	self recordMatch: #(45).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX2 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(52).
			self step.
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(53) ].
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(45 52).
					self step.
					currentCharacter == $:
						ifTrue: [ ^ self recordAndReportMatch: #(53) ].
					('!?' includes: currentCharacter)
						ifTrue: [ ^ self scan29 ].
					(currentCharacter isSeparator
						or: [ currentCharacter == Character pageUp ])
						ifTrue: [ [ self step.
							currentCharacter == $i
								ifTrue: [ self step.
									currentCharacter == $n
										ifTrue: [ ^ self recordAndReportMatch: #(40) ].
									^ self reportLastMatch ].
							currentCharacter isSeparator
								or: [ currentCharacter == Character pageUp ] ] whileTrue.
							^ self reportLastMatch ].
					(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
						ifTrue: [ ^ self scan28 ].
					^ self reportLastMatch ] ].
	('!?' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX20 [
	self recordMatch: #(25).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX21 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX22 [
	self step.
	currentCharacter == $\
		ifTrue: [ self step ].
	^ self recordAndReportMatch: #(48)
]

{ #category : #generated }
ElixirScanner >> scanForTokenX23 [
	currentCharacter == $o
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $~
		ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan20 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue:
			[ ^ self scanForTokenX14 ].
	('*/' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	currentCharacter isUppercase
		ifTrue:
			[ ^ self scanForTokenX7 ].
	(currentCharacter isLowercase or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX24 [
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $?
		ifTrue:
			[ ^ self scanForTokenX22 ].
	currentCharacter == $@
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $\
		ifTrue:
			[ ^ self scanForTokenX21 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $i
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scanForTokenX2 ].
	^ self scanForTokenX23
]

{ #category : #generated }
ElixirScanner >> scanForTokenX25 [
	currentCharacter == $%
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX18 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX17 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan22 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(4 55) ].
	^ self scanForTokenX24
]

{ #category : #generated }
ElixirScanner >> scanForTokenX3 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(5).
			self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(39) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $|
		ifTrue: [ self step.
			currentCharacter == $>
				ifTrue: [ ^ self recordAndReportMatch: #(39) ].
			^ self reportLastMatch ].
	currentCharacter == $~
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX4 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(52).
			self step.
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(53) ].
			currentCharacter == $d
				ifTrue: [ self recordMatch: #(37 52).
					self step.
					currentCharacter == $:
						ifTrue: [ ^ self recordAndReportMatch: #(53) ] ] ].
	('!?' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX5 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(36 52).
			self step.
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(53) ] ].
	('!?' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX6 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(40 52).
			self step.
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(53) ] ].
	('!?' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX7 [
	[ self recordMatch: #(54).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	('!?' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(54).
			self step.
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(53) ].
			^ self reportLastMatch ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX8 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> scanForTokenX9 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
ElixirScanner >> semicolonId [
	^ 55
]

{ #category : #generated }
ElixirScanner >> stringId [
	^ 19
]

{ #category : #generated }
ElixirScanner >> struct_opId [
	^ 26
]

{ #category : #generated }
ElixirScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment #eol nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #kw_identifier)
]
