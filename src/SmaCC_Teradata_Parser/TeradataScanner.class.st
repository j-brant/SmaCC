Class {
	#name : #TeradataScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #'generated-initialization' }
TeradataScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(165 'ACCESS' 17) #(165 'AFTER' 18) #(165 'ALL' 19) #(165 'AND' 20) #(165 'AS' 21) #(165 'BEFORE' 22) #(165 'BEGIN' 23) #(165 'BETWEEN' 24) #(165 'BIGINT' 25) #(165 'BOTH' 26) #(165 'BT' 27) #(165 'BY' 28) #(165 'BYTE' 29) #(165 'BYTEINT' 30) #(165 'CASE' 31) #(165 'CASESPECIFIC' 32) #(165 'CAST' 33) #(165 'CHAR' 34) #(165 'CHARACTER' 35) #(165 'CHECK' 36) #(165 'CHECKPOINT' 37) #(165 'CHECKSUM' 38) #(165 'CLOB' 39) #(165 'COMMENT' 40) #(165 'COMPRESS' 41) #(165 'COUNT' 42) #(165 'CREATE' 43) #(165 'CROSS' 44) #(165 'CURRENT' 45) #(165 'CURSOR' 46) #(165 'DATABASE' 47) #(165 'DATE' 48) #(165 'DEC' 49) #(165 'DECIMAL' 50) #(165 'DEFAULT' 51) #(165 'DEL' 52) #(165 'DELETE' 53) #(165 'DISTINCT' 54) #(165 'DISTINCTROW' 55) #(165 'DOUBLE' 56) #(165 'DROP' 57) #(165 'ELSE' 58) #(165 'END' 59) #(165 'EQ' 60) #(165 'ERROR' 61) #(165 'ERRORFILES' 62) #(165 'ESCAPE' 63) #(165 'ET' 64) #(165 'EXCEPT' 65) #(165 'EXEC' 66) #(165 'EXECUTE' 67) #(165 'EXISTS' 68) #(165 'EXTRACT' 69) #(165 'FALLBACK' 70) #(165 'FLOAT' 71) #(165 'FOLLOWING' 72) #(165 'FOR' 73) #(165 'FORMAT' 74) #(165 'FROM' 75) #(165 'FULL' 76) #(165 'GROUP' 77) #(165 'HAVING' 78) #(165 'HELP' 79) #(165 'IGNORE' 80) #(165 'IN' 81) #(165 'INDEX' 82) #(165 'INNER' 83) #(165 'INS' 84) #(165 'INSERT' 85) #(165 'INT' 86) #(165 'INTEGER' 87) #(165 'INTERSECT' 88) #(165 'INTERVAL' 89) #(165 'INTO' 90) #(165 'IS' 91) #(165 'JOIN' 92) #(165 'JOURNAL' 93) #(165 'LEADING' 94) #(165 'LEFT' 95) #(165 'LIKE' 96) #(165 'LOADING' 97) #(165 'LOCK' 98) #(165 'LOCKING' 99) #(165 'MACRO' 100) #(165 'MATCHED' 101) #(165 'MERGE' 102) #(165 'MERGEBLOCKRATIO' 103) #(165 'MINUS' 104) #(165 'MOD' 105) #(165 'MODE' 106) #(165 'MULTISET' 107) #(165 'NE' 108) #(165 'NO' 109) #(165 'NOT' 110) #(165 'NULL' 111) #(165 'NULLS' 112) #(165 'NUMBER' 113) #(165 'NUMERIC' 114) #(165 'ON' 115) #(165 'OR' 116) #(165 'ORDER' 117) #(165 'OUTER' 118) #(165 'OVER' 119) #(165 'PARTITION' 120) #(165 'PRECEDING' 121) #(165 'PRECISION' 122) #(165 'PRIMARY' 123) #(165 'QUALIFY' 124) #(165 'REAL' 125) #(165 'RECURSIVE' 126) #(165 'RIGHT' 127) #(165 'ROLLBACK' 128) #(165 'ROW' 129) #(165 'ROWS' 130) #(165 'SEL' 131) #(165 'SELECT' 132) #(165 'SESSION' 133) #(165 'SET' 134) #(165 'SMALLINT' 135) #(165 'SUBSTRING' 136) #(165 'TABLE' 137) #(165 'THEN' 138) #(165 'TIME' 139) #(165 'TIMESTAMP' 140) #(165 'TITLE' 141) #(165 'TOP' 142) #(165 'TRAILING' 143) #(165 'TRANSLATE' 144) #(165 'TRANSLATE_CHK' 145) #(165 'TRIM' 146) #(165 'TRYCAST' 147) #(165 'UESCAPE' 148) #(165 'UNBOUNDED' 149) #(165 'UNION' 150) #(165 'UNIQUE' 151) #(165 'UPDATE' 152) #(165 'USING' 153) #(165 'VALUES' 154) #(165 'VARBYTE' 155) #(165 'VARCHAR' 156) #(165 'VIEW' 157) #(165 'WHEN' 158) #(165 'WHERE' 159) #(165 'WITH' 160) #(165 'WORK' 161) #(165 'WORKLOAD' 162) #(165 'XMLAGG' 163))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : #generated }
TeradataScanner >> emptySymbolTokenId [
	^ 271
]

{ #category : #generated }
TeradataScanner >> errorTokenId [
	^ 272
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
			[ self recordMatch: #(165).
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
			[ self recordMatch: #(168).
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
			[ self recordMatch: #(168).
			self step.
			('FVfv' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(168) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue:
			[ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(171) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
TeradataScanner >> scan5 [
	[ self step.
	currentCharacter == $"
		ifTrue:
			[ self recordMatch: #(166).
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
			[ self recordMatch: #(167).
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
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $# and: $$)
		or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue:
			[ [ self recordMatch: #(166).
			self step.
			(currentCharacter between: $# and: $$)
				or:
					[ (currentCharacter between: $0 and: $9)
						or:
							[ (currentCharacter between: $@ and: $Z)
								or: [ currentCharacter == $_ or: [ (currentCharacter between: $a and: ${) or: [ currentCharacter == $} ] ] ] ] ] ]
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
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(164) ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX13 [
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX6 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX2 ].
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
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(166) ].
	^ self scanForTokenX13
]

{ #category : #generated }
TeradataScanner >> scanForTokenX2 [
	self recordMatch: #(165).
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
					[ (currentCharacter between: $@ and: $Z)
						or: [ currentCharacter == $_ or: [ (currentCharacter between: $a and: ${) or: [ currentCharacter == $} ] ] ] ] ])
		ifTrue:
			[ [ self recordMatch: #(165).
			self step.
			(currentCharacter between: $# and: $$)
				or:
					[ (currentCharacter between: $0 and: $9)
						or:
							[ (currentCharacter between: $@ and: $Z)
								or: [ currentCharacter == $_ or: [ (currentCharacter between: $a and: ${) or: [ currentCharacter == $} ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX3 [
	[ self step.
	currentCharacter == $'
		ifTrue:
			[ self recordMatch: #(168).
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
			[ [ self recordMatch: #(171).
			self step.
			currentCharacter <= Character tab
				or:
					[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
TeradataScanner >> scanForTokenX5 [
	[ self recordMatch: #(165).
	self step.
	(currentCharacter between: $# and: $$)
		or:
			[ (currentCharacter between: $0 and: $9)
				or:
					[ (currentCharacter between: $@ and: $Z)
						or: [ currentCharacter == $_ or: [ (currentCharacter between: $a and: ${) or: [ currentCharacter == $} ] ] ] ] ] ]
		whileTrue
]

{ #category : #generated }
TeradataScanner >> scanForTokenX6 [
	[ self recordMatch: #(169).
	self step.
	currentCharacter == $.
		ifTrue:
			[ [ self recordMatch: #(169).
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
	[ self recordMatch: #(170).
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
TeradataScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
