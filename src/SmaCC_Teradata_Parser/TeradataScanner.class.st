Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(132 'ALL' 17) #(132 'AND' 18) #(132 'AS' 19) #(132 'BEGIN' 20) #(132 'BETWEEN' 21) #(132 'BIGINT' 22) #(132 'BOTH' 23) #(132 'BT' 24) #(132 'BY' 25) #(132 'BYTE' 26) #(132 'BYTEINT' 27) #(132 'CASE' 28) #(132 'CASESPECIFIC' 29) #(132 'CAST' 30) #(132 'CHAR' 31) #(132 'CHARACTER' 32) #(132 'CHECK' 33) #(132 'CHECKPOINT' 34) #(132 'CLOB' 35) #(132 'COUNT' 36) #(132 'CREATE' 37) #(132 'CROSS' 38) #(132 'CURSOR' 39) #(132 'DATABASE' 40) #(132 'DATE' 41) #(132 'DEC' 42) #(132 'DECIMAL' 43) #(132 'DEL' 44) #(132 'DELETE' 45) #(132 'DISTINCT' 46) #(132 'DISTINCTROW' 47) #(132 'DROP' 48) #(132 'ELSE' 49) #(132 'END' 50) #(132 'ERROR' 51) #(132 'ERRORFILES' 52) #(132 'ESCAPE' 53) #(132 'ET' 54) #(132 'EXEC' 55) #(132 'EXECUTE' 56) #(132 'EXISTS' 57) #(132 'EXTRACT' 58) #(132 'FLOAT' 59) #(132 'FOR' 60) #(132 'FORMAT' 61) #(132 'FROM' 62) #(132 'GROUP' 63) #(132 'HAVING' 64) #(132 'HELP' 65) #(132 'IN' 66) #(132 'INNER' 67) #(132 'INS' 68) #(132 'INSERT' 69) #(132 'INT' 70) #(132 'INTEGER' 71) #(132 'INTERVAL' 72) #(132 'INTO' 73) #(132 'IS' 74) #(132 'JOIN' 75) #(132 'LEADING' 76) #(132 'LEFT' 77) #(132 'LIKE' 78) #(132 'LOADING' 79) #(132 'LOCK' 80) #(132 'LOCKING' 81) #(132 'MACRO' 82) #(132 'MATCHED' 83) #(132 'MERGE' 84) #(132 'MINUS' 85) #(132 'MOD' 86) #(132 'NE' 87) #(132 'NOT' 88) #(132 'NULL' 89) #(132 'NUMBER' 90) #(132 'NUMERIC' 91) #(132 'ON' 92) #(132 'OR' 93) #(132 'ORDER' 94) #(132 'OUTER' 95) #(132 'OVER' 96) #(132 'PARTITION' 97) #(132 'QUALIFY' 98) #(132 'REAL' 99) #(132 'RECURSIVE' 100) #(132 'RIGHT' 101) #(132 'ROLLBACK' 102) #(132 'SEL' 103) #(132 'SELECT' 104) #(132 'SESSION' 105) #(132 'SET' 106) #(132 'SMALLINT' 107) #(132 'SUBSTRING' 108) #(132 'TABLE' 109) #(132 'THEN' 110) #(132 'TIME' 111) #(132 'TIMESTAMP' 112) #(132 'TITLE' 113) #(132 'TOP' 114) #(132 'TRAILING' 115) #(132 'TRANSLATE' 116) #(132 'TRANSLATE_CHK' 117) #(132 'TRIM' 118) #(132 'UNION' 119) #(132 'UPDATE' 120) #(132 'USING' 121) #(132 'VALUES' 122) #(132 'VARBYTE' 123) #(132 'VARCHAR' 124) #(132 'WHEN' 125) #(132 'WHERE' 126) #(132 'WITH' 127) #(132 'WORK' 128) #(132 'WORKLOAD' 129) #(132 'XMLAGG' 130))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 212
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 213
]

{ #category : #generated }
TeradataScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
TeradataScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(132).
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
		ifTrue: [ self recordMatch: #(134).
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
		ifTrue: [ self recordMatch: #(134).
			self step.
			('FVfv' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(134) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(137) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan5 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(133).
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
		ifTrue: [ self recordMatch: #(134).
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
		ifTrue: [ ^ self recordAndReportMatch: #(131) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(133) ].
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
		ifTrue: [ [ self recordMatch: #(133).
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
		ifTrue: [ [ self recordMatch: #(137).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX4 [
	[ self recordMatch: #(132).
	self step.
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	[ self recordMatch: #(135).
	self step.
	currentCharacter == $.
		ifTrue: [ [ self recordMatch: #(135).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Xx' includes: currentCharacter)
		ifTrue: [ [ self recordMatch: #(135).
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
	[ self recordMatch: #(136).
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
