Class {
	#name : #CPPScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #'generated-initialization' }
CPPScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(126 'alignas' 51) #(126 'alignof' 52) #(126 'asm' 53) #(126 'auto' 54) #(126 'bool' 55) #(126 'break' 56) #(126 'case' 57) #(126 'catch' 58) #(126 'char' 59) #(126 'char16_t' 60) #(126 'char32_t' 61) #(126 'class' 62) #(126 'const' 63) #(126 'const_cast' 65) #(126 'constexpr' 64) #(126 'continue' 66) #(126 'decltype' 67) #(126 'default' 68) #(126 'delete' 69) #(126 'do' 70) #(126 'double' 71) #(126 'dynamic_cast' 72) #(126 'else' 73) #(126 'enum' 74) #(126 'explicit' 75) #(126 'extern' 76) #(126 'false' 77) #(126 'final' 78) #(126 'float' 79) #(126 'for' 80) #(126 'friend' 81) #(126 'goto' 82) #(126 'if' 83) #(126 'inline' 84) #(126 'int' 85) #(126 'long' 86) #(126 'mutable' 87) #(126 'namespace' 88) #(126 'new' 89) #(126 'noexcept' 90) #(126 'nullptr' 91) #(126 'operator' 92) #(126 'override' 93) #(126 'private' 94) #(126 'protected' 95) #(126 'public' 96) #(126 'register' 97) #(126 'reinterpret_cast' 98) #(126 'return' 99) #(126 'short' 100) #(126 'signed' 101) #(126 'sizeof' 102) #(126 'static' 103) #(126 'static_assert' 104) #(126 'static_cast' 105) #(126 'struct' 106) #(126 'switch' 107) #(126 'template' 108) #(126 'this' 109) #(126 'thread_local' 110) #(126 'throw' 111) #(126 'true' 112) #(126 'try' 113) #(126 'typedef' 114) #(126 'typeid' 115) #(126 'typename' 116) #(126 'union' 117) #(126 'unsigned' 118) #(126 'using' 119) #(126 'virtual' 120) #(126 'void' 121) #(126 'volatile' 122) #(126 'wchar_t' 123) #(126 'while' 124))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #private }
CPPScanner >> directive [
	^ self whitespace
]

{ #category : #generated }
CPPScanner >> emptySymbolTokenId [
	^ 336
]

{ #category : #generated }
CPPScanner >> errorTokenId [
	^ 337
]

{ #category : #generated }
CPPScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan6 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan10 [
	self recordMatch: #(129).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan12 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan11 [
	[ self recordMatch: #(135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan12 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan12 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan13 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan13 [
	self step.
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
								ifTrue: [ ^ self scan11 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan14 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan15 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan14X1 ].
	(('"''' includes: currentCharacter)
		or: [ (currentCharacter between: $0 and: $7)
				or: [ ('?\' includes: currentCharacter)
						or: [ (currentCharacter between: $a and: $b)
								or:
									[ 'fnrtv' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan14X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan10 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan14 ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $&)
								or: [ (currentCharacter between: $( and: $/)
										or: [ (currentCharacter between: $: and: $@)
												or: [ (currentCharacter between: $G and: $[)
														or: [ (currentCharacter between: $] and: $`)
																or: [ currentCharacter >= $g ] ] ] ] ] ] ])
				ifTrue: [ ^ self scan9 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan15 [
	self step.
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
								ifTrue: [ ^ self scan9 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan16 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter == $'
		ifTrue:
			[ ^ self scan16X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan16X2
]

{ #category : #generated }
CPPScanner >> scan16X1 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan16X2 [
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan20 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan17 [
	[ self recordMatch: #(133).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan18 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan19 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan19 [
	self step.
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
								ifTrue: [ ^ self scan17 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan2 [
	self recordMatch: #(131).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan20 [
	self recordMatch: #(133).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan20X1 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan21 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan20X1 [
	[ self recordMatch: #(130 133).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan20X1X1
]

{ #category : #generated }
CPPScanner >> scan20X1X1 [
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: $A and: $E)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan21 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan22 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan22X1
]

{ #category : #generated }
CPPScanner >> scan22X1 [
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: $A and: $E)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan23 [
	self recordMatch: #(130 133).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan24 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(137) ].
			^ self scan24 ].
	true ] whileTrue
]

{ #category : #generated }
CPPScanner >> scan25 [
	self step.
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan28 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan26 [
	[ self recordMatch: #(127 128).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan40 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan28 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan26X1
]

{ #category : #generated }
CPPScanner >> scan26X1 [
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan32 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan39 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $F and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $d)
												or: [ (currentCharacter between: $f and: $k)
														or: [ (currentCharacter between: $m and: $t)
																or: [ currentCharacter between: $v and: $z ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan27 [
	self recordMatch: #(130).
	^ self scan27X1
]

{ #category : #generated }
CPPScanner >> scan27X1 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan20 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan28 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan28 ].
			^ self reportLastMatch ].
	currentCharacter == $.
		ifTrue: [ ^ self scan27 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan22 ].
			('+-' includes: currentCharacter)
				ifTrue: [ ^ self scan21 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan29 [
	[ self recordMatch: #(132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan3 [
	[ self recordMatch: #(134).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan30 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan31 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan31 [
	self step.
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
								ifTrue: [ ^ self scan29 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan32 [
	self recordMatch: #(132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan32X1 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan21 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan32X1 [
	[ self recordMatch: #(130 132).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan34 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan32X1X2
]

{ #category : #generated }
CPPScanner >> scan32X1X1 [
	self recordMatch: #(130 132 133).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan34 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan32X1X2 [
	('FLfl' includes: currentCharacter)
		ifTrue:
			[ ^ self scan32X1X1 ].
	((currentCharacter between: $A and: $E)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan33 [
	[ self recordMatch: #(132 133).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan34 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan34 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan35 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan35 [
	self step.
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
								ifTrue: [ ^ self scan33 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan36 [
	self recordMatch: #(127 132).
	self step.
	currentCharacter == $L
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan38 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan37 [
	self recordMatch: #(127 132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan38 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $T)
				or: [ (currentCharacter between: $V and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $t)
										or: [ currentCharacter between: $v and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan38 [
	self recordMatch: #(127 132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan39 [
	self recordMatch: #(127 132).
	self step.
	currentCharacter == $L
		ifTrue: [ self recordMatch: #(127 132).
			self step.
			currentCharacter == $L
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan30 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $K)
						or: [ (currentCharacter between: $M and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan29 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(127 132).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan30 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan38 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ currentCharacter between: $m and: $z ] ] ] ])
				ifTrue: [ ^ self scan29 ].
			^ self reportLastMatch ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ currentCharacter between: $m and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan4 [
	self step.
	currentCharacter == $U
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
	currentCharacter == $u
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan40 [
	self recordMatch: #(127 132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan37 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan38 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $T)
				or: [ (currentCharacter between: $V and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan41 [
	self step.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(127).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan41 ].
			currentCharacter == $L
				ifTrue: [ ^ self scan36 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan30 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan40 ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan39 ].
			((currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $k)
												or: [ (currentCharacter between: $m and: $t)
														or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
				ifTrue: [ ^ self scan29 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan42 [
	[ self recordMatch: #(127 132).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan40 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan39 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self scan42X1
]

{ #category : #generated }
CPPScanner >> scan42X1 [
	((currentCharacter between: $G and: $K)
		or: [ (currentCharacter between: $M and: $T)
				or: [ (currentCharacter between: $V and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $g and: $k)
										or: [ (currentCharacter between: $m and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan43 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(127).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan43 ].
			currentCharacter == $L
				ifTrue: [ ^ self scan36 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan30 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan40 ].
			currentCharacter isDigit ] whileTrue.
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan39 ].
			((currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ])
				ifTrue: [ ^ self scan42 ].
			((currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $g and: $k)
												or: [ (currentCharacter between: $m and: $t)
														or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
				ifTrue: [ ^ self scan29 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan44 [
	[ self recordMatch: #(127).
	self step.
	currentCharacter == $'
		ifTrue:
			[ ^ self scan44X1 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan40 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan44X2
]

{ #category : #generated }
CPPScanner >> scan44X1 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan44X2 [
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan32 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan39 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $F and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $d)
												or: [ (currentCharacter between: $f and: $k)
														or: [ (currentCharacter between: $m and: $t)
																or: [ currentCharacter between: $v and: $z ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan45 [
	[ self recordMatch: #(126).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan46 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan46 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan47 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan47 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan47 [
	self step.
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
								ifTrue: [ ^ self scan45 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan48 [
	self recordMatch: #(126).
	self step.
	currentCharacter == $"
		ifTrue: [ [ self step.
			currentCharacter == $(
				ifTrue: [ [ self step.
					currentCharacter == $)
						ifTrue: [ ^ self scan49 ].
					true ] whileTrue ].
			true ] whileTrue ].
	currentCharacter == $\
		ifTrue: [ ^ self scan46 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan45 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan49 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan50 ].
	true ] whileTrue
]

{ #category : #generated }
CPPScanner >> scan5 [
	self step.
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
								ifTrue: [ ^ self scan3 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan50 [
	[ self recordMatch: #(131).
	self step.
	currentCharacter == $" ] whileTrue.
	currentCharacter == $\
		ifTrue: [ ^ self scan52 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan51 ].
	^ self scan49
]

{ #category : #generated }
CPPScanner >> scan51 [
	[ self recordMatch: #(134).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan52 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self scan49
]

{ #category : #generated }
CPPScanner >> scan52 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $U
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan50 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan50 ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $"
								ifTrue: [ ^ self scan50 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $"
										ifTrue: [ ^ self scan50 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan53 ] ] ] ].
			^ self scan49 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan53 ].
	^ self scan49
]

{ #category : #generated }
CPPScanner >> scan53 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan50 ].
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan50 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan50 ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $"
								ifTrue: [ ^ self scan50 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan51 ] ] ] ].
	^ self scan49
]

{ #category : #generated }
CPPScanner >> scan6 [
	self step.
	currentCharacter == $U
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
										ifTrue: [ ^ self scan7 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan6X1 ].
	(('"''' includes: currentCharacter)
		or: [ (currentCharacter between: $0 and: $7)
				or: [ ('?\' includes: currentCharacter)
						or: [ (currentCharacter between: $a and: $b)
								or:
									[ 'fnrtv' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan6X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan6 ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $!)
								or: [ (currentCharacter between: $# and: $/)
										or: [ (currentCharacter between: $: and: $@)
												or: [ (currentCharacter between: $G and: $[)
														or: [ (currentCharacter between: $] and: $`)
																or: [ currentCharacter >= $g ] ] ] ] ] ] ])
				ifTrue: [ ^ self scan1 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan7 [
	self step.
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
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan8 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan14 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ])
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan9 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan14 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForToken [
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX19 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scanForTokenX18 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	^ self scanForTokenX22
]

{ #category : #generated }
CPPScanner >> scanForTokenX1 [
	self recordMatch: #(127 128).
	^ self scanForTokenX1X4
]

{ #category : #generated }
CPPScanner >> scanForTokenX10 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(30).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(31) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX11 [
	self recordMatch: #(45).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX12 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX13 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX14 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX15 [
	self recordMatch: #(33 125).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX16 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX17 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX18 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX19 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X1 [
	self recordMatch: #(132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	(currentCharacter between: $0 and: $1)
		ifTrue:
			[ ^ self scanForTokenX1X1X1 ].
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X1X1 [
	[ self recordMatch: #(127 132).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan40 ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	^ self scanForTokenX1X1X1X1
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X1X1X1 [
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan39 ].
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $k)
												or: [ (currentCharacter between: $m and: $t)
														or: [ currentCharacter between: $v and: $z ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X2 [
	self recordMatch: #(132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ ^ self scan42 ].
	((currentCharacter between: $G and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $g and: $z ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X3 [
	(currentCharacter == $A
		or: [ (currentCharacter between: $C and: $D)
				or: [ (currentCharacter between: $F and: $K)
						or: [ (currentCharacter between: $M and: $T)
								or: [ (currentCharacter between: $V and: $W)
										or: [ (currentCharacter between: $Y and: $Z)
												or: [ ('_a' includes: currentCharacter)
														or: [ (currentCharacter between: $c and: $d)
																or: [ (currentCharacter between: $f and: $k)
																		or: [ (currentCharacter between: $m and: $t)
																				or: [ (currentCharacter between: $v and: $w)
																						or: [ currentCharacter between: $y and: $z ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X4 [
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan40 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan28 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan26 ].
	('Bb' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan32 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan39 ].
	('Xx' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	^ self scanForTokenX1X3
]

{ #category : #generated }
CPPScanner >> scanForTokenX2 [
	self recordMatch: #(126).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $8
		ifTrue: [ self recordMatch: #(126).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan1 ].
			currentCharacter == $R
				ifTrue: [ ^ self scan48 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan46 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Q)
						or: [ (currentCharacter between: $S and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan45 ].
			^ self reportLastMatch ].
	currentCharacter == $R
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan46 ].
	((currentCharacter between: $0 and: $7)
		or: [ currentCharacter == $9
				or: [ (currentCharacter between: $A and: $Q)
						or: [ (currentCharacter between: $S and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan45 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX20 [
	currentCharacter isDigit
		ifTrue: [ ^ self scan44 ].
	('LU' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX3 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ])
		ifTrue:
			[ ^ self scanForTokenX8 ].
	((currentCharacter between: $A and: $K)
		or: [ (currentCharacter between: $M and: $Q)
				or: [ (currentCharacter between: $S and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan45 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX21 [
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $R
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan46 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self scanForTokenX20
]

{ #category : #generated }
CPPScanner >> scanForTokenX22 [
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX17 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX15 ].
	^ self scanForTokenX21
]

{ #category : #generated }
CPPScanner >> scanForTokenX3 [
	self recordMatch: #(126).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $R
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan46 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Q)
				or: [ (currentCharacter between: $S and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan45 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX4 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(137).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX5 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(19).
			self step.
			currentCharacter == $*
				ifTrue: [ ^ self recordAndReportMatch: #(20) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX6 [
	[ self recordMatch: #(50).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX7 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX8 [
	[ self recordMatch: #(136).
	self step.
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX9 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(37).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(38) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #directive nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]
