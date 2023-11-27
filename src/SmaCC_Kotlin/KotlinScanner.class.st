Class {
	#name : #KotlinScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Kotlin'
}

{ #category : #'generated-initialization' }
KotlinScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(133 'abstract' 113) #(133 'actual' 123) #(133 'annotation' 102) #(133 'as' 91) #(133 'break' 90) #(133 'by' 72) #(133 'catch' 82) #(133 'class' 64) #(133 'companion' 73) #(133 'const' 116) #(133 'constructor' 71) #(133 'continue' 89) #(133 'crossinline' 120) #(133 'data' 103) #(133 'delegate' 61) #(133 'do' 85) #(133 'dynamic' 95) #(133 'else' 79) #(133 'enum' 100) #(133 'expect' 122) #(133 'external' 110) #(133 'false' 130) #(133 'field' 54) #(133 'file' 53) #(133 'final' 114) #(133 'finally' 83) #(133 'for' 84) #(133 'fun' 66) #(133 'get' 56) #(133 'if' 78) #(133 'import' 63) #(133 'in' 93) #(133 'infix' 109) #(133 'init' 74) #(133 'inline' 108) #(133 'inner' 104) #(133 'interface' 65) #(133 'internal' 99) #(133 'is' 92) #(133 'lateinit' 117) #(133 'noinline' 119) #(133 'null' 131) #(133 'object' 67) #(133 'open' 115) #(133 'operator' 107) #(133 'out' 94) #(133 'override' 112) #(133 'package' 62) #(133 'param' 59) #(133 'private' 97) #(133 'property' 55) #(133 'protected' 98) #(133 'public' 96) #(133 'receiver' 58) #(133 'reified' 121) #(133 'return' 88) #(133 'sealed' 101) #(133 'set' 57) #(133 'setparam' 60) #(133 'super' 76) #(133 'suspend' 111) #(133 'tailrec' 106) #(133 'this' 75) #(133 'throw' 87) #(133 'true' 130) #(133 'try' 81) #(133 'typealias' 70) #(133 'val' 68) #(133 'value' 105) #(133 'var' 69) #(133 'vararg' 118) #(133 'when' 80) #(133 'where' 77) #(133 'while' 86))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #private }
KotlinScanner >> DelimitedComment [
	| count current previous |
	count := 0.
	[ stream atEnd ]
		whileFalse: [ current := stream next.
			(previous = $/ and: [ current = $* ])
				ifTrue: [ count := count + 1.
					previous := nil ]
				ifFalse: [ (previous = $* and: [ current = $/ ])
						ifTrue: [ count = 0 ifTrue: [ ^ self comment ].
							count := count - 1.
							previous := nil ]
						ifFalse: [ previous := current ] ] ].
	^ self scannerError
]

{ #category : #generated }
KotlinScanner >> emptySymbolTokenId [
	^ 423
]

{ #category : #generated }
KotlinScanner >> errorTokenId [
	^ 424
]

{ #category : #generated }
KotlinScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self scan1X4
]

{ #category : #generated }
KotlinScanner >> scan10 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan11 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan12 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(33).
			self step.
			currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan13 [
	[ self recordMatch: #(124).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan13 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan14 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan15 [
	[ self recordMatch: #(124).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan16 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan17 [
	self recordMatch: #(125).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	^ self scan17X2
]

{ #category : #generated }
KotlinScanner >> scan17X1 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan17X2 [
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan17X1 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan18 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan19 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan1X1 [
	[ self recordMatch: #(133).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
KotlinScanner >> scan1X2 [
	currentCharacter == $` ifTrue: [ ^ self scan29 ].
	currentCharacter == $a ifTrue: [ ^ self scan30 ].
	currentCharacter == $b ifTrue: [ ^ self scan31 ].
	currentCharacter == $c ifTrue: [ ^ self scan34 ].
	currentCharacter == $r ifTrue: [ ^ self scan40 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $| ifTrue: [ ^ self scan44 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	currentCharacter isSeparator ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ self scan1X1 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan1X3 [
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $/ ifTrue: [ ^ self scan16 ].
	currentCharacter == $0 ifTrue: [ ^ self scan17 ].
	currentCharacter == $: ifTrue: [ ^ self scan25 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $< ifTrue: [ ^ self scan26 ].
	currentCharacter == $= ifTrue: [ ^ self scan27 ].
	currentCharacter == $> ifTrue: [ ^ self scan28 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scan1X2
]

{ #category : #generated }
KotlinScanner >> scan1X4 [
	currentCharacter == Character cr ifTrue: [ ^ self scan2 ].
	currentCharacter == $! ifTrue: [ ^ self scan3 ].
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	currentCharacter == $% ifTrue: [ ^ self scan5 ].
	currentCharacter == $& ifTrue: [ ^ self scan6 ].
	currentCharacter == $' ifTrue: [ ^ self scan7 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scan9 ].
	currentCharacter == $+ ifTrue: [ ^ self scan10 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $- ifTrue: [ ^ self scan11 ].
	^ self scan1X3
]

{ #category : #generated }
KotlinScanner >> scan2 [
	self recordMatch: #(5).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan20 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan21 [
	[ self recordMatch: #(127).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan21 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan22 [
	self recordMatch: #(128).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(128) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan23 [
	[ self recordMatch: #(126).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan24 [
	[ self recordMatch: #(125).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan24 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan25 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan26 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan27 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(46) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan28 [
	self recordMatch: #(39).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan29 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $_)
						or: [ currentCharacter >= $a ] ] ])
		ifTrue: [ [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(133) ].
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan3 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(43) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan30 [
	(self scanForString: 's?' match: #(133))
		ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan31 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $r ifTrue: [ ^ self scan32 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan32 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $e ifTrue: [ ^ self scan33 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan33 [
	(self scanForString: 'ak@' match: #(133))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(50) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(50).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan34 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $o ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan35 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $n ifTrue: [ ^ self scan36 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan36 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $t ifTrue: [ ^ self scan37 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan37 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $i ifTrue: [ ^ self scan38 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan38 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $n ifTrue: [ ^ self scan39 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan39 [
	(self scanForString: 'ue@' match: #(133))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(49) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(49).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan4 [
	self recordMatch: #(134).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(135) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan40 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $e ifTrue: [ ^ self scan41 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan41 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $t ifTrue: [ ^ self scan42 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan42 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $u ifTrue: [ ^ self scan43 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan43 [
	(self scanForString: 'rn@' match: #(133))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(48) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(48).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan44 [
	self step.
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan45 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(136) ].
	currentCharacter == $$ ifTrue: [ ^ self scan45X1 ].
	currentCharacter == $\ ifTrue: [ ^ self scan45X2 ].
	true
		ifTrue: [ [ self recordMatch: #(138).
			self step.
			currentCharacter <= $!
				or: [ currentCharacter == $#
						or: [ (currentCharacter between: $% and: $[) or: [ currentCharacter >= $] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan45X1 [
	self recordMatch: #(138).
	self step.
	currentCharacter == $`
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $_)
								or: [ currentCharacter >= $a ] ] ])
				ifTrue: [ [ self step.
					currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(137) ].
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(140) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(137).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan45X2 [
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
										ifTrue: [ ^ self recordAndReportMatch: #(139) ] ] ] ].
			^ self reportLastMatch ].
	('"$''\bnrt' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(139) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan46 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan2 ].
	currentCharacter == $! ifTrue: [ ^ self scan3 ].
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	^ self scan46X5
]

{ #category : #generated }
KotlinScanner >> scan46X1 [
	self step.
	currentCharacter == $!
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan46X2 [
	[ self recordMatch: #(133).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
KotlinScanner >> scan46X3 [
	currentCharacter == $b ifTrue: [ ^ self scan31 ].
	currentCharacter == $c ifTrue: [ ^ self scan34 ].
	currentCharacter == $r ifTrue: [ ^ self scan40 ].
	currentCharacter == $s ifTrue: [ ^ self scan47 ].
	currentCharacter == $t ifTrue: [ ^ self scan50 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $| ifTrue: [ ^ self scan44 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	currentCharacter isSeparator ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ self scan46X2 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan46X4 [
	currentCharacter == $0 ifTrue: [ ^ self scan17 ].
	currentCharacter == $: ifTrue: [ ^ self scan25 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $< ifTrue: [ ^ self scan26 ].
	currentCharacter == $= ifTrue: [ ^ self scan27 ].
	currentCharacter == $> ifTrue: [ ^ self scan28 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $` ifTrue: [ ^ self scan29 ].
	currentCharacter == $a ifTrue: [ ^ self scan30 ].
	^ self scan46X3
]

{ #category : #generated }
KotlinScanner >> scan46X5 [
	currentCharacter == $# ifTrue: [ ^ self scan46X1 ].
	currentCharacter == $% ifTrue: [ ^ self scan5 ].
	currentCharacter == $& ifTrue: [ ^ self scan6 ].
	currentCharacter == $' ifTrue: [ ^ self scan7 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scan9 ].
	currentCharacter == $+ ifTrue: [ ^ self scan10 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $- ifTrue: [ ^ self scan11 ].
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $/ ifTrue: [ ^ self scan16 ].
	^ self scan46X4
]

{ #category : #generated }
KotlinScanner >> scan47 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $u ifTrue: [ ^ self scan48 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan48 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $p ifTrue: [ ^ self scan49 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan49 [
	(self scanForString: 'er@' match: #(133))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(52) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(52).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan5 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan50 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $h ifTrue: [ ^ self scan51 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan51 [
	(self scanForString: 'is@' match: #(133))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(51) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(133).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan6 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan7 [
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
												ifTrue: [ ^ self scan8 ] ] ] ].
					^ self reportLastMatch ].
			('"$''\bnrt' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
			^ self reportLastMatch ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ currentCharacter >= $( ] ] ]) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan8 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan9 [
	self recordMatch: #(14).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scanForToken [
	scope == #MultiLineString ifTrue: [ ^ self scanForTokenX1 ].
	scope == #LineString ifTrue: [ ^ self scan45 ].
	scope == #Inside ifTrue: [ ^ self scan1 ].
	scope == #default ifTrue: [ ^ self scan46 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""' match: #(142))
				ifTrue: [ [ self recordMatch: #(141 142).
					self step.
					currentCharacter == $" ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $$ ifTrue: [ ^ self scanForTokenX1X1 ].
	true
		ifTrue: [ [ self recordMatch: #(144).
			self step.
			currentCharacter <= $!
				or: [ currentCharacter == $# or: [ currentCharacter >= $% ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scanForTokenX1X1 [
	self recordMatch: #(144).
	self step.
	currentCharacter == $`
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $_)
								or: [ currentCharacter >= $a ] ] ])
				ifTrue: [ [ self step.
					currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(143) ].
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(145) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(143).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> tokenActions [
	^ #(nil #DelimitedComment #comment #whitespace)
]
