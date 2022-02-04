Class {
	#name : #RustScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Rust'
}

{ #category : #'generated-initialization' }
RustScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(122 '''static' 12) #(110 'Self' 46) #(110 'abstract' 52) #(110 'as' 53) #(110 'async' 54) #(110 'await' 55) #(110 'become' 56) #(110 'box' 57) #(110 'break' 58) #(110 'const' 59) #(110 'continue' 60) #(110 'crate' 61) #(110 'do' 62) #(110 'dyn' 63) #(110 'else' 64) #(110 'enum' 65) #(110 'extern' 66) #(110 'false' 67) #(110 'final' 68) #(110 'fn' 69) #(110 'for' 70) #(110 'if' 71) #(110 'impl' 72) #(110 'in' 73) #(110 'let' 74) #(110 'loop' 75) #(110 'macro' 76) #(110 'macro_rules' 77) #(110 'match' 78) #(110 'mod' 79) #(110 'move' 80) #(110 'mut' 81) #(110 'override' 82) #(110 'priv' 83) #(110 'pub' 84) #(110 'ref' 85) #(110 'return' 86) #(110 'self' 87) #(110 'static' 88) #(110 'struct' 89) #(110 'super' 90) #(110 'trait' 91) #(110 'true' 92) #(110 'try' 93) #(110 'type' 94) #(110 'typeof' 95) #(110 'union' 96) #(110 'unsafe' 97) #(110 'unsized' 98) #(110 'use' 99) #(110 'virtual' 100) #(110 'where' 101) #(110 'while' 102) #(110 'yield' 103))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
RustScanner >> ampId [
	^ 125
]

{ #category : #generated }
RustScanner >> emptySymbolTokenId [
	^ 400
]

{ #category : #generated }
RustScanner >> errorTokenId [
	^ 401
]

{ #category : #generated }
RustScanner >> gtId [
	^ 124
]

{ #category : #generated }
RustScanner >> ltId [
	^ 123
]

{ #category : #generated }
RustScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			currentCharacter == $u
				ifTrue:
					[ self step.
					currentCharacter == ${
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									currentCharacter == $} ifTrue: [ ^ self scan1 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue:
											[ self step.
											currentCharacter == $} ifTrue: [ ^ self scan1 ].
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
												ifTrue:
													[ self step.
													currentCharacter == $} ifTrue: [ ^ self scan1 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
														ifTrue:
															[ self step.
															currentCharacter == $} ifTrue: [ ^ self scan1 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																ifTrue:
																	[ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan1 ] ] ] ] ] ] ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue:
					[ self step.
					(currentCharacter between: $0 and: $7)
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan1 ] ].
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ '"''0\nrt' includes: currentCharacter ]) ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan10 [
	self step.
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(121) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(121) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan11 [
	self recordMatch: #(110).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan12 ].
	currentCharacter == $'
		ifTrue:
			[ self step.
			currentCharacter == $\
				ifTrue:
					[ self step.
					currentCharacter == $'
						ifTrue:
							[ self recordMatch: #(117).
							self step.
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
							^ self reportLastMatch ].
					currentCharacter == $x
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan14 ] ].
							^ self reportLastMatch ].
					('"0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
					^ self reportLastMatch ].
			^ self scan14 ].
	currentCharacter == $r
		ifTrue:
			[ self recordMatch: #(110).
			self step.
			currentCharacter == $"
				ifTrue:
					[ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(119) ].
					true ] whileTrue ].
			currentCharacter == $#
				ifTrue:
					[ [ self step.
					currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(119) ].
					true ] whileTrue ] ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(110).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan12 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $\ ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan13 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(118).
			self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(118) ].
			currentCharacter == $\ ifTrue: [ ^ self scan13 ].
			^ self scan12 ].
	currentCharacter == $\ ] whileTrue.
	^ self scan12
]

{ #category : #generated }
RustScanner >> scan14 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan15 [
	[ self step.
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(116) ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan16 [
	[ self recordMatch: #(111).
	self step.
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(116) ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self scan15
]

{ #category : #generated }
RustScanner >> scan2 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan2X1 ].
	currentCharacter == $_ ifTrue: [ ^ self scan2X2 ].
	currentCharacter isLetter ifTrue: [ ^ self scan2X3 ].
	^ self scan2X4
]

{ #category : #generated }
RustScanner >> scan2X1 [
	self step.
	currentCharacter == $u
		ifTrue:
			[ self step.
			currentCharacter == ${
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue:
							[ self step.
							currentCharacter == $} ifTrue: [ ^ self scan3 ].
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									currentCharacter == $} ifTrue: [ ^ self scan3 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue:
											[ self step.
											currentCharacter == $} ifTrue: [ ^ self scan3 ].
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
												ifTrue:
													[ self step.
													currentCharacter == $} ifTrue: [ ^ self scan3 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
														ifTrue:
															[ self step.
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step ].
															currentCharacter == $} ifTrue: [ ^ self scan3 ] ] ] ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue:
			[ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue:
					[ self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan3 ] ].
			^ self reportLastMatch ].
	('"''0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan2X2 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(122).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan2X3 [
	self recordMatch: #(122).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(122).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan2X4 [
	(currentCharacter <= Character backspace
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage)
				or:
					[ (currentCharacter between: (Character value: 14) and: $&)
						or:
							[ (currentCharacter between: $( and: $@)
								or:
									[ currentCharacter == $[
										or:
											[ (currentCharacter between: $] and: $^)
												or:
													[ currentCharacter == $`
														or:
															[ (currentCharacter between: ${ and: (Character value: 169))
																or:
																	[ (currentCharacter between: (Character value: 171) and: (Character value: 180))
																		or:
																			[ (currentCharacter between: (Character value: 182) and: (Character value: 185))
																				or:
																					[ (currentCharacter between: (Character value: 187) and: (Character value: 191)) or: [ '×÷' includes: currentCharacter ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan3 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(112) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan5 [
	self recordMatch: #(120).
	self step.
	currentCharacter == $b
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1)
				ifTrue:
					[ [ self recordMatch: #(120).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
					(currentCharacter between: $0 and: $1) or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7)
				ifTrue:
					[ [ self recordMatch: #(120).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
					(currentCharacter between: $0 and: $7) or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ [ self recordMatch: #(120).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
					currentCharacter isDigit
						or:
							[ (currentCharacter between: $A and: $F) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $f ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
	(currentCharacter isDigit or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan6 [
	[ self recordMatch: #(120).
	self step.
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
	currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan7 [
	self step.
	currentCharacter == $1
		ifTrue:
			[ self step.
			currentCharacter == $2
				ifTrue:
					[ self step.
					currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(120) ].
					^ self reportLastMatch ].
			currentCharacter == $6 ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			^ self reportLastMatch ].
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			^ self reportLastMatch ].
	currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	currentCharacter == $s ifTrue: [ (self scanForString: 'ize') ifTrue: [ ^ self recordAndReportMatch: #(120) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan8 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan9 ].
	('+-_' includes: currentCharacter)
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan9 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan9 [
	[ self recordMatch: #(121).
	self step.
	currentCharacter == $f ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForToken [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $$ ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $' ifTrue: [ ^ self scan2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self scanForTokenX22
]

{ #category : #generated }
RustScanner >> scanForTokenX1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan4 ].
	currentCharacter == $/
		ifTrue:
			[ [ self recordMatch: #(112).
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
RustScanner >> scanForTokenX10 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX11 [
	self recordMatch: #(8 125).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX12 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $c ifTrue: [ (self scanForString: 'rate') ifTrue: [ ^ self recordAndReportMatch: #(5) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX13 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX14 [
	self recordMatch: #(49).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX15 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX16 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX17 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX18 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX19 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX2 [
	self recordMatch: #(110).
	self step.
	currentCharacter == $"
		ifTrue:
			[ [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			true ] whileTrue ].
	currentCharacter == $#
		ifTrue:
			[ self step.
			currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			currentCharacter == $_
				ifTrue:
					[ self step.
					currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(116) ].
					(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan16 ].
					^ self scan15 ].
			currentCharacter isLetter ifTrue: [ ^ self scan16 ].
			^ self scan15 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(110).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX20 [
	[ self recordMatch: #(110).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
RustScanner >> scanForTokenX21 [
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $_ ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $b ifTrue: [ ^ self scan11 ].
	currentCharacter == $r ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(108) ].
	currentCharacter isDigit ifTrue: [ ^ self scan6 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter isLetter ifTrue: [ self scanForTokenX20 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX22 [
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan5 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $? ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	^ self scanForTokenX21
]

{ #category : #generated }
RustScanner >> scanForTokenX3 [
	self recordMatch: #(44).
	self step.
	currentCharacter isDigit
		ifTrue:
			[ [ self recordMatch: #(121).
			self step.
			currentCharacter == $.
				ifTrue:
					[ self recordMatch: #(121).
					self step.
					currentCharacter isDigit
						ifTrue:
							[ [ self recordMatch: #(121).
							self step.
							currentCharacter == $f ifTrue: [ ^ self scan10 ].
							('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
							currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $f ifTrue: [ ^ self scan10 ].
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
			currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX4 [
	self recordMatch: #(39 124).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $>
		ifTrue:
			[ self recordMatch: #(41).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(43) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX5 [
	self recordMatch: #(32 123).
	self step.
	currentCharacter == $<
		ifTrue:
			[ self recordMatch: #(33).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX6 [
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
RustScanner >> scanForTokenX7 [
	self recordMatch: #(105 109).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX8 [
	self recordMatch: #(51).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(110).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX9 [
	self recordMatch: #(36).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment #whitespace)
]
