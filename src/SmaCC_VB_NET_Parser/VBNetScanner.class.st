Class {
	#name : #VBNetScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #'generated-initialization' }
VBNetScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(220 'REMOVEHANDLER' 168) #(222 'ADDHANDLER' 30) #(222 'ADDRESSOF' 31) #(222 'AGGREGATE' 32) #(222 'ALIAS' 33) #(222 'AND' 34) #(222 'ANDALSO' 35) #(222 'ANSI' 36) #(222 'AS' 37) #(222 'ASCENDING' 38) #(222 'ASSEMBLY' 39) #(222 'ASYNC' 40) #(222 'AUTO' 41) #(222 'AWAIT' 42) #(222 'BINARY' 43) #(222 'BOOLEAN' 44) #(222 'BY' 45) #(222 'BYREF' 46) #(222 'BYTE' 48) #(222 'BYVAL' 47) #(222 'CALL' 66) #(222 'CASE' 67) #(222 'CATCH' 68) #(222 'CBOOL' 49) #(222 'CBYTE' 50) #(222 'CCHAR' 51) #(222 'CDATE' 52) #(222 'CDBL' 53) #(222 'CDEC' 54) #(222 'CHAR' 69) #(222 'CINT' 55) #(222 'CLASS' 70) #(222 'CLNG' 56) #(222 'COBJ' 57) #(222 'COMPARE' 71) #(222 'CONST' 72) #(222 'CONTINUE' 73) #(222 'CSBYTE' 58) #(222 'CSHORT' 59) #(222 'CSNG' 60) #(222 'CSTR' 61) #(222 'CTYPE' 62) #(222 'CUINT' 63) #(222 'CULNG' 64) #(222 'CUSHORT' 65) #(222 'CUSTOM' 74) #(222 'DATE' 75) #(222 'DECIMAL' 76) #(222 'DECLARE' 77) #(222 'DEFAULT' 78) #(222 'DELEGATE' 79) #(222 'DESCENDING' 80) #(222 'DIM' 81) #(222 'DIRECTCAST' 82) #(222 'DISTINCT' 83) #(222 'DO' 84) #(222 'DOUBLE' 85) #(222 'EACH' 86) #(222 'ELSE' 87) #(222 'END' 88) #(222 'ENUM' 89) #(222 'EQUALS' 90) #(222 'ERASE' 91) #(222 'ERROR' 92) #(222 'EVENT' 93) #(222 'EXIT' 94) #(222 'EXPLICIT' 95) #(222 'FALSE' 225) #(222 'FINALLY' 96) #(222 'FOR' 97) #(222 'FRIEND' 98) #(222 'FROM' 99) #(222 'FUNCTION' 100) #(222 'GET' 101) #(222 'GETTYPE' 102) #(222 'GETXMLNAMESPACE' 103) #(222 'GLOBAL' 104) #(222 'GOTO' 105) #(222 'GROUP' 106) #(222 'HANDLES' 107) #(222 'IF' 108) #(222 'IMPLEMENTS' 109) #(222 'IMPORTS' 110) #(222 'IN' 111) #(222 'INFER' 112) #(222 'INHERITS' 113) #(222 'INTEGER' 114) #(222 'INTERFACE' 115) #(222 'INTO' 116) #(222 'IS' 117) #(222 'ISFALSE' 118) #(222 'ISNOT' 119) #(222 'ISTRUE' 120) #(222 'ITERATOR' 121) #(222 'JOIN' 122) #(222 'KEY' 123) #(222 'LET' 124) #(222 'LIB' 125) #(222 'LIKE' 126) #(222 'LONG' 127) #(222 'LOOP' 128) #(222 'ME' 129) #(222 'MID' 130) #(222 'MOD' 131) #(222 'MODULE' 132) #(222 'MUSTINHERIT' 133) #(222 'MUSTOVERRIDE' 134) #(222 'MYBASE' 135) #(222 'MYCLASS' 136) #(222 'NAMESPACE' 137) #(222 'NARROWING' 138) #(222 'NEW' 139) #(222 'NEXT' 140) #(222 'NOT' 141) #(222 'NOTHING' 234) #(222 'NOTINHERITABLE' 142) #(222 'NOTOVERRIDABLE' 143) #(222 'OBJECT' 144) #(222 'OF' 145) #(222 'OFF' 146) #(222 'ON' 147) #(222 'OPERATOR' 148) #(222 'OPTION' 149) #(222 'OPTIONAL' 150) #(222 'OR' 151) #(222 'ORDER' 153) #(222 'ORELSE' 152) #(222 'OUT' 154) #(222 'OVERLOADS' 155) #(222 'OVERRIDABLE' 156) #(222 'OVERRIDES' 157) #(222 'PARAMARRAY' 158) #(222 'PARTIAL' 159) #(222 'PRESERVE' 160) #(222 'PRIVATE' 161) #(222 'PROPERTY' 162) #(222 'PROTECTED' 163) #(222 'PUBLIC' 164) #(222 'RAISEEVENT' 165) #(222 'READONLY' 167) #(222 'REDIM' 166) #(222 'REMOVEHANDLER' 168) #(222 'RESUME' 169) #(222 'RETURN' 170) #(222 'SBYTE' 171) #(222 'SELECT' 172) #(222 'SET' 173) #(222 'SHADOWS' 174) #(222 'SHARED' 175) #(222 'SHORT' 176) #(222 'SINGLE' 177) #(222 'SKIP' 178) #(222 'STATIC' 179) #(222 'STEP' 180) #(222 'STOP' 181) #(222 'STRICT' 182) #(222 'STRING' 183) #(222 'STRUCTURE' 184) #(222 'SUB' 185) #(222 'SYNCLOCK' 186) #(222 'TAKE' 187) #(222 'TEXT' 188) #(222 'THEN' 189) #(222 'THROW' 190) #(222 'TO' 191) #(222 'TRUE' 225) #(222 'TRY' 192) #(222 'TRYCAST' 193) #(222 'TYPEOF' 194) #(222 'UINTEGER' 195) #(222 'ULONG' 196) #(222 'UNICODE' 198) #(222 'UNTIL' 199) #(222 'USHORT' 197) #(222 'USING' 200) #(222 'WHEN' 201) #(222 'WHERE' 202) #(222 'WHILE' 203) #(222 'WIDENING' 204) #(222 'WITH' 205) #(222 'WITHEVENTS' 206) #(222 'WRITEONLY' 207) #(222 'XOR' 208) #(222 'YIELD' 209) #(223 'ADDHANDLER' 30) #(223 'ADDRESSOF' 31) #(223 'AGGREGATE' 32) #(223 'ALIAS' 33) #(223 'AND' 34) #(223 'ANDALSO' 35) #(223 'ANSI' 36) #(223 'AS' 37) #(223 'ASCENDING' 38) #(223 'ASSEMBLY' 39) #(223 'ASYNC' 40) #(223 'AUTO' 41) #(223 'AWAIT' 42) #(223 'BINARY' 43) #(223 'BOOLEAN' 44) #(223 'BY' 45) #(223 'BYREF' 46) #(223 'BYTE' 48) #(223 'BYVAL' 47) #(223 'CALL' 66) #(223 'CASE' 67) #(223 'CATCH' 68) #(223 'CBOOL' 49) #(223 'CBYTE' 50) #(223 'CCHAR' 51) #(223 'CDATE' 52) #(223 'CDBL' 53) #(223 'CDEC' 54) #(223 'CHAR' 69) #(223 'CINT' 55) #(223 'CLASS' 70) #(223 'CLNG' 56) #(223 'COBJ' 57) #(223 'COMPARE' 71) #(223 'CONST' 72) #(223 'CONTINUE' 73) #(223 'CSBYTE' 58) #(223 'CSHORT' 59) #(223 'CSNG' 60) #(223 'CSTR' 61) #(223 'CTYPE' 62) #(223 'CUINT' 63) #(223 'CULNG' 64) #(223 'CUSHORT' 65) #(223 'CUSTOM' 74) #(223 'DATE' 75) #(223 'DECIMAL' 76) #(223 'DECLARE' 77) #(223 'DEFAULT' 78) #(223 'DELEGATE' 79) #(223 'DESCENDING' 80) #(223 'DIM' 81) #(223 'DIRECTCAST' 82) #(223 'DISTINCT' 83) #(223 'DO' 84) #(223 'DOUBLE' 85) #(223 'EACH' 86) #(223 'ELSE' 87) #(223 'END' 88) #(223 'ENUM' 89) #(223 'EQUALS' 90) #(223 'ERASE' 91) #(223 'ERROR' 92) #(223 'EVENT' 93) #(223 'EXIT' 94) #(223 'EXPLICIT' 95) #(223 'FALSE' 225) #(223 'FINALLY' 96) #(223 'FOR' 97) #(223 'FRIEND' 98) #(223 'FROM' 99) #(223 'FUNCTION' 100) #(223 'GET' 101) #(223 'GETTYPE' 102) #(223 'GETXMLNAMESPACE' 103) #(223 'GLOBAL' 104) #(223 'GOTO' 105) #(223 'GROUP' 106) #(223 'HANDLES' 107) #(223 'IF' 108) #(223 'IMPLEMENTS' 109) #(223 'IMPORTS' 110) #(223 'IN' 111) #(223 'INFER' 112) #(223 'INHERITS' 113) #(223 'INTEGER' 114) #(223 'INTERFACE' 115) #(223 'INTO' 116) #(223 'IS' 117) #(223 'ISFALSE' 118) #(223 'ISNOT' 119) #(223 'ISTRUE' 120) #(223 'ITERATOR' 121) #(223 'JOIN' 122) #(223 'KEY' 123) #(223 'LET' 124) #(223 'LIB' 125) #(223 'LIKE' 126) #(223 'LONG' 127) #(223 'LOOP' 128) #(223 'ME' 129) #(223 'MID' 130) #(223 'MOD' 131) #(223 'MODULE' 132) #(223 'MUSTINHERIT' 133) #(223 'MUSTOVERRIDE' 134) #(223 'MYBASE' 135) #(223 'MYCLASS' 136) #(223 'NAMESPACE' 137) #(223 'NARROWING' 138) #(223 'NEW' 139) #(223 'NEXT' 140) #(223 'NOT' 141) #(223 'NOTHING' 234) #(223 'NOTINHERITABLE' 142) #(223 'NOTOVERRIDABLE' 143) #(223 'OBJECT' 144) #(223 'OF' 145) #(223 'OFF' 146) #(223 'ON' 147) #(223 'OPERATOR' 148) #(223 'OPTION' 149) #(223 'OPTIONAL' 150) #(223 'OR' 151) #(223 'ORDER' 153) #(223 'ORELSE' 152) #(223 'OUT' 154) #(223 'OVERLOADS' 155) #(223 'OVERRIDABLE' 156) #(223 'OVERRIDES' 157) #(223 'PARAMARRAY' 158) #(223 'PARTIAL' 159) #(223 'PRESERVE' 160) #(223 'PRIVATE' 161) #(223 'PROPERTY' 162) #(223 'PROTECTED' 163) #(223 'PUBLIC' 164) #(223 'RAISEEVENT' 165) #(223 'READONLY' 167) #(223 'REDIM' 166) #(223 'REMOVEHANDLER' 168) #(223 'RESUME' 169) #(223 'RETURN' 170) #(223 'SBYTE' 171) #(223 'SELECT' 172) #(223 'SET' 173) #(223 'SHADOWS' 174) #(223 'SHARED' 175) #(223 'SHORT' 176) #(223 'SINGLE' 177) #(223 'SKIP' 178) #(223 'STATIC' 179) #(223 'STEP' 180) #(223 'STOP' 181) #(223 'STRICT' 182) #(223 'STRING' 183) #(223 'STRUCTURE' 184) #(223 'SUB' 185) #(223 'SYNCLOCK' 186) #(223 'TAKE' 187) #(223 'TEXT' 188) #(223 'THEN' 189) #(223 'THROW' 190) #(223 'TO' 191) #(223 'TRUE' 225) #(223 'TRY' 192) #(223 'TRYCAST' 193) #(223 'TYPEOF' 194) #(223 'UINTEGER' 195) #(223 'ULONG' 196) #(223 'UNICODE' 198) #(223 'UNTIL' 199) #(223 'USHORT' 197) #(223 'USING' 200) #(223 'WHEN' 201) #(223 'WHERE' 202) #(223 'WHILE' 203) #(223 'WIDENING' 204) #(223 'WITH' 205) #(223 'WITHEVENTS' 206) #(223 'WRITEONLY' 207) #(223 'XOR' 208) #(223 'YIELD' 209))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
VBNetScanner >> IdentifierId [
	^ 222
]

{ #category : #generated }
VBNetScanner >> IdentifierOrKeywordId [
	^ 223
]

{ #category : #generated }
VBNetScanner >> KeywordId [
	^ 224
]

{ #category : #generated }
VBNetScanner >> LineContinuationId [
	^ 218
]

{ #category : #generated }
VBNetScanner >> LineTerminatorId [
	^ 217
]

{ #category : #generated }
VBNetScanner >> emptySymbolTokenId [
	^ 689
]

{ #category : #generated }
VBNetScanner >> errorTokenId [
	^ 690
]

{ #category : #generated }
VBNetScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
VBNetScanner >> scan1 [
	self recordMatch: #(230).
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan7 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan1X3 ].
	('Cc' includes: currentCharacter)
		ifTrue: [ ^ self scan21 ].
	('Dd' includes: currentCharacter)
		ifTrue: [ ^ self scan35 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan1X1 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self scan48 ].
	('Gg' includes: currentCharacter)
		ifTrue: [ ^ self scan54 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self scan1X5 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan58 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan1X4 ].
	('Mm' includes: currentCharacter)
		ifTrue: [ ^ self scan62 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan66 ].
	^ self scan1X8
]

{ #category : #generated }
VBNetScanner >> scan10 [
	self step.
	('Rr' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan100 [
	self recordMatch: #(218).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(218) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan11 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan12 ].
	(currentCharacter
		between: (Character value: 8220)
		and: (Character value: 8221))
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan12 [
	self recordMatch: #(224 229).
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan3 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(222 223) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan13 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan14 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan14 [
	self step.
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan15 [
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan16 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan17 [
	self step.
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan18 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan19 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan20 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X1 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan42 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ ^ self scan42 ].
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan43 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ self step.
			('Aa' includes: currentCharacter)
				ifTrue: [ ^ self scan44 ].
			('Rr' includes: currentCharacter)
				ifTrue: [ ^ self scan45 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Vv' includes: currentCharacter)
		ifTrue: [ ^ self scan46 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ ^ self scan47 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X2 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Tt' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Gg' includes: currentCharacter)
										ifTrue: [ ^ self scan9 ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ self step.
			('Oo' includes: currentCharacter)
				ifTrue: [ ^ self scan34 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ self step.
			('Hh' includes: currentCharacter)
				ifTrue: [ ^ self scan31 ].
			('Ii' includes: currentCharacter)
				ifTrue: [ ^ self scan34 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X3 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Oo' includes: currentCharacter)
				ifTrue: [ self step.
					('Ll' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Aa' includes: currentCharacter)
										ifTrue: [ ^ self scan17 ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Yy' includes: currentCharacter)
		ifTrue: [ self step.
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan14 ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Tt' includes: currentCharacter)
				ifTrue: [ ^ self scan18 ].
			('Vv' includes: currentCharacter)
				ifTrue: [ ^ self scan19 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X4 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan27 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Bb' includes: currentCharacter)
				ifTrue: [ ^ self scan11 ].
			('Kk' includes: currentCharacter)
				ifTrue: [ ^ self scan18 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ ^ self scan29 ].
			('Oo' includes: currentCharacter)
				ifTrue: [ ^ self scan61 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X5 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Dd' includes: currentCharacter)
						ifTrue: [ self step.
							('Ll' includes: currentCharacter)
								ifTrue: [ self step.
									('Ee' includes: currentCharacter)
										ifTrue: [ ^ self scan15 ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X6 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Ii' includes: currentCharacter)
						ifTrue: [ self step.
							('Aa' includes: currentCharacter)
								ifTrue: [ ^ self scan26 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X7 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan10 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan1X8 [
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan71 ].
	('Pp' includes: currentCharacter)
		ifTrue: [ ^ self scan74 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ ^ self scan78 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan81 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan82 ].
	currentCharacter isVowel
		ifTrue: [ ^ self scan1X2 ].
	('Vv' includes: currentCharacter)
		ifTrue: [ ^ self scan1X6 ].
	('Ww' includes: currentCharacter)
		ifTrue: [ ^ self scan83 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ ^ self scan1X7 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan6 ].
	^ self scan2
]

{ #category : #generated }
VBNetScanner >> scan2 [
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan20 [
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan21X5 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan21X7 ].
	^ self scan21X9
]

{ #category : #generated }
VBNetScanner >> scan21X1 [
	self step.
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			('Jj' includes: currentCharacter)
				ifTrue: [ ^ self scan11 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ ^ self scan27 ].
			('Tt' includes: currentCharacter)
				ifTrue: [ self step.
					('Ii' includes: currentCharacter)
						ifTrue: [ self step.
							('Nn' includes: currentCharacter)
								ifTrue: [ self step.
									('Uu' includes: currentCharacter)
										ifTrue: [ ^ self scan18 ] ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X2 [
	self step.
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan30 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self scan31 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan10 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X3 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan26 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan34 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ self step.
			('Hh' includes: currentCharacter)
				ifTrue: [ ^ self scan31 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X4 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan20 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan25 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X5 [
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan20 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X6 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan28 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X7 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Oo' includes: currentCharacter)
				ifTrue: [ ^ self scan20 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Yy' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X8 [
	self step.
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self scan24 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan21X9 [
	('Cc' includes: currentCharacter)
		ifTrue: [ ^ self scan21X8 ].
	('Dd' includes: currentCharacter)
		ifTrue: [ ^ self scan21X4 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self scan24 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan26 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan21X6 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan21X1 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan21X2 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan33 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan21X3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan22 [
	self step.
	('Cc' includes: currentCharacter)
		ifTrue: [ self step.
			('Hh' includes: currentCharacter)
				ifTrue: [ ^ self scan11 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan23 [
	self step.
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan24 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan10 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan25 [
	self step.
	('Cc' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan26 [
	self step.
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan27 [
	self step.
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan28 [
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan15 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan29 [
	self step.
	('Gg' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan3 [
	[ self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
VBNetScanner >> scan30 [
	self step.
	('Yy' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan31 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan32 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan32 [
	self step.
	('Rr' includes: currentCharacter)
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan33 [
	self step.
	('Yy' includes: currentCharacter)
		ifTrue: [ self step.
			('Pp' includes: currentCharacter)
				ifTrue: [ ^ self scan18 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan34 [
	self step.
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan29 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan35 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan36 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Mm' includes: currentCharacter)
				ifTrue: [ ^ self scan11 ].
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							('Cc' includes: currentCharacter)
								ifTrue: [ self step.
									('Tt' includes: currentCharacter)
										ifTrue: [ self step.
											('Cc' includes: currentCharacter)
												ifTrue: [ ^ self scan39 ] ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan12 ].
			(currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221))
				ifTrue: [ ^ self scan4 ].
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan40 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan36 [
	self step.
	('Cc' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ self step.
					('Mm' includes: currentCharacter)
						ifTrue: [ ^ self scan19 ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Ll' includes: currentCharacter)
				ifTrue: [ self step.
					('Aa' includes: currentCharacter)
						ifTrue: [ ^ self scan37 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ self step.
			('Aa' includes: currentCharacter)
				ifTrue: [ self step.
					('Uu' includes: currentCharacter)
						ifTrue: [ self step.
							('Ll' includes: currentCharacter)
								ifTrue: [ ^ self scan27 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ self step.
					('Gg' includes: currentCharacter)
						ifTrue: [ ^ self scan38 ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan37 [
	self step.
	('Rr' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan38 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan39 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ ^ self scan27 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan4 [
	self recordMatch: #(229).
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan40 [
	self step.
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan41 [
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan42 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan12 ].
	(currentCharacter
		between: (Character value: 8220)
		and: (Character value: 8221))
		ifTrue: [ ^ self scan4 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan14 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan43 [
	self step.
	('Mm' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan44 [
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan45 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan10 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan46 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan26 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan47 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan48 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan49 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Aa' includes: currentCharacter)
						ifTrue: [ self step.
							('Ll' includes: currentCharacter)
								ifTrue: [ ^ self scan50 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan10 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan52 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Cc' includes: currentCharacter)
						ifTrue: [ self step.
							('Tt' includes: currentCharacter)
								ifTrue: [ self step.
									('Ii' includes: currentCharacter)
										ifTrue: [ self step.
											('Oo' includes: currentCharacter)
												ifTrue: [ ^ self scan17 ] ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan49 [
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan44 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan5 [
	self recordMatch: #(229).
	self step.
	('Cc' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(231) ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan50 [
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan51 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan51 [
	self step.
	('Yy' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan52 [
	self step.
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan53 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan53 [
	self step.
	('Dd' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan54 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Tt' includes: currentCharacter)
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan12 ].
					(currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221))
						ifTrue: [ ^ self scan4 ].
					('Tt' includes: currentCharacter)
						ifTrue: [ ^ self scan33 ].
					('Xx' includes: currentCharacter)
						ifTrue: [ self step.
							('Mm' includes: currentCharacter)
								ifTrue: [ self step.
									('Ll' includes: currentCharacter)
										ifTrue: [ self step.
											('Nn' includes: currentCharacter)
												ifTrue: [ self step.
													('Aa' includes: currentCharacter)
														ifTrue: [ self step.
															('Mm' includes: currentCharacter)
																ifTrue: [ ^ self scan55 ] ] ] ] ].
							(currentCharacter == $"
								or: [ currentCharacter
										between: (Character value: 8220)
										and: (Character value: 8221) ])
								ifTrue: [ ^ self scan4 ] ].
					^ self scan3 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ self step.
			('Oo' includes: currentCharacter)
				ifTrue: [ self step.
					('Bb' includes: currentCharacter)
						ifTrue: [ ^ self scan19 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ self step.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan57 ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Tt' includes: currentCharacter)
				ifTrue: [ ^ self scan16 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan55 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ self step.
					('Pp' includes: currentCharacter)
						ifTrue: [ ^ self scan56 ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan56 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ ^ self scan18 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan57 [
	self step.
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan58 [
	self step.
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Mm' includes: currentCharacter)
		ifTrue: [ self step.
			('Pp' includes: currentCharacter)
				ifTrue: [ self step.
					('Ll' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Mm' includes: currentCharacter)
										ifTrue: [ ^ self scan59 ] ].
							(currentCharacter == $"
								or: [ currentCharacter
										between: (Character value: 8220)
										and: (Character value: 8221) ])
								ifTrue: [ ^ self scan4 ].
							^ self scan3 ].
					('Oo' includes: currentCharacter)
						ifTrue: [ self step.
							('Rr' includes: currentCharacter)
								ifTrue: [ ^ self scan60 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ ^ self scan58X1 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan12 ].
			(currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221))
				ifTrue: [ ^ self scan4 ].
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Oo' includes: currentCharacter)
						ifTrue: [ ^ self scan27 ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ] ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan58X1 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan12 ].
	(currentCharacter
		between: (Character value: 8220)
		and: (Character value: 8221))
		ifTrue: [ ^ self scan4 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ self step.
					('Rr' includes: currentCharacter)
						ifTrue: [ self step.
							('Ii' includes: currentCharacter)
								ifTrue: [ ^ self scan60 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ self step.
					('Gg' includes: currentCharacter)
						ifTrue: [ ^ self scan9 ].
					('Rr' includes: currentCharacter)
						ifTrue: [ self step.
							('Ff' includes: currentCharacter)
								ifTrue: [ ^ self scan56 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ] ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan59 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ ^ self scan60 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan6 [
	self recordMatch: #(229).
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan60 [
	self step.
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan15 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan61 [
	self step.
	('Pp' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan62 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan12 ].
					(currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221))
						ifTrue: [ ^ self scan4 ].
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan41 ].
					^ self scan3 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan63 ].
	('Yy' includes: currentCharacter)
		ifTrue: [ self step.
			('Bb' includes: currentCharacter)
				ifTrue: [ self step.
					('Aa' includes: currentCharacter)
						ifTrue: [ ^ self scan44 ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Cc' includes: currentCharacter)
				ifTrue: [ self step.
					('Ll' includes: currentCharacter)
						ifTrue: [ self step.
							('Aa' includes: currentCharacter)
								ifTrue: [ ^ self scan28 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan63 [
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan64 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan64 [
	self step.
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan65 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan65 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Hh' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Rr' includes: currentCharacter)
										ifTrue: [ ^ self scan47 ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Vv' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							('Rr' includes: currentCharacter)
								ifTrue: [ self step.
									('Rr' includes: currentCharacter)
										ifTrue: [ self step.
											('Ii' includes: currentCharacter)
												ifTrue: [ self step.
													('Dd' includes: currentCharacter)
														ifTrue: [ ^ self scan18 ] ] ] ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan66 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Mm' includes: currentCharacter)
				ifTrue: [ ^ self scan55 ].
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Rr' includes: currentCharacter)
						ifTrue: [ self step.
							('Oo' includes: currentCharacter)
								ifTrue: [ self step.
									('Ww' includes: currentCharacter)
										ifTrue: [ ^ self scan67 ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Ww' includes: currentCharacter)
				ifTrue: [ ^ self scan11 ].
			('Xx' includes: currentCharacter)
				ifTrue: [ ^ self scan27 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan68 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan67 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan34 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan68 [
	self step.
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan69 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan69 [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan12 ].
	(currentCharacter
		between: (Character value: 8220)
		and: (Character value: 8221))
		ifTrue: [ ^ self scan4 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self scan67 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Hh' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Rr' includes: currentCharacter)
										ifTrue: [ self step.
											('Ii' includes: currentCharacter)
												ifTrue: [ self step.
													('Tt' includes: currentCharacter)
														ifTrue: [ ^ self scan70 ] ] ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Vv' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							('Rr' includes: currentCharacter)
								ifTrue: [ self step.
									('Rr' includes: currentCharacter)
										ifTrue: [ self step.
											('Ii' includes: currentCharacter)
												ifTrue: [ self step.
													('Dd' includes: currentCharacter)
														ifTrue: [ ^ self scan70 ] ] ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ] ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan7 [
	self step.
	('Dd' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ self step.
					('Hh' includes: currentCharacter)
						ifTrue: [ ^ self scan8 ].
					('Rr' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Ss' includes: currentCharacter)
										ifTrue: [ self step.
											('Ss' includes: currentCharacter)
												ifTrue: [ ^ self scan13 ] ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ll' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ self step.
					('Aa' includes: currentCharacter)
						ifTrue: [ ^ self scan15 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Nn' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan12 ].
					(currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221))
						ifTrue: [ ^ self scan4 ].
					('Aa' includes: currentCharacter)
						ifTrue: [ self step.
							('Ll' includes: currentCharacter)
								ifTrue: [ self step.
									('Ss' includes: currentCharacter)
										ifTrue: [ ^ self scan16 ] ].
							(currentCharacter == $"
								or: [ currentCharacter
										between: (Character value: 8220)
										and: (Character value: 8221) ])
								ifTrue: [ ^ self scan4 ] ].
					^ self scan3 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan70 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ ^ self scan40 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan71 [
	self step.
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			('Jj' includes: currentCharacter)
				ifTrue: [ ^ self scan72 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Pp' includes: currentCharacter)
		ifTrue: [ ^ self scan71X1 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan12 ].
			(currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221))
				ifTrue: [ ^ self scan4 ].
			('Ee' includes: currentCharacter)
				ifTrue: [ ^ self scan49 ].
			^ self scan3 ].
	('Vv' includes: currentCharacter)
		ifTrue: [ ^ self scan73 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	('FNfn' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan71X1 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Aa' includes: currentCharacter)
						ifTrue: [ self step.
							('Tt' includes: currentCharacter)
								ifTrue: [ ^ self scan45 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ self step.
					('Oo' includes: currentCharacter)
						ifTrue: [ self step.
							('Nn' includes: currentCharacter)
								ifTrue: [ self step.
									currentCharacter == $"
										ifTrue: [ ^ self scan12 ].
									(currentCharacter
										between: (Character value: 8220)
										and: (Character value: 8221))
										ifTrue: [ ^ self scan4 ].
									('Aa' includes: currentCharacter)
										ifTrue: [ ^ self scan20 ].
									^ self scan3 ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan72 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ ^ self scan27 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan73 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Ll' includes: currentCharacter)
						ifTrue: [ self step.
							('Oo' includes: currentCharacter)
								ifTrue: [ self step.
									('Aa' includes: currentCharacter)
										ifTrue: [ self step.
											('Dd' includes: currentCharacter)
												ifTrue: [ ^ self scan15 ] ] ].
							(currentCharacter == $"
								or: [ currentCharacter
										between: (Character value: 8220)
										and: (Character value: 8221) ])
								ifTrue: [ ^ self scan4 ].
							^ self scan3 ].
					('Rr' includes: currentCharacter)
						ifTrue: [ self step.
							('Ii' includes: currentCharacter)
								ifTrue: [ self step.
									('Dd' includes: currentCharacter)
										ifTrue: [ self step.
											('Aa' includes: currentCharacter)
												ifTrue: [ ^ self scan40 ].
											('Ee' includes: currentCharacter)
												ifTrue: [ ^ self scan15 ] ] ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan74 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Aa' includes: currentCharacter)
						ifTrue: [ self step.
							('Mm' includes: currentCharacter)
								ifTrue: [ self step.
									('Aa' includes: currentCharacter)
										ifTrue: [ self step.
											('Rr' includes: currentCharacter)
												ifTrue: [ self step.
													('Rr' includes: currentCharacter)
														ifTrue: [ self step.
															('Aa' includes: currentCharacter)
																ifTrue: [ ^ self scan51 ] ] ] ] ].
							(currentCharacter == $"
								or: [ currentCharacter
										between: (Character value: 8220)
										and: (Character value: 8221) ])
								ifTrue: [ ^ self scan4 ].
							^ self scan3 ].
					('Tt' includes: currentCharacter)
						ifTrue: [ self step.
							('Ii' includes: currentCharacter)
								ifTrue: [ ^ self scan19 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ ^ self scan75 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ self step.
			('Bb' includes: currentCharacter)
				ifTrue: [ self step.
					('Ll' includes: currentCharacter)
						ifTrue: [ ^ self scan77 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan75 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Vv' includes: currentCharacter)
				ifTrue: [ ^ self scan38 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Pp' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							('Rr' includes: currentCharacter)
								ifTrue: [ self step.
									('Tt' includes: currentCharacter)
										ifTrue: [ ^ self scan51 ] ] ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Tt' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							('Cc' includes: currentCharacter)
								ifTrue: [ self step.
									('Tt' includes: currentCharacter)
										ifTrue: [ ^ self scan76 ] ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan76 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan53 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan77 [
	self step.
	('Ii' includes: currentCharacter)
		ifTrue: [ ^ self scan25 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan78 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ self step.
					('Ss' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Ee' includes: currentCharacter)
										ifTrue: [ self step.
											('Vv' includes: currentCharacter)
												ifTrue: [ ^ self scan46 ] ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan79 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan79 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ ^ self scan80 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Dd' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ ^ self scan43 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Mm' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan12 ].
			(currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221))
				ifTrue: [ ^ self scan4 ].
			('Oo' includes: currentCharacter)
				ifTrue: [ self step.
					('Vv' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Hh' includes: currentCharacter)
										ifTrue: [ ^ self scan8 ] ] ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ] ].
			^ self scan3 ].
	('Ss' includes: currentCharacter)
		ifTrue: [ self step.
			('Uu' includes: currentCharacter)
				ifTrue: [ self step.
					('Mm' includes: currentCharacter)
						ifTrue: [ ^ self scan18 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ self step.
			('Uu' includes: currentCharacter)
				ifTrue: [ self step.
					('Rr' includes: currentCharacter)
						ifTrue: [ ^ self scan17 ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan8 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Dd' includes: currentCharacter)
						ifTrue: [ self step.
							('Ll' includes: currentCharacter)
								ifTrue: [ ^ self scan9 ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan80 [
	self step.
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ ^ self scan50 ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan81 [
	self step.
	('Bb' includes: currentCharacter)
		ifTrue: [ ^ self scan30 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan81X4 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self scan81X2 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Gg' includes: currentCharacter)
						ifTrue: [ ^ self scan41 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan81X1 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan57 ].
	('Yy' includes: currentCharacter)
		ifTrue: [ ^ self scan81X3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan81X1 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Tt' includes: currentCharacter)
				ifTrue: [ ^ self scan77 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ ^ self scan34 ].
			('Uu' includes: currentCharacter)
				ifTrue: [ self step.
					('Cc' includes: currentCharacter)
						ifTrue: [ self step.
							('Tt' includes: currentCharacter)
								ifTrue: [ self step.
									('Uu' includes: currentCharacter)
										ifTrue: [ ^ self scan37 ] ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	('EOeo' includes: currentCharacter)
		ifTrue: [ ^ self scan61 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan81X2 [
	self step.
	('Aa' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ self step.
					('Oo' includes: currentCharacter)
						ifTrue: [ self step.
							('Ww' includes: currentCharacter)
								ifTrue: [ ^ self scan15 ] ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Rr' includes: currentCharacter)
				ifTrue: [ ^ self scan76 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan32 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan81X3 [
	self step.
	('Nn' includes: currentCharacter)
		ifTrue: [ self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ self step.
					('Ll' includes: currentCharacter)
						ifTrue: [ self step.
							('Oo' includes: currentCharacter)
								ifTrue: [ self step.
									('Cc' includes: currentCharacter)
										ifTrue: [ self step.
											('Kk' includes: currentCharacter)
												ifTrue: [ ^ self scan11 ] ] ] ] ] ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan81X4 [
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan72 ].
	('Tt' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan82 [
	self step.
	('Hh' includes: currentCharacter)
		ifTrue: [ self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ ^ self scan17 ].
			('Rr' includes: currentCharacter)
				ifTrue: [ self step.
					('Oo' includes: currentCharacter)
						ifTrue: [ self step.
							('Ww' includes: currentCharacter)
								ifTrue: [ ^ self scan11 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ self step.
			('Uu' includes: currentCharacter)
				ifTrue: [ ^ self scan18 ].
			('Yy' includes: currentCharacter)
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self scan12 ].
					(currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221))
						ifTrue: [ ^ self scan4 ].
					('Cc' includes: currentCharacter)
						ifTrue: [ ^ self scan39 ].
					^ self scan3 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Yy' includes: currentCharacter)
		ifTrue: [ self step.
			('Pp' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan13 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan83 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan52 ].
	('Hh' includes: currentCharacter)
		ifTrue: [ self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ ^ self scan17 ].
			('Ii' includes: currentCharacter)
				ifTrue: [ ^ self scan41 ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Dd' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							('Nn' includes: currentCharacter)
								ifTrue: [ ^ self scan67 ] ].
					(currentCharacter == $"
						or: [ currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221) ])
						ifTrue: [ ^ self scan4 ].
					^ self scan3 ].
			('Tt' includes: currentCharacter)
				ifTrue: [ self step.
					('Hh' includes: currentCharacter)
						ifTrue: [ self step.
							currentCharacter == $"
								ifTrue: [ ^ self scan12 ].
							(currentCharacter
								between: (Character value: 8220)
								and: (Character value: 8221))
								ifTrue: [ ^ self scan4 ].
							('Ee' includes: currentCharacter)
								ifTrue: [ self step.
									('Vv' includes: currentCharacter)
										ifTrue: [ ^ self scan59 ].
									(currentCharacter == $"
										or: [ currentCharacter
												between: (Character value: 8220)
												and: (Character value: 8221) ])
										ifTrue: [ ^ self scan4 ] ].
							^ self scan3 ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	('Rr' includes: currentCharacter)
		ifTrue: [ self step.
			('Ii' includes: currentCharacter)
				ifTrue: [ self step.
					('Tt' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ ^ self scan80 ] ] ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan4 ].
			^ self scan3 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan5 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan84 [
	[ self step.
	currentCharacter isDigit
		ifTrue: [ [ self step.
			currentCharacter == $-
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self step.
							currentCharacter == $-
								ifTrue: [ ^ self scan87 ].
							currentCharacter isDigit ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $/
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self step.
							currentCharacter == $/
								ifTrue: [ ^ self scan87 ].
							currentCharacter isDigit ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $:
				ifTrue: [ ^ self scan89 ].
			currentCharacter isDigit ] whileTrue.
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space ])
				ifTrue: [ ^ self scan85 ].
			('APap' includes: currentCharacter)
				ifTrue: [ ^ self scan86 ].
			^ self reportLastMatch ].
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan85 [
	[ self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	('APap' includes: currentCharacter)
		ifTrue: [ ^ self scan86 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan86 [
	self step.
	('Mm' includes: currentCharacter)
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(232) ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan87 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan88 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan88 [
	[ self step.
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(232) ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(232) ].
			currentCharacter isDigit
				ifTrue: [ [ self step.
					currentCharacter == $:
						ifTrue: [ ^ self scan89 ].
					currentCharacter isDigit ] whileTrue.
					(currentCharacter == Character tab
						or: [ currentCharacter == Character space ])
						ifTrue: [ ^ self scan85 ].
					('APap' includes: currentCharacter)
						ifTrue: [ ^ self scan86 ].
					^ self reportLastMatch ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan89 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(232) ].
			currentCharacter == $:
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self step.
							currentCharacter == $#
								ifTrue: [ ^ self recordAndReportMatch: #(232) ].
							currentCharacter isDigit ] whileTrue.
							(currentCharacter == Character tab
								or: [ currentCharacter == Character space ])
								ifTrue: [ ^ self scan90 ].
							('APap' includes: currentCharacter)
								ifTrue: [ ^ self scan86 ] ].
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue.
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space ])
				ifTrue: [ ^ self scan90 ].
			('APap' includes: currentCharacter)
				ifTrue: [ ^ self scan86 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan9 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan10 ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan4 ].
	^ self scan3
]

{ #category : #generated }
VBNetScanner >> scan90 [
	[ self step.
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(232) ].
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	('APap' includes: currentCharacter)
		ifTrue: [ ^ self scan86 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan91 [
	self step.
	('ILSils' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(226) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan92 [
	[ self recordMatch: #(228).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan93 ].
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(228) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan93 [
	self step.
	('+-' includes: currentCharacter)
		ifTrue: [ self step ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan94 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan94 [
	[ self recordMatch: #(228).
	self step.
	currentCharacter isDigit ] whileTrue.
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(228) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan95 [
	[ self recordMatch: #(222 223).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(222 223) ].
	currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan96 [
	self recordMatch: #(222 223).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan97 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(222 223) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan95 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan97 [
	self recordMatch: #(222 223).
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(222 223).
			self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ self recordMatch: #(222 223).
					self step.
					(currentCharacter == Character tab
						or: [ currentCharacter == Character space ])
						ifTrue: [ [ self step.
							currentCharacter == Character tab
								or: [ currentCharacter == Character space ] ] whileTrue.
							('Ii' includes: currentCharacter)
								ifTrue: [ self step.
									('Ff' includes: currentCharacter)
										ifTrue: [ ^ self recordAndReportMatch: #(233) ] ].
							^ self reportLastMatch ].
					('Ii' includes: currentCharacter)
						ifTrue: [ self recordMatch: #(222 223).
							self step.
							('Ff' includes: currentCharacter)
								ifTrue: [ self recordMatch: #(222 223 233).
									self step ] ] ] ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(222 223) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan95 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan98 [
	self recordMatch: #(222 223).
	(self scanForString: 'EM')
		ifTrue:
			[ ^ self scan98X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(222 223) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan95 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan98X1 [
	[ self recordMatch: #(220 222 223).
	self step.
	(currentCharacter
		between: (Character value: 768)
		and: (Character value: 879))
		ifTrue: [ ^ self scan95 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ self recordMatch: #(220 222 223).
			self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ [ self recordMatch: #(220).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	true
		ifTrue: [ [ self recordMatch: #(220).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan99 [
	[ self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(222 223) ].
	currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForToken [
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scanForTokenX17 ].
	currentCharacter == $!
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self scanForTokenX21
]

{ #category : #generated }
VBNetScanner >> scanForTokenX1 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	('Hh' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(226).
					self step.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan91 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
					((currentCharacter between: $% and: $&)
						or:
							[ 'ILSils' includes: currentCharacter ])
						ifTrue: [ ^ self recordAndReportMatch: #(226) ] ].
			^ self reportLastMatch ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(226).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan91 ].
					((currentCharacter between: $% and: $&)
						or:
							[ 'ILSils' includes: currentCharacter ])
						ifTrue: [ ^ self recordAndReportMatch: #(226) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX10 [
	[ self recordMatch: #(219).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX11 [
	self recordMatch: #(213).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(214) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX12 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX13 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX14 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX15 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX16 [
	self recordMatch: #(7).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX17 [
	self recordMatch: #(217).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(217) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX18 [
	self recordMatch: #(14).
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan92 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX19 [
	(currentCharacter
		between: (Character value: 8220)
		and: (Character value: 8221))
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX2 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue:
			[ ^ self scanForTokenX10 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan96 ].
	(currentCharacter == Character lf
		or: [ currentCharacter
				between: (Character value: 8232)
				and: (Character value: 8233) ])
		ifTrue: [ ^ self recordAndReportMatch: #(217) ].
	(currentCharacter == $'
		or: [ currentCharacter
				between: (Character value: 8216)
				and: (Character value: 8217) ])
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter isLetter
		ifTrue: [ ^ self scan95 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX2 [
	[ self recordMatch: #(226 227).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan92 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan93 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan91 ].
	((currentCharacter between: $% and: $&)
		or:
			[ 'ILSils' includes: currentCharacter ])
		ifTrue: [ ^ self recordAndReportMatch: #(226) ].
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(228) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX20 [
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $R
		ifTrue: [ ^ self scan98 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $\
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $_
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(215) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(216) ].
	^ self scanForTokenX19
]

{ #category : #generated }
VBNetScanner >> scanForTokenX21 [
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $#
		ifTrue: [ ^ self scan84 ].
	currentCharacter == $$
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX18 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX13 ].
	^ self scanForTokenX20
]

{ #category : #generated }
VBNetScanner >> scanForTokenX3 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan100 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self step.
			currentCharacter == Character cr
				ifTrue: [ ^ self scan100 ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue.
			(currentCharacter == Character lf
				or: [ currentCharacter
						between: (Character value: 8232)
						and: (Character value: 8233) ])
				ifTrue: [ ^ self recordAndReportMatch: #(218) ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ currentCharacter
				between: (Character value: 8232)
				and: (Character value: 8233) ])
		ifTrue: [ ^ self recordAndReportMatch: #(218) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan95 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX4 [
	self recordMatch: #(220 221).
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ [ self recordMatch: #(220).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX5 [
	self recordMatch: #(19).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(20).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(21) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX6 [
	self recordMatch: #(230).
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan6 ].
	^ self scan2
]

{ #category : #generated }
VBNetScanner >> scanForTokenX7 [
	self step.
	currentCharacter == $_
		ifTrue: [ self step.
			(currentCharacter isAlphaNumeric
				or: [ currentCharacter == $_
						or: [ currentCharacter
								between: (Character value: 768)
								and: (Character value: 879) ] ])
				ifTrue: [ ^ self scan99 ].
			^ self reportLastMatch ].
	currentCharacter isLetter
		ifTrue: [ ^ self scan99 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX8 [
	self recordMatch: #(25).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(28) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX9 [
	self recordMatch: #(210).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(211) ].
	currentCharacter == $\
		ifTrue: [ ^ self recordAndReportMatch: #(212) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]

{ #category : #generated }
VBNetScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
