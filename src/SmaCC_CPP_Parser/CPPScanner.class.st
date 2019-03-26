Class {
	#name : #CPPScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #'generated-initialization' }
CPPScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(129 'alignas' 54) #(129 'alignof' 55) #(129 'and' 44) #(129 'asm' 56) #(129 'auto' 57) #(129 'bool' 58) #(129 'break' 59) #(129 'case' 60) #(129 'catch' 61) #(129 'char' 62) #(129 'char16_t' 63) #(129 'char32_t' 64) #(129 'class' 65) #(129 'const' 66) #(129 'const_cast' 68) #(129 'constexpr' 67) #(129 'continue' 69) #(129 'decltype' 70) #(129 'default' 71) #(129 'delete' 72) #(129 'do' 73) #(129 'double' 74) #(129 'dynamic_cast' 75) #(129 'else' 76) #(129 'enum' 77) #(129 'explicit' 78) #(129 'extern' 79) #(129 'false' 80) #(129 'final' 81) #(129 'float' 82) #(129 'for' 83) #(129 'friend' 84) #(129 'goto' 85) #(129 'if' 86) #(129 'inline' 87) #(129 'int' 88) #(129 'long' 89) #(129 'mutable' 90) #(129 'namespace' 91) #(129 'new' 92) #(129 'noexcept' 93) #(129 'not' 45) #(129 'nullptr' 94) #(129 'operator' 95) #(129 'or' 46) #(129 'override' 96) #(129 'private' 97) #(129 'protected' 98) #(129 'public' 99) #(129 'register' 100) #(129 'reinterpret_cast' 101) #(129 'return' 102) #(129 'short' 103) #(129 'signed' 104) #(129 'sizeof' 105) #(129 'static' 106) #(129 'static_assert' 107) #(129 'static_cast' 108) #(129 'struct' 109) #(129 'switch' 110) #(129 'template' 111) #(129 'this' 112) #(129 'thread_local' 113) #(129 'throw' 114) #(129 'true' 115) #(129 'try' 116) #(129 'typedef' 117) #(129 'typeid' 118) #(129 'typename' 119) #(129 'union' 120) #(129 'unsigned' 121) #(129 'using' 122) #(129 'virtual' 123) #(129 'void' 124) #(129 'volatile' 125) #(129 'wchar_t' 126) #(129 'while' 127))
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
	^ 339
]

{ #category : #generated }
CPPScanner >> errorTokenId [
	^ 340
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
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ])
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan11 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan12 [
	self recordMatch: #(132).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan14 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan13 [
	[ self recordMatch: #(138).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan14 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
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
								ifTrue: [ ^ self scan13 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan16 [
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
										ifTrue: [ ^ self scan17 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan16X1 ].
	(('"''' includes: currentCharacter)
		or: [ (currentCharacter between: $0 and: $7)
				or: [ ('?\' includes: currentCharacter)
						or: [ (currentCharacter between: $a and: $b)
								or:
									[ 'fnrtv' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan16X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan12 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
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
				ifTrue: [ ^ self scan11 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan17 [
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
CPPScanner >> scan18 [
	[ self recordMatch: #(133).
	self step.
	currentCharacter == $'
		ifTrue:
			[ ^ self scan18X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan18X2
]

{ #category : #generated }
CPPScanner >> scan18X1 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan18X2 [
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan25 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan19 [
	[ self recordMatch: #(136).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan2 [
	self recordMatch: #(134).
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
										ifTrue: [ ^ self scan21 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan21 [
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
								ifTrue: [ ^ self scan19 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan22 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan22X1 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan22X1 [
	[ self recordMatch: #(133 136).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan22X1X1
]

{ #category : #generated }
CPPScanner >> scan22X1X1 [
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan25 ].
	((currentCharacter between: $A and: $E)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan23 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan24 [
	[ self recordMatch: #(133).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan24X1
]

{ #category : #generated }
CPPScanner >> scan24X1 [
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan25 ].
	((currentCharacter between: $A and: $E)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan25 [
	self recordMatch: #(133 136).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan26 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(140) ].
			^ self scan26 ].
	true ] whileTrue
]

{ #category : #generated }
CPPScanner >> scan27 [
	self step.
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan28 [
	[ self recordMatch: #(130 131).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan42 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan28X1
]

{ #category : #generated }
CPPScanner >> scan28X1 [
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan34 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $F and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $d)
												or: [ (currentCharacter between: $f and: $k)
														or: [ (currentCharacter between: $m and: $t)
																or: [ currentCharacter between: $v and: $z ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan29 [
	self recordMatch: #(133).
	^ self scan29X1
]

{ #category : #generated }
CPPScanner >> scan29X1 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan18 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self scan25 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan3 [
	[ self recordMatch: #(137).
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
	[ self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter == $.
		ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan24 ].
			('+-' includes: currentCharacter)
				ifTrue: [ ^ self scan23 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan31 [
	[ self recordMatch: #(135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan32 [
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
										ifTrue: [ ^ self scan33 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan33 [
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
								ifTrue: [ ^ self scan31 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan34 [
	self recordMatch: #(135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan34X1 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan34X1 [
	[ self recordMatch: #(133 135).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan36 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan34X1X2
]

{ #category : #generated }
CPPScanner >> scan34X1X1 [
	self recordMatch: #(133 135 136).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan36 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan34X1X2 [
	('FLfl' includes: currentCharacter)
		ifTrue:
			[ ^ self scan34X1X1 ].
	((currentCharacter between: $A and: $E)
		or: [ (currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $k)
												or: [ currentCharacter between: $m and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan35 [
	[ self recordMatch: #(135 136).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan36 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan36 [
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
										ifTrue: [ ^ self scan37 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan37 [
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
								ifTrue: [ ^ self scan35 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan38 [
	self recordMatch: #(130 135).
	self step.
	currentCharacter == $L
		ifTrue: [ ^ self scan39 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan40 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan39 [
	self recordMatch: #(130 135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan40 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $T)
				or: [ (currentCharacter between: $V and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $t)
										or: [ currentCharacter between: $v and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
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
	self recordMatch: #(130 135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan41 [
	self recordMatch: #(130 135).
	self step.
	currentCharacter == $L
		ifTrue: [ self recordMatch: #(130 135).
			self step.
			currentCharacter == $L
				ifTrue: [ ^ self scan40 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan32 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $K)
						or: [ (currentCharacter between: $M and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(130 135).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan32 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan40 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ currentCharacter between: $m and: $z ] ] ] ])
				ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ currentCharacter between: $m and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan42 [
	self recordMatch: #(130 135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan39 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan40 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $T)
				or: [ (currentCharacter between: $V and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan43 [
	self step.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(130).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan43 ].
			currentCharacter == $L
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan32 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan42 ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan41 ].
			((currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $k)
												or: [ (currentCharacter between: $m and: $t)
														or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
				ifTrue: [ ^ self scan31 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan44 [
	[ self recordMatch: #(130 135).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan45 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan42 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self scan44X1
]

{ #category : #generated }
CPPScanner >> scan44X1 [
	((currentCharacter between: $G and: $K)
		or: [ (currentCharacter between: $M and: $T)
				or: [ (currentCharacter between: $V and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $g and: $k)
										or: [ (currentCharacter between: $m and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan45 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(130).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan45 ].
			currentCharacter == $L
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan32 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan42 ].
			currentCharacter isDigit ] whileTrue.
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan41 ].
			((currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ])
				ifTrue: [ ^ self scan44 ].
			((currentCharacter between: $G and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $g and: $k)
												or: [ (currentCharacter between: $m and: $t)
														or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
				ifTrue: [ ^ self scan31 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan46 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter == $'
		ifTrue:
			[ ^ self scan46X1 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan42 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan46X2
]

{ #category : #generated }
CPPScanner >> scan46X1 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan46 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan46X2 [
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan34 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	((currentCharacter between: $A and: $D)
		or: [ (currentCharacter between: $F and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $d)
												or: [ (currentCharacter between: $f and: $k)
														or: [ (currentCharacter between: $m and: $t)
																or: [ currentCharacter between: $v and: $z ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan47 [
	[ self recordMatch: #(129).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan48 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan48 [
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
										ifTrue: [ ^ self scan49 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan49 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan49 [
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
								ifTrue: [ ^ self scan47 ] ] ] ].
	^ self reportLastMatch
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
	self recordMatch: #(129).
	self step.
	currentCharacter == $"
		ifTrue: [ [ self step.
			currentCharacter == $(
				ifTrue: [ [ self step.
					currentCharacter == $)
						ifTrue: [ ^ self scan51 ].
					true ] whileTrue ].
			true ] whileTrue ].
	currentCharacter == $\
		ifTrue: [ ^ self scan48 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan47 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan51 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan52 ].
	true ] whileTrue
]

{ #category : #generated }
CPPScanner >> scan52 [
	[ self recordMatch: #(134).
	self step.
	currentCharacter == $" ] whileTrue.
	currentCharacter == $\
		ifTrue: [ ^ self scan54 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ ^ self scan53 ].
	^ self scan51
]

{ #category : #generated }
CPPScanner >> scan53 [
	[ self recordMatch: #(137).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan52 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan54 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self scan51
]

{ #category : #generated }
CPPScanner >> scan54 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan52 ].
	currentCharacter == $U
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan52 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan52 ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $"
								ifTrue: [ ^ self scan52 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == $"
										ifTrue: [ ^ self scan52 ].
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan55 ] ] ] ].
			^ self scan51 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan55 ].
	^ self scan51
]

{ #category : #generated }
CPPScanner >> scan55 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan52 ].
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan52 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan52 ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == $"
								ifTrue: [ ^ self scan52 ].
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan53 ] ] ] ].
	^ self scan51
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
	[ self recordMatch: #(53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan9 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $[)
						or: [ currentCharacter >= $] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scan9 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self scan8 ].
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan9 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $[)
						or: [ currentCharacter >= $] ] ])
				ifTrue: [ ^ self scan8 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForToken [
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX18 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $#
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scanForTokenX17 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	^ self scanForTokenX21
]

{ #category : #generated }
CPPScanner >> scanForTokenX1 [
	self recordMatch: #(130 131).
	^ self scanForTokenX1X4
]

{ #category : #generated }
CPPScanner >> scanForTokenX10 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX11 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX12 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX13 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX14 [
	self recordMatch: #(33 128).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX15 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX16 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX17 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX18 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX19 [
	currentCharacter isDigit
		ifTrue: [ ^ self scan46 ].
	('LU' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX3 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ])
		ifTrue:
			[ ^ self scanForTokenX7 ].
	((currentCharacter between: $A and: $K)
		or: [ (currentCharacter between: $M and: $Q)
				or: [ (currentCharacter between: $S and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan47 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X1 [
	self recordMatch: #(135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	(currentCharacter between: $0 and: $1)
		ifTrue:
			[ ^ self scanForTokenX1X1X1 ].
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X1X1 [
	[ self recordMatch: #(130 135).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan42 ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	^ self scanForTokenX1X1X1X1
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X1X1X1 [
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $K)
				or: [ (currentCharacter between: $M and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $k)
												or: [ (currentCharacter between: $m and: $t)
														or: [ currentCharacter between: $v and: $z ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X2 [
	self recordMatch: #(135).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ ^ self scan44 ].
	((currentCharacter between: $G and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $g and: $z ] ])
		ifTrue: [ ^ self scan31 ].
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
		ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX1X4 [
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan42 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan30 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan28 ].
	('Bb' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan34 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	('Xx' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	^ self scanForTokenX1X3
]

{ #category : #generated }
CPPScanner >> scanForTokenX2 [
	self recordMatch: #(129).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $8
		ifTrue: [ self recordMatch: #(129).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan1 ].
			currentCharacter == $R
				ifTrue: [ ^ self scan50 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan48 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Q)
						or: [ (currentCharacter between: $S and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan47 ].
			^ self reportLastMatch ].
	currentCharacter == $R
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan48 ].
	((currentCharacter between: $0 and: $7)
		or: [ currentCharacter == $9
				or: [ (currentCharacter between: $A and: $Q)
						or: [ (currentCharacter between: $S and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan47 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX20 [
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $R
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self scanForTokenX19
]

{ #category : #generated }
CPPScanner >> scanForTokenX21 [
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX14 ].
	^ self scanForTokenX20
]

{ #category : #generated }
CPPScanner >> scanForTokenX3 [
	self recordMatch: #(129).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $R
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan48 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Q)
				or: [ (currentCharacter between: $S and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan47 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX4 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(140).
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
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX7 [
	[ self recordMatch: #(139).
	self step.
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPScanner >> scanForTokenX8 [
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
CPPScanner >> scanForTokenX9 [
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
CPPScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #directive nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]
