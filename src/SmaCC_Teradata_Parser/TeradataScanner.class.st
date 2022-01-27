Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(146 'ALL' 17) #(146 'AND' 18) #(146 'AS' 19) #(146 'BEGIN' 20) #(146 'BETWEEN' 21) #(146 'BIGINT' 22) #(146 'BOTH' 23) #(146 'BT' 24) #(146 'BY' 25) #(146 'BYTE' 26) #(146 'BYTEINT' 27) #(146 'CASE' 28) #(146 'CASESPECIFIC' 29) #(146 'CAST' 30) #(146 'CHAR' 31) #(146 'CHARACTER' 32) #(146 'CHECK' 33) #(146 'CHECKPOINT' 34) #(146 'CLOB' 35) #(146 'COUNT' 36) #(146 'CREATE' 37) #(146 'CROSS' 38) #(146 'CURRENT' 39) #(146 'CURSOR' 40) #(146 'DATABASE' 41) #(146 'DATE' 42) #(146 'DEC' 43) #(146 'DECIMAL' 44) #(146 'DEL' 45) #(146 'DELETE' 46) #(146 'DISTINCT' 47) #(146 'DISTINCTROW' 48) #(146 'DOUBLE' 49) #(146 'DROP' 50) #(146 'ELSE' 51) #(146 'END' 52) #(146 'EQ' 53) #(146 'ERROR' 54) #(146 'ERRORFILES' 55) #(146 'ESCAPE' 56) #(146 'ET' 57) #(146 'EXCEPT' 58) #(146 'EXEC' 59) #(146 'EXECUTE' 60) #(146 'EXISTS' 61) #(146 'EXTRACT' 62) #(146 'FLOAT' 63) #(146 'FOR' 64) #(146 'FORMAT' 65) #(146 'FROM' 66) #(146 'FULL' 67) #(146 'GROUP' 68) #(146 'HAVING' 69) #(146 'HELP' 70) #(146 'IGNORE' 71) #(146 'IN' 72) #(146 'INNER' 73) #(146 'INS' 74) #(146 'INSERT' 75) #(146 'INT' 76) #(146 'INTEGER' 77) #(146 'INTERSECT' 78) #(146 'INTERVAL' 79) #(146 'INTO' 80) #(146 'IS' 81) #(146 'JOIN' 82) #(146 'LEADING' 83) #(146 'LEFT' 84) #(146 'LIKE' 85) #(146 'LOADING' 86) #(146 'LOCK' 87) #(146 'LOCKING' 88) #(146 'MACRO' 89) #(146 'MATCHED' 90) #(146 'MERGE' 91) #(146 'MINUS' 92) #(146 'MOD' 93) #(146 'NE' 94) #(146 'NOT' 95) #(146 'NULL' 96) #(146 'NULLS' 97) #(146 'NUMBER' 98) #(146 'NUMERIC' 99) #(146 'ON' 100) #(146 'OR' 101) #(146 'ORDER' 102) #(146 'OUTER' 103) #(146 'OVER' 104) #(146 'PARTITION' 105) #(146 'PRECEDING' 106) #(146 'PRECISION' 107) #(146 'QUALIFY' 108) #(146 'REAL' 109) #(146 'RECURSIVE' 110) #(146 'RIGHT' 111) #(146 'ROLLBACK' 112) #(146 'ROW' 113) #(146 'ROWS' 114) #(146 'SEL' 115) #(146 'SELECT' 116) #(146 'SESSION' 117) #(146 'SET' 118) #(146 'SMALLINT' 119) #(146 'SUBSTRING' 120) #(146 'TABLE' 121) #(146 'THEN' 122) #(146 'TIME' 123) #(146 'TIMESTAMP' 124) #(146 'TITLE' 125) #(146 'TOP' 126) #(146 'TRAILING' 127) #(146 'TRANSLATE' 128) #(146 'TRANSLATE_CHK' 129) #(146 'TRIM' 130) #(146 'UESCAPE' 131) #(146 'UNBOUNDED' 132) #(146 'UNION' 133) #(146 'UPDATE' 134) #(146 'USING' 135) #(146 'VALUES' 136) #(146 'VARBYTE' 137) #(146 'VARCHAR' 138) #(146 'WHEN' 139) #(146 'WHERE' 140) #(146 'WITH' 141) #(146 'WORK' 142) #(146 'WORKLOAD' 143) #(146 'XMLAGG' 144))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 228
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 229
]

{ #category : #generated }
TeradataScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
TeradataScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(146).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!) or: [ currentCharacter >= $# ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan2 [
	[ self step.
	currentCharacter == $'
		ifTrue:
			[ self recordMatch: #(149).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan3 [
	self step.
	('Cc' includes: currentCharacter)
		ifTrue:
			[ self recordMatch: #(149).
			self step.
			('FVfv' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(149) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(152) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan5 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(147).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!) or: [ currentCharacter >= $# ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan6 [
	[ self step.
	currentCharacter == $'
		ifTrue:
			[ self recordMatch: #(148).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scanForToken [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self scanForTokenX14
]

{ #category : #generated }
TeradataScanner >> scanForTokenX1 [
	self recordMatch: #(146).
	self step.
	currentCharacter == $&
		ifTrue:
			[ self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	((currentCharacter between: $# and: $$)
		or:
			[ (currentCharacter between: $0 and: $9)
				or:
					[ (currentCharacter between: $@ and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue:
			[ [ self recordMatch: #(146).
			self step.
			(currentCharacter between: $# and: $$)
				or:
					[ (currentCharacter between: $0 and: $9)
						or:
							[ (currentCharacter between: $@ and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX10 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX11 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX12 [
	self step.
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(145) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX13 [
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX6 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scanForTokenX8 ].
	((currentCharacter between: $# and: $$)
		or:
			[ (currentCharacter between: $A and: $T)
				or:
					[ (currentCharacter between: $V and: $Z)
						or:
							[ currentCharacter == $_ or: [ (currentCharacter between: $a and: $t) or: [ currentCharacter between: $v and: $z ] ] ] ] ])
		ifTrue: [ self scanForTokenX5 ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX14 [
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(147) ].
	^ self scanForTokenX13
]

{ #category : #generated }
TeradataScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $# and: $$)
		or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue:
			[ [ self recordMatch: #(147).
			self step.
			(currentCharacter between: $# and: $$)
				or:
					[ (currentCharacter between: $0 and: $9)
						or:
							[ (currentCharacter between: $@ and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX3 [
	[ self step.
	currentCharacter == $'
		ifTrue:
			[ self recordMatch: #(149).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan2 ].
			('Xx' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
			(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
				ifTrue:
					[ [ self step.
					('Xx' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
					currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ]
		whileTrue.
	^ self scan2
]

{ #category : #generated }
TeradataScanner >> scanForTokenX4 [
	self recordMatch: #(7).
	self step.
	currentCharacter == $-
		ifTrue:
			[ [ self recordMatch: #(152).
			self step.
			currentCharacter <= Character tab
				or:
					[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	[ self recordMatch: #(146).
	self step.
	(currentCharacter between: $# and: $$)
		or:
			[ (currentCharacter between: $0 and: $9)
				or:
					[ (currentCharacter between: $@ and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue
]

{ #category : #generated }
TeradataScanner >> scanForTokenX6 [
	[ self recordMatch: #(150).
	self step.
	currentCharacter == $.
		ifTrue:
			[ [ self recordMatch: #(150).
			self step.
			currentCharacter isDigit or: [ 'Xx' includes: currentCharacter ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter isDigit or: [ 'Xx' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX7 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX8 [
	[ self recordMatch: #(151).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX9 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
