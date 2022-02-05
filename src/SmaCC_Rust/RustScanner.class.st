Class {
	#name : #RustScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Rust'
}

{ #category : #'generated-initialization' }
RustScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(123 '''static' 12) #(111 'Self' 44) #(111 'abstract' 50) #(111 'as' 51) #(111 'async' 52) #(111 'auto' 53) #(111 'await' 54) #(111 'become' 55) #(111 'box' 56) #(111 'break' 57) #(111 'const' 58) #(111 'continue' 59) #(111 'crate' 60) #(111 'do' 61) #(111 'dyn' 62) #(111 'else' 63) #(111 'enum' 64) #(111 'extern' 65) #(111 'false' 66) #(111 'final' 67) #(111 'fn' 68) #(111 'for' 69) #(111 'if' 70) #(111 'impl' 71) #(111 'in' 72) #(111 'let' 73) #(111 'loop' 74) #(111 'macro' 75) #(111 'macro_rules' 76) #(111 'match' 77) #(111 'mod' 78) #(111 'move' 79) #(111 'mut' 80) #(111 'override' 81) #(111 'priv' 82) #(111 'pub' 83) #(111 'ref' 84) #(111 'return' 85) #(111 'self' 86) #(111 'static' 87) #(111 'struct' 88) #(111 'super' 89) #(111 'trait' 90) #(111 'true' 91) #(111 'try' 92) #(111 'type' 93) #(111 'typeof' 94) #(111 'union' 95) #(111 'unsafe' 96) #(111 'unsized' 97) #(111 'use' 98) #(111 'virtual' 99) #(111 'where' 100) #(111 'while' 101) #(111 'yield' 102))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
RustScanner >> FLOAT_LITERALId [
	^ 122
]

{ #category : #generated }
RustScanner >> INTEGER_LITERALId [
	^ 121
]

{ #category : #generated }
RustScanner >> ampId [
	^ 126
]

{ #category : #generated }
RustScanner >> emptySymbolTokenId [
	^ 401
]

{ #category : #generated }
RustScanner >> errorTokenId [
	^ 402
]

{ #category : #generated }
RustScanner >> gtId [
	^ 125
]

{ #category : #generated }
RustScanner >> lbracketId [
	^ 110
]

{ #category : #generated }
RustScanner >> lparenId [
	^ 109
]

{ #category : #generated }
RustScanner >> ltId [
	^ 124
]

{ #category : #generated }
RustScanner >> rawStringId [
	^ 400
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
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(116) ].
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
	[ self recordMatch: #(121).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	currentCharacter == $f ifTrue: [ ^ self scan9 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan11 [
	self step.
	currentCharacter == $1
		ifTrue:
			[ self step.
			currentCharacter == $2
				ifTrue:
					[ self step.
					currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(121) ].
					^ self reportLastMatch ].
			currentCharacter == $6 ifTrue: [ ^ self recordAndReportMatch: #(121) ].
			^ self reportLastMatch ].
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(121) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(121) ].
			^ self reportLastMatch ].
	currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(121) ].
	currentCharacter == $s ifTrue: [ (self scanForString: 'ize') ifTrue: [ ^ self recordAndReportMatch: #(121) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan12 [
	self recordMatch: #(111).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan13 ].
	currentCharacter == $'
		ifTrue:
			[ self step.
			currentCharacter == $\
				ifTrue:
					[ self step.
					currentCharacter == $'
						ifTrue:
							[ self recordMatch: #(119).
							self step.
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(119) ].
							^ self reportLastMatch ].
					currentCharacter == $x
						ifTrue:
							[ self step.
							(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
								ifTrue:
									[ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan15 ] ].
							^ self reportLastMatch ].
					('"0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
					^ self reportLastMatch ].
			^ self scan15 ].
	currentCharacter == $r
		ifTrue:
			[ self recordMatch: #(111).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan16 ].
			currentCharacter == $#
				ifTrue:
					[ [ self recordMatch: #(117).
					self step.
					currentCharacter == $# ] whileTrue.
					^ self reportLastMatch ] ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(111).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan13 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan14 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(120).
			self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(120) ].
			currentCharacter == $\ ifTrue: [ ^ self scan14 ].
			^ self scan13 ].
	currentCharacter == $\ ] whileTrue.
	^ self scan13
]

{ #category : #generated }
RustScanner >> scan15 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan16 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	true ] whileTrue
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
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(123).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan2X3 [
	self recordMatch: #(123).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(123).
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
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(113) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan5 [
	self recordMatch: #(121).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	currentCharacter == $b
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1)
				ifTrue:
					[ [ self recordMatch: #(121).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
					(currentCharacter between: $0 and: $1) or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $f ifTrue: [ ^ self scan9 ].
	currentCharacter == $o
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7)
				ifTrue:
					[ [ self recordMatch: #(121).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
					(currentCharacter between: $0 and: $7) or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue:
					[ [ self recordMatch: #(121).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
					currentCharacter isDigit
						or:
							[ (currentCharacter between: $A and: $F) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $f ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	(currentCharacter isDigit or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan6 [
	self step.
	currentCharacter isDigit
		ifTrue:
			[ [ self recordMatch: #(122).
			self step.
			currentCharacter == $f ifTrue: [ ^ self scan9 ].
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
			currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan7 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	('+-_' includes: currentCharacter)
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan8 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan8 [
	[ self recordMatch: #(122).
	self step.
	currentCharacter == $f ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan9 [
	self step.
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(122) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(122) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForToken [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $$ ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $' ifTrue: [ ^ self scan2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(13 109) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self scanForTokenX21
]

{ #category : #generated }
RustScanner >> scanForTokenX1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan4 ].
	currentCharacter == $/
		ifTrue:
			[ [ self recordMatch: #(113).
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
	self recordMatch: #(8 126).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX11 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $c ifTrue: [ (self scanForString: 'rate') ifTrue: [ ^ self recordAndReportMatch: #(5) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX12 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX13 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX14 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX15 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX16 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX17 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX18 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX19 [
	[ self recordMatch: #(111).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
RustScanner >> scanForTokenX2 [
	self recordMatch: #(111).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan16 ].
	currentCharacter == $#
		ifTrue:
			[ self recordMatch: #(117).
			self step.
			currentCharacter == $#
				ifTrue:
					[ [ self recordMatch: #(117).
					self step.
					currentCharacter == $# ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == $_
				ifTrue:
					[ self step.
					(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
						ifTrue:
							[ [ self recordMatch: #(112).
							self step.
							currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter isLetter
				ifTrue:
					[ [ self recordMatch: #(112).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(111).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX20 [
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $_ ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $b ifTrue: [ ^ self scan12 ].
	currentCharacter == $r ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	currentCharacter isDigit ifTrue: [ ^ self scan10 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter isLetter ifTrue: [ self scanForTokenX19 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX21 [
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan5 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(45 110) ].
	^ self scanForTokenX20
]

{ #category : #generated }
RustScanner >> scanForTokenX3 [
	self recordMatch: #(125).
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
RustScanner >> scanForTokenX4 [
	self recordMatch: #(124).
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
RustScanner >> scanForTokenX5 [
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
RustScanner >> scanForTokenX6 [
	self recordMatch: #(104 108).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX7 [
	self recordMatch: #(49).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(111).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX8 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX9 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment #whitespace nil nil #rawStringStart)
]
