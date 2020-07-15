Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(126 'ALL' 17) #(126 'AND' 18) #(126 'AS' 19) #(126 'BEGIN' 20) #(126 'BETWEEN' 21) #(126 'BIGINT' 22) #(126 'BOTH' 23) #(126 'BT' 24) #(126 'BY' 25) #(126 'BYTEINT' 26) #(126 'CASE' 27) #(126 'CASESPECIFIC' 28) #(126 'CAST' 29) #(126 'CHAR' 30) #(126 'CHECK' 31) #(126 'CHECKPOINT' 32) #(126 'CLOB' 33) #(126 'COUNT' 34) #(126 'CREATE' 35) #(126 'CROSS' 36) #(126 'CURSOR' 37) #(126 'DATABASE' 38) #(126 'DATE' 39) #(126 'DEC' 40) #(126 'DECIMAL' 41) #(126 'DEL' 42) #(126 'DELETE' 43) #(126 'DISTINCT' 44) #(126 'DISTINCTROW' 45) #(126 'DROP' 46) #(126 'ELSE' 47) #(126 'END' 48) #(126 'ERROR' 49) #(126 'ERRORFILES' 50) #(126 'ESCAPE' 51) #(126 'ET' 52) #(126 'EXEC' 53) #(126 'EXECUTE' 54) #(126 'EXISTS' 55) #(126 'EXTRACT' 56) #(126 'FLOAT' 57) #(126 'FOR' 58) #(126 'FORMAT' 59) #(126 'FROM' 60) #(126 'GROUP' 61) #(126 'HAVING' 62) #(126 'HELP' 63) #(126 'IN' 64) #(126 'INNER' 65) #(126 'INS' 66) #(126 'INSERT' 67) #(126 'INT' 68) #(126 'INTEGER' 69) #(126 'INTERVAL' 70) #(126 'INTO' 71) #(126 'IS' 72) #(126 'JOIN' 73) #(126 'LEADING' 74) #(126 'LEFT' 75) #(126 'LIKE' 76) #(126 'LOADING' 77) #(126 'LOCK' 78) #(126 'LOCKING' 79) #(126 'MACRO' 80) #(126 'MATCHED' 81) #(126 'MERGE' 82) #(126 'MOD' 83) #(126 'NE' 84) #(126 'NOT' 85) #(126 'NULL' 86) #(126 'NUMBER' 87) #(126 'NUMERIC' 88) #(126 'ON' 89) #(126 'OR' 90) #(126 'ORDER' 91) #(126 'OUTER' 92) #(126 'OVER' 93) #(126 'PARTITION' 94) #(126 'QUALIFY' 95) #(126 'REAL' 96) #(126 'RECURSIVE' 97) #(126 'RIGHT' 98) #(126 'ROLLBACK' 99) #(126 'SEL' 100) #(126 'SELECT' 101) #(126 'SESSION' 102) #(126 'SET' 103) #(126 'SMALLINT' 104) #(126 'SUBSTRING' 105) #(126 'TABLE' 106) #(126 'THEN' 107) #(126 'TIME' 108) #(126 'TIMESTAMP' 109) #(126 'TITLE' 110) #(126 'TOP' 111) #(126 'TRAILING' 112) #(126 'TRANSLATE' 113) #(126 'TRIM' 114) #(126 'UNION' 115) #(126 'UPDATE' 116) #(126 'USING' 117) #(126 'VALUES' 118) #(126 'VARCHAR' 119) #(126 'WHEN' 120) #(126 'WHERE' 121) #(126 'WITH' 122) #(126 'WORK' 123) #(126 'WORKLOAD' 124))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 204
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 205
]

{ #category : #generated }
TeradataScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
TeradataScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(126).
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
		ifTrue: [ self recordMatch: #(128).
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
		ifTrue: [ self recordMatch: #(128).
			self step.
			('FVfv' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(128) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(131) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan5 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(127).
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
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self scanForTokenX12
]

{ #category : #generated }
TeradataScanner >> scanForTokenX1 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(128).
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
	self recordMatch: #(9).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX11 [
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(125) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX12 [
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX5 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX7 ].
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
		ifTrue: [ [ self recordMatch: #(127).
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
	self recordMatch: #(7).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(131).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX4 [
	[ self recordMatch: #(126).
	self step.
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	[ self recordMatch: #(129).
	self step.
	currentCharacter == $.
		ifTrue: [ [ self recordMatch: #(129).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Xx' includes: currentCharacter)
		ifTrue: [ [ self recordMatch: #(129).
			self step.
			'Xx' includes: currentCharacter ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX6 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX7 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX8 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX9 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
