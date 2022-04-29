Class {
	#name : #RustScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Rust'
}

{ #category : #'generated-initialization' }
RustScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(126 '''static' 12) #(112 'Self' 44) #(112 'abstract' 50) #(112 'as' 51) #(112 'async' 52) #(112 'auto' 53) #(112 'await' 54) #(112 'become' 55) #(112 'box' 56) #(112 'break' 57) #(112 'const' 58) #(112 'continue' 59) #(112 'crate' 60) #(112 'default' 61) #(112 'do' 62) #(112 'dyn' 63) #(112 'else' 64) #(112 'enum' 65) #(112 'extern' 66) #(112 'false' 67) #(112 'final' 68) #(112 'fn' 69) #(112 'for' 70) #(112 'if' 71) #(112 'impl' 72) #(112 'in' 73) #(112 'let' 74) #(112 'loop' 75) #(112 'macro' 76) #(112 'macro_rules' 77) #(112 'match' 78) #(112 'mod' 79) #(112 'move' 80) #(112 'mut' 81) #(112 'override' 82) #(112 'priv' 83) #(112 'pub' 84) #(112 'ref' 85) #(112 'return' 86) #(112 'self' 87) #(112 'static' 88) #(112 'struct' 89) #(112 'super' 90) #(112 'trait' 91) #(112 'true' 92) #(112 'try' 93) #(112 'type' 94) #(112 'typeof' 95) #(112 'union' 96) #(112 'unsafe' 97) #(112 'unsized' 98) #(112 'use' 99) #(112 'virtual' 100) #(112 'where' 101) #(112 'while' 102) #(112 'yield' 103))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
RustScanner >> FLOAT_LITERALId [
	^ 125
]

{ #category : #generated }
RustScanner >> INTEGER_LITERALId [
	^ 123
]

{ #category : #generated }
RustScanner >> ampId [
	^ 129
]

{ #category : #generated }
RustScanner >> emptySymbolTokenId [
	^ 393
]

{ #category : #generated }
RustScanner >> errorTokenId [
	^ 394
]

{ #category : #generated }
RustScanner >> gtId [
	^ 128
]

{ #category : #generated }
RustScanner >> lbracketId [
	^ 111
]

{ #category : #generated }
RustScanner >> lparenId [
	^ 110
]

{ #category : #generated }
RustScanner >> ltId [
	^ 127
]

{ #category : #accessing }
RustScanner >> next [
	stream position = 0
		ifTrue:
			[ scope := #shebang.
			self resetScanner.
			returnMatchBlock := [ :match | 
			scope := #default.
			match ids first = 0
				ifTrue:
					[ stream position: 0.
					^ super next ]
				ifFalse: [ ^ match ] ].
			returnMatchBlock value: self scanForToken ].
	^ super next
]

{ #category : #scanning }
RustScanner >> potentialFloat [
	| string |
	stream peek = $.
		ifTrue:
			[ stream position: stream position - 1.
			outputStream position: outputStream position - 1.
			matchActions := {self INTEGER_LITERALId} ]
		ifFalse: [ matchActions := {self FLOAT_LITERALId} ].
	string := outputStream contents.
	^ self createTokenFor: string
]

{ #category : #generated }
RustScanner >> rawStringId [
	^ 392
]

{ #category : #scanning }
RustScanner >> rawStringStart [
	| startString ending |
	startString := outputStream contents.
	ending := '"' , (String new: (startString occurrencesOf: $#) withAll: $#).
	outputStream nextPutAll: (stream upToAll: ending).
	outputStream nextPutAll: ending.
	^ self recordAndReportMatch: {self rawStringId}
]

{ #category : #generated }
RustScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan1X16 ].
	^ self scan1X19
]

{ #category : #generated }
RustScanner >> scan10 [
	self recordMatch: #(124).
	self step.
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ [ self recordMatch: #(125).
			self step.
			currentCharacter == $f ifTrue: [ ^ self scan13 ].
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
			(currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan11 [
	self step.
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan12 ].
	('+-_' includes: currentCharacter)
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan12 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan12 [
	[ self recordMatch: #(125).
	self step.
	currentCharacter == $f ifTrue: [ ^ self scan13 ].
	(currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan13 [
	self step.
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(125) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(125) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan14 [
	[ self recordMatch: #(123).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter == $f ifTrue: [ ^ self scan13 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	(currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan15 [
	self step.
	currentCharacter == $1
		ifTrue:
			[ self step.
			currentCharacter == $2
				ifTrue:
					[ self step.
					currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(123) ].
					^ self reportLastMatch ].
			currentCharacter == $6 ifTrue: [ ^ self recordAndReportMatch: #(123) ].
			^ self reportLastMatch ].
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(123) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(123) ].
			^ self reportLastMatch ].
	currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(123) ].
	currentCharacter == $s ifTrue: [ (self scanForString: 'ize') ifTrue: [ ^ self recordAndReportMatch: #(123) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan16 [
	[ self recordMatch: #(112).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan17 [
	self recordMatch: #(49).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan18 [
	self recordMatch: #(112).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan19 ].
	currentCharacter == $'
		ifTrue:
			[ self step.
			currentCharacter == $\
				ifTrue:
					[ self step.
					currentCharacter == $'
						ifTrue:
							[ self recordMatch: #(121).
							self step.
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(121) ].
							^ self reportLastMatch ].
					currentCharacter == $x
						ifTrue:
							[ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan21 ] ].
							^ self reportLastMatch ].
					('"0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
					^ self reportLastMatch ].
			^ self scan21 ].
	currentCharacter == $r ifTrue: [ ^ self scan22 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan19 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(122) ].
	currentCharacter == $\ ifTrue: [ ^ self scan20 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan1X1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan8 ].
	currentCharacter == $/
		ifTrue:
			[ [ self recordMatch: #(114).
			self step.
			currentCharacter <= Character tab
				or:
					[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X10 [
	[ self recordMatch: #(116).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X11 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X12 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X13 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X14 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X15 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X16 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X17 [
	currentCharacter == $^ ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan17 ].
	currentCharacter == $b ifTrue: [ ^ self scan18 ].
	currentCharacter == $r ifTrue: [ ^ self scan25 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(108) ].
	(currentCharacter between: $1 and: $9) ifTrue: [ ^ self scan14 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scan1X10 ].
	currentCharacter isLetter ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X18 [
	currentCharacter == $. ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $/ ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan9 ].
	currentCharacter == $: ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(45 111) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	^ self scan1X17
]

{ #category : #generated }
RustScanner >> scan1X19 [
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $$ ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X15 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $' ifTrue: [ ^ self scan3 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(13 110) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X7 ].
	^ self scan1X18
]

{ #category : #generated }
RustScanner >> scan1X2 [
	self recordMatch: #(128).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $>
		ifTrue:
			[ self recordMatch: #(39).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(40) ].
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(41) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X3 [
	self recordMatch: #(127).
	self step.
	currentCharacter == $<
		ifTrue:
			[ self recordMatch: #(32).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X4 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $.
		ifTrue:
			[ self recordMatch: #(24).
			self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(26) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X5 [
	self recordMatch: #(105 109).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X6 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X7 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X8 [
	self recordMatch: #(8 129).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan1X9 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $c ifTrue: [ (self scanForString: 'rate') ifTrue: [ ^ self recordAndReportMatch: #(5) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan2 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			currentCharacter == $u
				ifTrue:
					[ self step.
					currentCharacter == ${
						ifTrue:
							[ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									currentCharacter == $} ifTrue: [ ^ self scan2 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue:
											[ self step.
											currentCharacter == $} ifTrue: [ ^ self scan2 ].
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
												ifTrue:
													[ self step.
													currentCharacter == $} ifTrue: [ ^ self scan2 ].
													((currentCharacter between: $0 and: $9)
														or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
														ifTrue:
															[ self step.
															currentCharacter == $} ifTrue: [ ^ self scan2 ].
															((currentCharacter between: $0 and: $9)
																or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																ifTrue:
																	[ self step.
																	((currentCharacter between: $0 and: $9)
																		or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan2 ] ] ] ] ] ] ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue:
					[ self step.
					(currentCharacter between: $0 and: $7)
						ifTrue:
							[ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan2 ] ].
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ '"''0\nrt' includes: currentCharacter ]) ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan20 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(122).
			self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(122) ].
			currentCharacter == $\ ifTrue: [ ^ self scan20 ].
			^ self scan19 ].
	currentCharacter == $\ ] whileTrue.
	^ self scan19
]

{ #category : #generated }
RustScanner >> scan21 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(121) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan22 [
	self recordMatch: #(112).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan23 ].
	currentCharacter == $# ifTrue: [ ^ self scan24 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan23 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan24 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	currentCharacter == $# ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan25 [
	self recordMatch: #(112).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan23 ].
	currentCharacter == $# ifTrue: [ ^ self scan26 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan26 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	currentCharacter == $# ifTrue: [ ^ self scan24 ].
	currentCharacter == $_ ifTrue: [ ^ self scan28 ].
	currentCharacter isLetter ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan27 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan28 [
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan29 [
	self step.
	currentCharacter == $!
		ifTrue:
			[ self step.
			(currentCharacter <= Character tab
				or:
					[ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $Z) or: [ currentCharacter >= $\ ] ] ])
				ifTrue:
					[ [ self recordMatch: #(115).
					self step.
					currentCharacter <= Character tab
						or:
							[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
						whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan3 [
	self step.
	currentCharacter == $\
		ifTrue:
			[ self step.
			currentCharacter == $u
				ifTrue:
					[ self step.
					currentCharacter == ${
						ifTrue:
							[ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									currentCharacter == $} ifTrue: [ ^ self scan4 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue:
											[ self step.
											currentCharacter == $} ifTrue: [ ^ self scan4 ].
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
												ifTrue:
													[ self step.
													currentCharacter == $} ifTrue: [ ^ self scan4 ].
													((currentCharacter between: $0 and: $9)
														or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
														ifTrue:
															[ self step.
															currentCharacter == $} ifTrue: [ ^ self scan4 ].
															((currentCharacter between: $0 and: $9)
																or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																ifTrue:
																	[ self step.
																	((currentCharacter between: $0 and: $9)
																		or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan4 ] ] ] ] ] ] ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue:
					[ self step.
					(currentCharacter between: $0 and: $7)
						ifTrue:
							[ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan4 ] ].
					^ self reportLastMatch ].
			('"''0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter == $_ ifTrue: [ ^ self scan7 ].
	currentCharacter isLetter ifTrue: [ ^ self scan5 ].
	(currentCharacter isLetter
		or:
			[ (currentCharacter between: Character tab and: Character lf)
				or: [ currentCharacter == Character cr or: [ '''\_' includes: currentCharacter ] ] ]) not ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan4 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan5 [
	self recordMatch: #(126).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan6 [
	[ self recordMatch: #(126).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan7 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan8 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(114) ].
			^ self scan8 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan9 [
	self recordMatch: #(123).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter == $b
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1)
				ifTrue:
					[ [ self recordMatch: #(123).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
					(currentCharacter between: $0 and: $1) or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $f ifTrue: [ ^ self scan13 ].
	currentCharacter == $o
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7)
				ifTrue:
					[ [ self recordMatch: #(123).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
					(currentCharacter between: $0 and: $7) or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ [ self recordMatch: #(123).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
					(currentCharacter between: $0 and: $9)
						or:
							[ (currentCharacter between: $A and: $F) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $f ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	((currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForToken [
	scope == #shebang
		ifTrue:
			[ self step.
			currentCharacter = (Character value: 65279) ifTrue: [ self step ].
			currentCharacter == $# ifTrue: [ ^ self scan29 ].
			^ self reportLastMatch ].
	scope == #default ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil #whitespace nil nil #rawStringStart nil nil nil nil #potentialFloat)
]
