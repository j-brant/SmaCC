Class {
	#name : #CPPPreprocessorScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #'generated-initialization' }
CPPPreprocessorScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(68 'define' #(53 #(#default))) #(68 'defined' #(54 #(#default))) #(68 'elif' #(55 #(#default))) #(68 'else' #(56 #(#default))) #(68 'endif' #(57 #(#default))) #(68 'error' #(58 #(#default))) #(68 'if' #(59 #(#default))) #(68 'ifdef' #(60 #(#default))) #(68 'ifndef' #(61 #(#default))) #(68 'include' #(62 #(#default))) #(68 'include_next' #(63 #(#default))) #(68 'line' #(64 #(#default))) #(68 'pragma' #(65 #(#default))) #(68 'undef' #(66 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
CPPPreprocessorScanner >> emptySymbolTokenId [
	^ 101
]

{ #category : #generated }
CPPPreprocessorScanner >> errorTokenId [
	^ 102
]

{ #category : #private }
CPPPreprocessorScanner >> lineContinuation [
	^ self whitespace
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $!
		ifTrue:
			[ ^ self scan1X20 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan1X19 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scan1X18 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scan1X23
]

{ #category : #generated }
CPPPreprocessorScanner >> scan10 [
	[ self recordMatch: #(71).
	self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan10 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan11 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan13 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan12 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan13 [
	[ self recordMatch: #(71).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan12 ].
	currentCharacter isDigit ] whileTrue.
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan14 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(73) ].
			^ self scan14 ].
	true ] whileTrue
]

{ #category : #generated }
CPPPreprocessorScanner >> scan15 [
	self step.
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan16 [
	[ self recordMatch: #(69).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan22 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan17 [
	self recordMatch: #(71).
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan18 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan18 ].
			^ self reportLastMatch ].
	currentCharacter == $.
		ifTrue: [ ^ self scan17 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan19 [
	self recordMatch: #(69).
	self step.
	currentCharacter == $L
		ifTrue: [ ^ self scan20 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(69) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X1 [
	self recordMatch: #(69).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan22 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan21 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X10 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X11 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X12 [
	self recordMatch: #(8).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X13 [
	[ self recordMatch: #(74).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X14 [
	self recordMatch: #(43).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X15 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X16 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X17 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X18 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X19 [
	self recordMatch: #(51).
	self step.
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X2 [
	self recordMatch: #(68).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $8
		ifTrue: [ self recordMatch: #(68).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan3 ].
			currentCharacter == $R
				ifTrue: [ ^ self scan30 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan27 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Q)
						or: [ (currentCharacter between: $S and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan26 ].
			^ self reportLastMatch ].
	currentCharacter == $R
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	((currentCharacter between: $0 and: $7)
		or: [ currentCharacter == $9
				or: [ (currentCharacter between: $A and: $Q)
						or: [ (currentCharacter between: $S and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X20 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X21 [
	currentCharacter isDigit
		ifTrue: [ ^ self scan25 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue:
			[ ^ self scan1X13 ].
	('LU' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X3 ].
	((currentCharacter between: $A and: $K)
		or: [ (currentCharacter between: $M and: $Q)
				or: [ (currentCharacter between: $S and: $T)
						or: [ (currentCharacter between: $V and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X22 [
	currentCharacter == $>
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $R
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $\
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scan1X14 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self scan1X21
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X23 [
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scan1X17 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X15 ].
	^ self scan1X22
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X3 [
	self recordMatch: #(68).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $R
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Q)
				or: [ (currentCharacter between: $S and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X4 [
	self recordMatch: #(25).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(73).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X5 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan31 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X6 [
	self recordMatch: #(19).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X7 [
	self recordMatch: #(36).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(38).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(39) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X8 [
	self recordMatch: #(30).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(31).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(32) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan1X9 [
	self recordMatch: #(46).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan2 [
	self recordMatch: #(75).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan20 [
	self recordMatch: #(69).
	self step.
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(69) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan21 [
	self recordMatch: #(69).
	self step.
	currentCharacter == $L
		ifTrue: [ self recordMatch: #(69).
			self step.
			currentCharacter == $L
				ifTrue: [ ^ self recordAndReportMatch: #(69) ].
			^ self reportLastMatch ].
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(69).
			self step.
			currentCharacter == $l
				ifTrue: [ ^ self recordAndReportMatch: #(69) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan22 [
	self recordMatch: #(69).
	self step.
	currentCharacter == $l
		ifTrue: [ ^ self scan20 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(69) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan23 [
	self step.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(69).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $L
				ifTrue: [ ^ self scan19 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan22 ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan21 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan24 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(69).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $L
				ifTrue: [ ^ self scan19 ].
			currentCharacter == $l
				ifTrue: [ ^ self scan22 ].
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan21 ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan25 [
	[ self recordMatch: #(69).
	self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	currentCharacter == $.
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $L
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan26 [
	[ self recordMatch: #(68).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan27 [
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan28 [
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
CPPPreprocessorScanner >> scan29 [
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
								ifTrue: [ ^ self scan26 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan3 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(72) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan30 [
	self recordMatch: #(68).
	self step.
	currentCharacter == $"
		ifTrue:
			[ ^ self scan30X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan30X1 [
	[ self step.
	currentCharacter == $(
		ifTrue: [ [ self step.
			currentCharacter == $)
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self recordAndReportMatch: #(72) ].
					currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $')
								or: [ currentCharacter >= $* ] ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $')
				or: [ currentCharacter >= $* ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan31 [
	self recordMatch: #(76).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan32 [
	[ self recordMatch: #(68).
	self step.
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(67) ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $U
				ifTrue: [ ^ self scan33 ].
			currentCharacter == $u
				ifTrue: [ ^ self scan34 ].
			^ self reportLastMatch ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan33 [
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
								ifTrue: [ ^ self scan34 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan34 [
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
								ifTrue: [ ^ self scan32 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan35 [
	[ self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	true ] whileTrue
]

{ #category : #generated }
CPPPreprocessorScanner >> scan36 [
	[ self recordMatch: #(2).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $[)
						or: [ currentCharacter >= $] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan37 [
	[ self recordMatch: #(2).
	self step.
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(2).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $[)
						or: [ currentCharacter >= $] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ] whileTrue.
	^ self scan36
]

{ #category : #generated }
CPPPreprocessorScanner >> scan4 [
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan4X2 ].
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
	currentCharacter == $x
		ifTrue:
			[ ^ self scan4X1 ].
	(currentCharacter == Character lf
		or: [ ('"''' includes: currentCharacter)
				or: [ (currentCharacter between: $0 and: $7)
						or: [ ('?\' includes: currentCharacter)
								or: [ (currentCharacter between: $a and: $b)
										or:
											[ 'fnrtv' includes: currentCharacter ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan4X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self recordAndReportMatch: #(72) ].
			currentCharacter == $\
				ifTrue: [ ^ self scan4 ].
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
				ifTrue: [ ^ self scan3 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan4X2 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(72) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	(currentCharacter <= Character newPage
		or: [ (currentCharacter between: (Character value: 14) and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ currentCharacter >= $] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan5 [
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
CPPPreprocessorScanner >> scan6 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan7 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan8 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan8 [
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan8X2 ].
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
										ifTrue: [ ^ self scan9 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan8X1 ].
	(currentCharacter == Character lf
		or: [ ('"''' includes: currentCharacter)
				or: [ (currentCharacter between: $0 and: $7)
						or: [ ('?\' includes: currentCharacter)
								or: [ (currentCharacter between: $a and: $b)
										or:
											[ 'fnrtv' includes: currentCharacter ] ] ] ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan8X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self recordAndReportMatch: #(70) ].
			currentCharacter == $\
				ifTrue: [ ^ self scan8 ].
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
				ifTrue: [ ^ self scan7 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan8X2 [
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter == $\
		ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character newPage
		or: [ (currentCharacter between: (Character value: 14) and: $&)
				or: [ (currentCharacter between: $( and: $[)
						or: [ currentCharacter >= $] ] ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scan9 [
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
								ifTrue: [ ^ self scan7 ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForToken [
	scope == #filename
		ifTrue:
			[ ^ self scanForTokenX1 ].
	scope == #error
		ifTrue:
			[ ^ self scanForTokenX3 ].
	^ self scanForTokenX7
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self recordAndReportMatch: #(3) ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(30).
			self step.
			currentCharacter == $=
				ifTrue: [ self recordMatch: #(33).
					self step.
					currentCharacter == $>
						ifTrue: [ ^ self recordAndReportMatch: #(3) ].
					^ self scan35 ].
			(currentCharacter <= $< or: [ currentCharacter >= $? ])
				ifTrue: [ ^ self scan35 ].
			^ self reportLastMatch ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(36).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(37) ].
			^ self reportLastMatch ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self recordMatch: #(74).
			self step.
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(73).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX3 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX4 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan31 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX5 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	^ self scan36
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX6 [
	[ self recordMatch: #(74).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> scanForTokenX7 [
	scope == #macro
		ifTrue:
			[ ^ self scanForTokenX5 ].
	scope == #default
		ifTrue: [ ^ self scan1 ].
	scope == #define
		ifTrue: [ self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(75) ].
			currentCharacter == Character cr
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $/
				ifTrue:
					[ ^ self scanForTokenX2 ].
			currentCharacter == $\
				ifTrue:
					[ ^ self scanForTokenX4 ].
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space ])
				ifTrue:
					[ ^ self scanForTokenX6 ].
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ ^ self scan32 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CPPPreprocessorScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment #whitespace nil #lineContinuation)
]
