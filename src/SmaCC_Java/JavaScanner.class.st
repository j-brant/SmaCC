Class {
	#name : #JavaScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Java'
}

{ #category : #'generated-initialization' }
JavaScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(107 'abstract' 42) #(107 'assert' 43) #(107 'boolean' 44) #(107 'break' 45) #(107 'byte' 46) #(107 'case' 47) #(107 'catch' 48) #(107 'char' 49) #(107 'class' 50) #(107 'continue' 51) #(107 'default' 52) #(107 'do' 53) #(107 'double' 54) #(107 'else' 55) #(107 'enum' 56) #(107 'extends' 57) #(107 'false' 103) #(107 'final' 58) #(107 'finally' 59) #(107 'float' 60) #(107 'for' 61) #(107 'if' 62) #(107 'implements' 63) #(107 'import' 64) #(107 'instanceof' 65) #(107 'int' 66) #(107 'interface' 67) #(107 'long' 68) #(107 'native' 69) #(107 'new' 70) #(107 'null' 106) #(107 'package' 71) #(107 'private' 72) #(107 'protected' 73) #(107 'public' 74) #(107 'record' 75) #(107 'return' 76) #(107 'short' 77) #(107 'static' 78) #(107 'strictfp' 79) #(107 'super' 80) #(107 'switch' 81) #(107 'synchronized' 82) #(107 'this' 83) #(107 'throw' 84) #(107 'throws' 85) #(107 'transient' 86) #(107 'true' 103) #(107 'try' 87) #(107 'void' 88) #(107 'volatile' 89) #(107 'while' 90) #(107 'yield' 91))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JavaScanner >> GREATER_THANId [
	^ 98
]

{ #category : #generated }
JavaScanner >> SIGNED_RIGHT_SHIFTId [
	^ 99
]

{ #category : #generated }
JavaScanner >> UNSIGNED_RIGHT_SHIFTId [
	^ 100
]

{ #category : #generated }
JavaScanner >> emptySymbolTokenId [
	^ 313
]

{ #category : #generated }
JavaScanner >> errorTokenId [
	^ 314
]

{ #category : #generated }
JavaScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	true ] whileTrue
]

{ #category : #generated }
JavaScanner >> scan10 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(109) ].
			^ self scan10 ].
	true ] whileTrue
]

{ #category : #generated }
JavaScanner >> scan11 [
	self recordMatch: #(102).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan12 [
	[ self recordMatch: #(101).
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
		ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
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
	[ self recordMatch: #(101).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan16 [
	[ self recordMatch: #(101).
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
		ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan17 [
	[ self recordMatch: #(102).
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
	[ self recordMatch: #(101).
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
		ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan19 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(110).
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
	(self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	^ self scan3
]

{ #category : #generated }
JavaScanner >> scan5 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan6 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scan7 [
	[ self recordMatch: #(102).
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
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
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
	[ self recordMatch: #(102).
	self step.
	currentCharacter isDigit ] whileTrue.
	('DFdf' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForToken [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scanForTokenX21
]

{ #category : #generated }
JavaScanner >> scanForTokenX1 [
	self recordMatch: #(101).
	self step.
	^ self scanForTokenX1X3
]

{ #category : #generated }
JavaScanner >> scanForTokenX10 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX11 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX12 [
	[ self recordMatch: #(108).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX13 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX14 [
	self recordMatch: #(31).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX15 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX16 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX17 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX18 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX19 [
	[ self recordMatch: #(107).
	self step.
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue
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
		ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X1 ].
	((currentCharacter between: $D and: $F)
		or: [ currentCharacter between: $d and: $f ])
		ifTrue: [ ^ self recordAndReportMatch: #(102) ].
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
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(104) ].
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
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $` ifTrue: [ ^ self scan19 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(92) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(96) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(97) ].
	currentCharacter isDigit ifTrue: [ ^ self scan18 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scanForTokenX12 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ self scanForTokenX19 ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX21 [
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	^ self scanForTokenX20
]

{ #category : #generated }
JavaScanner >> scanForTokenX3 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan10 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(109).
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
		ifTrue: [ self recordMatch: #(105).
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
	self recordMatch: #(98).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(99).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(100).
					self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX6 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX7 [
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
JavaScanner >> scanForTokenX8 [
	self recordMatch: #(93).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(94) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(95) ].
	^ self reportLastMatch
]

{ #category : #generated }
JavaScanner >> scanForTokenX9 [
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
JavaScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment #patternToken)
]
