Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(77 'ALL' 15) #(77 'AND' 16) #(77 'AS' 17) #(77 'BEGIN' 18) #(77 'BT' 19) #(77 'BY' 20) #(77 'CASE' 21) #(77 'CAST' 22) #(77 'CHECK' 23) #(77 'CHECKPOINT' 24) #(77 'CREATE' 25) #(77 'DATABASE' 26) #(77 'DELETE' 27) #(77 'DISTINCT' 28) #(77 'DISTINCTROW' 29) #(77 'DROP' 30) #(77 'ELSE' 31) #(77 'END' 32) #(77 'ET' 33) #(77 'EXECUTE' 34) #(77 'FOR' 35) #(77 'FORMAT' 36) #(77 'FROM' 37) #(77 'GROUP' 38) #(77 'HELP' 39) #(77 'IN' 40) #(77 'INNER' 41) #(77 'INSERT' 42) #(77 'INTERVAL' 43) #(77 'INTO' 44) #(77 'IS' 45) #(77 'JOIN' 46) #(77 'LEFT' 47) #(77 'LIKE' 48) #(77 'LOADING' 49) #(77 'LOCK' 50) #(77 'LOCKING' 51) #(77 'MACRO' 52) #(77 'NOT' 53) #(77 'NULL' 54) #(77 'ON' 55) #(77 'OR' 56) #(77 'ORDER' 57) #(77 'OUTER' 58) #(77 'RIGHT' 59) #(77 'ROLLBACK' 60) #(77 'SEL' 61) #(77 'SELECT' 62) #(77 'SESSION' 63) #(77 'SET' 64) #(77 'SUBSTRING' 65) #(77 'TABLE' 66) #(77 'THEN' 67) #(77 'UPDATE' 68) #(77 'USING' 69) #(77 'VALUES' 70) #(77 'WHEN' 71) #(77 'WHERE' 72) #(77 'WITH' 73) #(77 'WORK' 74) #(77 'WORKLOAD' 75))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 129
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 130
]

{ #category : #generated }
TeradataScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
TeradataScanner >> scan1 [
	[ self recordMatch: #(77).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			(currentCharacter == $$
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan2 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(79).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan3 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(82) ].
			^ self scan3 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan4 [
	self step.
	(currentCharacter == $$
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(78).
			self step.
			currentCharacter == $.
				ifTrue: [ ^ self scan4 ].
			currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForToken [
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan4 ].
	^ self scanForTokenX8
]

{ #category : #generated }
TeradataScanner >> scanForTokenX1 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(82).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX2 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX3 [
	[ self recordMatch: #(81).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX4 [
	[ self recordMatch: #(80).
	self step.
	currentCharacter == $.
		ifTrue: [ [ self recordMatch: #(80).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX6 [
	self recordMatch: #(7).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX7 [
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX8 [
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX4 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX3 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
