Class {
	#name : #JavaScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Java'
}

{ #category : #'generated-initialization' }
JavaScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(120 'abstract' 42) #(120 'assert' 43) #(120 'boolean' 44) #(120 'break' 45) #(120 'byte' 46) #(120 'case' 47) #(120 'catch' 48) #(120 'char' 49) #(120 'class' 50) #(120 'continue' 51) #(120 'default' 52) #(120 'do' 53) #(120 'double' 54) #(120 'else' 55) #(120 'enum' 56) #(120 'exports' 57) #(120 'extends' 58) #(120 'false' 116) #(120 'final' 59) #(120 'finally' 60) #(120 'float' 61) #(120 'for' 62) #(120 'if' 63) #(120 'implements' 64) #(120 'import' 65) #(120 'instanceof' 66) #(120 'int' 67) #(120 'interface' 68) #(120 'long' 69) #(120 'module' 70) #(120 'native' 71) #(120 'new' 72) #(120 'null' 119) #(120 'open' 74) #(120 'opens' 75) #(120 'package' 76) #(120 'permits' 77) #(120 'private' 78) #(120 'protected' 79) #(120 'provides' 80) #(120 'public' 81) #(120 'record' 82) #(120 'requires' 83) #(120 'return' 84) #(120 'sealed' 85) #(120 'short' 86) #(120 'static' 87) #(120 'strictfp' 88) #(120 'super' 89) #(120 'switch' 90) #(120 'synchronized' 91) #(120 'this' 92) #(120 'throw' 93) #(120 'throws' 94) #(120 'to' 95) #(120 'transient' 96) #(120 'transitive' 97) #(120 'true' 116) #(120 'try' 98) #(120 'uses' 99) #(120 'void' 100) #(120 'volatile' 101) #(120 'while' 102) #(120 'with' 103) #(120 'yield' 104))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JavaScanner >> GREATER_THANId [
	^ 111
]

{ #category : #generated }
JavaScanner >> SIGNED_RIGHT_SHIFTId [
	^ 112
]

{ #category : #generated }
JavaScanner >> UNSIGNED_RIGHT_SHIFTId [
	^ 113
]

{ #category : #generated }
JavaScanner >> emptySymbolTokenId [
	^ 340
]

{ #category : #generated }
JavaScanner >> errorTokenId [
	^ 341
]

{ #category : #generated }
JavaScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	true ] whileTrue
]

{ #category : #generated }
JavaScanner >> scan10 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(122) ].
			^ self scan10 ].
	true ] whileTrue
]

{ #category : #generated }
JavaScanner >> scan11 [
	self recordMatch: #(115).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan12 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
			currentCharacter isDigit ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan13 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan14 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan15 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan16 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan17 ].
			^ self reportLastMatch ].
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan16 ].
			^ self reportLastMatch ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan17 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan17 ].
			^ self reportLastMatch ].
	('Pp' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan18 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan18 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan19 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(123).
			self step.
			currentCharacter == $` ifTrue: [ ^ self scan19 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
JavaScanner >> scan2 [
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
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan1 ] ] ] ].
			^ self reportLastMatch ].
	(('"''' includes: currentCharacter)
		or: [ (currentCharacter between: $0 and: $7)
				or: [ '\bfnrt' includes: currentCharacter ] ]) ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan3 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
JavaScanner >> scan4 [
	(self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	^ self scan3
]

{ #category : #generated }
JavaScanner >> scan5 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan6 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan7 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan8 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan9 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter isDigit ] whileTrue.
	('DFdf' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForToken [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX7 ].
	^ self scanForTokenX22
]

{ #category : #generated }
JavaScanner >> scanForTokenX1 [
	self recordMatch: #(114).
	self step.
	^ self scanForTokenX1X3
]

{ #category : #generated }
JavaScanner >> scanForTokenX10 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(21) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX11 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX12 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX13 [
	[ self recordMatch: #(121).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX14 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX15 [
	self recordMatch: #(31).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX16 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX17 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX18 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX19 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX1X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX1X2 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX1X3 [
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan14 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X2 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(114) ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X1 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(115) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX2 [
	self step.
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
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ ^ self scan5 ] ] ] ].
					^ self reportLastMatch ].
			(currentCharacter between: $0 and: $3)
				ifTrue: [ self step.
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(117) ].
					(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan6 ].
					^ self reportLastMatch ].
			(currentCharacter between: $4 and: $7) ifTrue: [ ^ self scan6 ].
			('"''\bfnrt' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	(currentCharacter <= $& or: [ currentCharacter >= $( ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX20 [
	[ self recordMatch: #(120).
	self step.
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue
]

{ #category : #generated }
JavaScanner >> scanForTokenX21 [
	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $` ifTrue: [ ^ self scan19 ].
	currentCharacter == $n ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(109) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	currentCharacter isDigit ifTrue: [ ^ self scan18 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scanForTokenX13 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ self scanForTokenX20 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX22 [
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	^ self scanForTokenX21
]

{ #category : #generated }
JavaScanner >> scanForTokenX3 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan10 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(122).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX4 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(118).
			self step.
			currentCharacter == $"
				ifTrue: [ [ self step.
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ [ self step.
							currentCharacter == $" ifTrue: [ ^ self scan4 ].
							currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
								whileTrue.
							^ self scan3 ].
					currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	^ self scan1
]

{ #category : #generated }
JavaScanner >> scanForTokenX5 [
	(self scanForString: 'on-' match: #(120))
		ifTrue: [ (self scanForString: 'sealed') ifTrue: [ ^ self recordAndReportMatch: #(73) ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(120).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX6 [
	self recordMatch: #(111).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(112).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(113).
					self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX7 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX8 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(28).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX9 [
	self recordMatch: #(106).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(108) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment #patternToken)
]
