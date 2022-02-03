Class {
	#name : #RustScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Rust'
}

{ #category : #'generated-initialization' }
RustScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(118 '''static' 12) #(106 'Self' 43) #(106 'abstract' 49) #(106 'as' 50) #(106 'async' 51) #(106 'await' 52) #(106 'become' 53) #(106 'box' 54) #(106 'break' 55) #(106 'const' 56) #(106 'continue' 57) #(106 'crate' 58) #(106 'do' 59) #(106 'dyn' 60) #(106 'else' 61) #(106 'enum' 62) #(106 'extern' 63) #(106 'false' 64) #(106 'final' 65) #(106 'fn' 66) #(106 'for' 67) #(106 'if' 68) #(106 'impl' 69) #(106 'in' 70) #(106 'let' 71) #(106 'loop' 72) #(106 'macro' 73) #(106 'macro_rules' 74) #(106 'match' 75) #(106 'mod' 76) #(106 'move' 77) #(106 'mut' 78) #(106 'override' 79) #(106 'priv' 80) #(106 'pub' 81) #(106 'ref' 82) #(106 'return' 83) #(106 'self' 84) #(106 'static' 85) #(106 'struct' 86) #(106 'super' 87) #(106 'trait' 88) #(106 'true' 89) #(106 'try' 90) #(106 'type' 91) #(106 'typeof' 92) #(106 'union' 93) #(106 'unsafe' 94) #(106 'unsized' 95) #(106 'use' 96) #(106 'virtual' 97) #(106 'where' 98) #(106 'while' 99) #(106 'yield' 100))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
RustScanner >> ampId [
	^ 122
]

{ #category : #generated }
RustScanner >> emptySymbolTokenId [
	^ 399
]

{ #category : #generated }
RustScanner >> errorTokenId [
	^ 400
]

{ #category : #generated }
RustScanner >> gtId [
	^ 121
]

{ #category : #generated }
RustScanner >> ltId [
	^ 120
]

{ #category : #generated }
RustScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(112) ].
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
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(118) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(118) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan11 [
	self recordMatch: #(107).
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
							[ self recordMatch: #(114).
							self step.
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(114) ].
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
			[ self recordMatch: #(107).
			self step.
			currentCharacter == $"
				ifTrue:
					[ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(116) ].
					true ] whileTrue ].
			currentCharacter == $#
				ifTrue:
					[ [ self step.
					currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(116) ].
					true ] whileTrue ] ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(107).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan12 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	currentCharacter == $\ ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan13 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(115).
			self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(115) ].
			currentCharacter == $\ ifTrue: [ ^ self scan13 ].
			^ self scan12 ].
	currentCharacter == $\ ] whileTrue.
	^ self scan12
]

{ #category : #generated }
RustScanner >> scan14 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan15 [
	[ self step.
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan16 [
	[ self recordMatch: #(107).
	self step.
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(112) ].
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
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(118).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan2X3 [
	self recordMatch: #(118).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(118).
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
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(108) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
RustScanner >> scan5 [
	self recordMatch: #(116).
	self step.
	currentCharacter == $b
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1)
				ifTrue:
					[ [ self recordMatch: #(116).
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
					[ [ self recordMatch: #(116).
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
					[ [ self recordMatch: #(116).
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
	[ self recordMatch: #(116).
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
					currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(116) ].
					^ self reportLastMatch ].
			currentCharacter == $6 ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			^ self reportLastMatch ].
	currentCharacter == $3
		ifTrue:
			[ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue:
			[ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			^ self reportLastMatch ].
	currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(116) ].
	currentCharacter == $s ifTrue: [ (self scanForString: 'ize') ifTrue: [ ^ self recordAndReportMatch: #(116) ] ].
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
	[ self recordMatch: #(117).
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
			[ [ self recordMatch: #(108).
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
	self recordMatch: #(8).
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
	[ self recordMatch: #(109).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX14 [
	self recordMatch: #(46).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(47) ].
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
	self recordMatch: #(106).
	self step.
	currentCharacter == $"
		ifTrue:
			[ [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(112) ].
			true ] whileTrue ].
	currentCharacter == $#
		ifTrue:
			[ self step.
			currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(112) ].
			currentCharacter == $_
				ifTrue:
					[ self step.
					currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(112) ].
					(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan16 ].
					^ self scan15 ].
			currentCharacter isLetter ifTrue: [ ^ self scan16 ].
			^ self scan15 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(106).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX20 [
	[ self recordMatch: #(106).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
RustScanner >> scanForTokenX21 [
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $_ ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $b ifTrue: [ ^ self scan11 ].
	currentCharacter == $r ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	currentCharacter isDigit ifTrue: [ ^ self scan6 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter isLetter ifTrue: [ self scanForTokenX20 ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX22 [
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $0 ifTrue: [ ^ self scan5 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $? ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	^ self scanForTokenX21
]

{ #category : #generated }
RustScanner >> scanForTokenX3 [
	self recordMatch: #(41).
	self step.
	currentCharacter isDigit
		ifTrue:
			[ [ self recordMatch: #(117).
			self step.
			currentCharacter == $.
				ifTrue:
					[ self recordMatch: #(117).
					self step.
					currentCharacter isDigit
						ifTrue:
							[ [ self recordMatch: #(117).
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
RustScanner >> scanForTokenX5 [
	self recordMatch: #(102).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX6 [
	self recordMatch: #(48).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(106).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> scanForTokenX7 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $>
		ifTrue:
			[ self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(40) ] ].
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
	self recordMatch: #(32).
	self step.
	currentCharacter == $<
		ifTrue:
			[ self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : #generated }
RustScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment #whitespace)
]
