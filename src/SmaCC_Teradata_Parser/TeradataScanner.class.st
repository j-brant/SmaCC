Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(112 'ALL' 15) #(112 'AND' 16) #(112 'AS' 17) #(112 'BEGIN' 18) #(112 'BETWEEN' 19) #(112 'BIGINT' 20) #(112 'BOTH' 21) #(112 'BT' 22) #(112 'BY' 23) #(112 'BYTEINT' 24) #(112 'CASE' 25) #(112 'CAST' 26) #(112 'CHAR' 27) #(112 'CHECK' 28) #(112 'CHECKPOINT' 29) #(112 'CLOB' 30) #(112 'CREATE' 31) #(112 'CROSS' 32) #(112 'DATABASE' 33) #(112 'DATE' 34) #(112 'DECIMAL' 35) #(112 'DEL' 36) #(112 'DELETE' 37) #(112 'DISTINCT' 38) #(112 'DISTINCTROW' 39) #(112 'DROP' 40) #(112 'ELSE' 41) #(112 'END' 42) #(112 'ERRORFILES' 43) #(112 'ESCAPE' 44) #(112 'ET' 45) #(112 'EXECUTE' 46) #(112 'EXTRACT' 47) #(112 'FLOAT' 48) #(112 'FOR' 49) #(112 'FORMAT' 50) #(112 'FROM' 51) #(112 'GROUP' 52) #(112 'HAVING' 53) #(112 'HELP' 54) #(112 'IN' 55) #(112 'INNER' 56) #(112 'INSERT' 57) #(112 'INTEGER' 58) #(112 'INTERVAL' 59) #(112 'INTO' 60) #(112 'IS' 61) #(112 'JOIN' 62) #(112 'LEADING' 63) #(112 'LEFT' 64) #(112 'LIKE' 65) #(112 'LOADING' 66) #(112 'LOCK' 67) #(112 'LOCKING' 68) #(112 'MACRO' 69) #(112 'MATCHED' 70) #(112 'MERGE' 71) #(112 'MOD' 72) #(112 'NOT' 73) #(112 'NULL' 74) #(112 'NUMBER' 75) #(112 'NUMERIC' 76) #(112 'ON' 77) #(112 'OR' 78) #(112 'ORDER' 79) #(112 'OUTER' 80) #(112 'OVER' 81) #(112 'PARTITION' 82) #(112 'QUALIFY' 83) #(112 'REAL' 84) #(112 'RECURSIVE' 85) #(112 'RIGHT' 86) #(112 'ROLLBACK' 87) #(112 'SEL' 88) #(112 'SELECT' 89) #(112 'SESSION' 90) #(112 'SET' 91) #(112 'SMALLINT' 92) #(112 'SUBSTRING' 93) #(112 'TABLE' 94) #(112 'THEN' 95) #(112 'TIME' 96) #(112 'TIMESTAMP' 97) #(112 'TOP' 98) #(112 'TRAILING' 99) #(112 'TRIM' 100) #(112 'UNION' 101) #(112 'UPDATE' 102) #(112 'USING' 103) #(112 'VALUES' 104) #(112 'VARCHAR' 105) #(112 'WHEN' 106) #(112 'WHERE' 107) #(112 'WITH' 108) #(112 'WORK' 109) #(112 'WORKLOAD' 110))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 179
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 180
]

{ #category : #generated }
TeradataScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
TeradataScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(112).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ currentCharacter >= $# ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan2 [
	[ self recordMatch: #(112).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			(currentCharacter == $$
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan3 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(114).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan4 [
	self step.
	('Cc' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(114).
			self step.
			('FVfv' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(114) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan5 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(117) ].
			^ self scan5 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan6 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(113).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ currentCharacter >= $# ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan7 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			(currentCharacter == $$
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
				ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForToken [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue:
			[ ^ self scanForTokenX1 ].
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
			[ ^ self scanForTokenX2 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX3 ].
	^ self scanForTokenX10
]

{ #category : #generated }
TeradataScanner >> scanForTokenX1 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(114).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan3 ].
			('Xx' includes: currentCharacter)
				ifTrue: [ ^ self scan4 ].
			(currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ])
				ifTrue: [ [ self step.
					('Xx' includes: currentCharacter)
						ifTrue: [ ^ self scan4 ].
					currentCharacter isSeparator
						or: [ currentCharacter == Character pageUp ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self scan3
]

{ #category : #generated }
TeradataScanner >> scanForTokenX10 [
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX6 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX5 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX2 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(117).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX3 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan6 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX4 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	[ self recordMatch: #(116).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX6 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter == $.
		ifTrue: [ [ self recordMatch: #(115).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX7 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX8 [
	self recordMatch: #(7).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX9 [
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(111) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
