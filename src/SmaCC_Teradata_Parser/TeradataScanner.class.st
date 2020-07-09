Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(114 'ALL' 16) #(114 'AND' 17) #(114 'AS' 18) #(114 'BEGIN' 19) #(114 'BETWEEN' 20) #(114 'BIGINT' 21) #(114 'BOTH' 22) #(114 'BT' 23) #(114 'BY' 24) #(114 'BYTEINT' 25) #(114 'CASE' 26) #(114 'CASESPECIFIC' 27) #(114 'CAST' 28) #(114 'CHAR' 29) #(114 'CHECK' 30) #(114 'CHECKPOINT' 31) #(114 'CLOB' 32) #(114 'CREATE' 33) #(114 'CROSS' 34) #(114 'DATABASE' 35) #(114 'DATE' 36) #(114 'DECIMAL' 37) #(114 'DEL' 38) #(114 'DELETE' 39) #(114 'DISTINCT' 40) #(114 'DISTINCTROW' 41) #(114 'DROP' 42) #(114 'ELSE' 43) #(114 'END' 44) #(114 'ERRORFILES' 45) #(114 'ESCAPE' 46) #(114 'ET' 47) #(114 'EXECUTE' 48) #(114 'EXTRACT' 49) #(114 'FLOAT' 50) #(114 'FOR' 51) #(114 'FORMAT' 52) #(114 'FROM' 53) #(114 'GROUP' 54) #(114 'HAVING' 55) #(114 'HELP' 56) #(114 'IN' 57) #(114 'INNER' 58) #(114 'INSERT' 59) #(114 'INTEGER' 60) #(114 'INTERVAL' 61) #(114 'INTO' 62) #(114 'IS' 63) #(114 'JOIN' 64) #(114 'LEADING' 65) #(114 'LEFT' 66) #(114 'LIKE' 67) #(114 'LOADING' 68) #(114 'LOCK' 69) #(114 'LOCKING' 70) #(114 'MACRO' 71) #(114 'MATCHED' 72) #(114 'MERGE' 73) #(114 'MOD' 74) #(114 'NOT' 75) #(114 'NULL' 76) #(114 'NUMBER' 77) #(114 'NUMERIC' 78) #(114 'ON' 79) #(114 'OR' 80) #(114 'ORDER' 81) #(114 'OUTER' 82) #(114 'OVER' 83) #(114 'PARTITION' 84) #(114 'QUALIFY' 85) #(114 'REAL' 86) #(114 'RECURSIVE' 87) #(114 'RIGHT' 88) #(114 'ROLLBACK' 89) #(114 'SEL' 90) #(114 'SELECT' 91) #(114 'SESSION' 92) #(114 'SET' 93) #(114 'SMALLINT' 94) #(114 'SUBSTRING' 95) #(114 'TABLE' 96) #(114 'THEN' 97) #(114 'TIME' 98) #(114 'TIMESTAMP' 99) #(114 'TOP' 100) #(114 'TRAILING' 101) #(114 'TRIM' 102) #(114 'UNION' 103) #(114 'UPDATE' 104) #(114 'USING' 105) #(114 'VALUES' 106) #(114 'VARCHAR' 107) #(114 'WHEN' 108) #(114 'WHERE' 109) #(114 'WITH' 110) #(114 'WORK' 111) #(114 'WORKLOAD' 112))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 186
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 187
]

{ #category : #generated }
TeradataScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
TeradataScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(114).
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
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(116).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan3 [
	self step.
	('Cc' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(116).
			self step.
			('FVfv' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(116) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(119) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan5 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(115).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ currentCharacter >= $# ] ] ] ] whileTrue.
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
			[ ^ self scanForTokenX3 ].
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX2 ].
	^ self scanForTokenX11
]

{ #category : #generated }
TeradataScanner >> scanForTokenX1 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(116).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			('Xx' includes: currentCharacter)
				ifTrue: [ ^ self scan3 ].
			(currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ])
				ifTrue: [ [ self step.
					('Xx' includes: currentCharacter)
						ifTrue: [ ^ self scan3 ].
					currentCharacter isSeparator
						or: [ currentCharacter == Character pageUp ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self scan2
]

{ #category : #generated }
TeradataScanner >> scanForTokenX10 [
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX11 [
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX7 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX6 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue:
			[ self scanForTokenX4 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan5 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(115).
			self step.
			currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX3 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(119).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX4 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX6 [
	[ self recordMatch: #(118).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX7 [
	[ self recordMatch: #(117).
	self step.
	currentCharacter == $.
		ifTrue: [ [ self recordMatch: #(117).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX8 [
	self recordMatch: #(14).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX9 [
	self recordMatch: #(8).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
