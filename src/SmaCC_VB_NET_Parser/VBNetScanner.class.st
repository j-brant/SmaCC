Class {
	#name : #VBNetScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'lineContinuations',
		'preprocessorDirectives'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #'generated-initialization' }
VBNetScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(218 'REMOVEHANDLER' 167) #(228 'ADDHANDLER' 30) #(228 'ADDRESSOF' 31) #(228 'AGGREGATE' 32) #(228 'ALIAS' 33) #(228 'AND' 34) #(228 'ANDALSO' 35) #(228 'ANSI' 36) #(228 'AS' 37) #(228 'ASCENDING' 38) #(228 'ASSEMBLY' 39) #(228 'ASYNC' 40) #(228 'AUTO' 41) #(228 'AWAIT' 42) #(228 'BINARY' 43) #(228 'BOOLEAN' 44) #(228 'BY' 45) #(228 'BYREF' 46) #(228 'BYTE' 48) #(228 'BYVAL' 47) #(228 'CALL' 66) #(228 'CASE' 67) #(228 'CATCH' 68) #(228 'CBOOL' 49) #(228 'CBYTE' 50) #(228 'CCHAR' 51) #(228 'CDATE' 52) #(228 'CDBL' 53) #(228 'CDEC' 54) #(228 'CHAR' 69) #(228 'CINT' 55) #(228 'CLASS' 70) #(228 'CLNG' 56) #(228 'COBJ' 57) #(228 'COMPARE' 71) #(228 'CONST' 72) #(228 'CONTINUE' 73) #(228 'CSBYTE' 58) #(228 'CSHORT' 59) #(228 'CSNG' 60) #(228 'CSTR' 61) #(228 'CTYPE' 62) #(228 'CUINT' 63) #(228 'CULNG' 64) #(228 'CUSHORT' 65) #(228 'CUSTOM' 74) #(228 'DATE' 75) #(228 'DECIMAL' 76) #(228 'DECLARE' 77) #(228 'DEFAULT' 78) #(228 'DELEGATE' 79) #(228 'DESCENDING' 80) #(228 'DIM' 81) #(228 'DIRECTCAST' 82) #(228 'DISTINCT' 83) #(228 'DO' 84) #(228 'DOUBLE' 85) #(228 'EACH' 86) #(228 'ELSE' 87) #(228 'END' 88) #(228 'ENUM' 89) #(228 'EQUALS' 90) #(228 'ERASE' 91) #(228 'ERROR' 92) #(228 'EVENT' 93) #(228 'EXIT' 94) #(228 'EXPLICIT' 95) #(228 'FALSE' 219) #(228 'FINALLY' 96) #(228 'FOR' 97) #(228 'FRIEND' 98) #(228 'FROM' 99) #(228 'FUNCTION' 100) #(228 'GET' 101) #(228 'GETTYPE' 102) #(228 'GLOBAL' 103) #(228 'GOTO' 104) #(228 'GROUP' 105) #(228 'HANDLES' 106) #(228 'IF' 107) #(228 'IMPLEMENTS' 108) #(228 'IMPORTS' 109) #(228 'IN' 110) #(228 'INFER' 111) #(228 'INHERITS' 112) #(228 'INTEGER' 113) #(228 'INTERFACE' 114) #(228 'INTO' 115) #(228 'IS' 116) #(228 'ISFALSE' 117) #(228 'ISNOT' 118) #(228 'ISTRUE' 119) #(228 'ITERATOR' 120) #(228 'JOIN' 121) #(228 'KEY' 122) #(228 'LET' 123) #(228 'LIB' 124) #(228 'LIKE' 125) #(228 'LONG' 126) #(228 'LOOP' 127) #(228 'ME' 128) #(228 'MID' 129) #(228 'MOD' 130) #(228 'MODULE' 131) #(228 'MUSTINHERIT' 132) #(228 'MUSTOVERRIDE' 133) #(228 'MYBASE' 134) #(228 'MYCLASS' 135) #(228 'NAMESPACE' 136) #(228 'NARROWING' 137) #(228 'NEW' 138) #(228 'NEXT' 139) #(228 'NOT' 140) #(228 'NOTHING' 227) #(228 'NOTINHERITABLE' 141) #(228 'NOTOVERRIDABLE' 142) #(228 'OBJECT' 143) #(228 'OF' 144) #(228 'OFF' 145) #(228 'ON' 146) #(228 'OPERATOR' 147) #(228 'OPTION' 148) #(228 'OPTIONAL' 149) #(228 'OR' 150) #(228 'ORDER' 152) #(228 'ORELSE' 151) #(228 'OUT' 153) #(228 'OVERLOADS' 154) #(228 'OVERRIDABLE' 155) #(228 'OVERRIDES' 156) #(228 'PARAMARRAY' 157) #(228 'PARTIAL' 158) #(228 'PRESERVE' 159) #(228 'PRIVATE' 160) #(228 'PROPERTY' 161) #(228 'PROTECTED' 162) #(228 'PUBLIC' 163) #(228 'RAISEEVENT' 164) #(228 'READONLY' 166) #(228 'REDIM' 165) #(228 'REMOVEHANDLER' 167) #(228 'RESUME' 168) #(228 'RETURN' 169) #(228 'SBYTE' 170) #(228 'SELECT' 171) #(228 'SET' 172) #(228 'SHADOWS' 173) #(228 'SHARED' 174) #(228 'SHORT' 175) #(228 'SINGLE' 176) #(228 'SKIP' 177) #(228 'STATIC' 178) #(228 'STEP' 179) #(228 'STOP' 180) #(228 'STRICT' 181) #(228 'STRING' 182) #(228 'STRUCTURE' 183) #(228 'SUB' 184) #(228 'SYNCLOCK' 185) #(228 'TAKE' 186) #(228 'TEXT' 187) #(228 'THEN' 188) #(228 'THROW' 189) #(228 'TO' 190) #(228 'TRUE' 219) #(228 'TRY' 191) #(228 'TRYCAST' 192) #(228 'TYPEOF' 193) #(228 'UINTEGER' 194) #(228 'ULONG' 195) #(228 'UNICODE' 197) #(228 'UNTIL' 198) #(228 'USHORT' 196) #(228 'USING' 199) #(228 'WHEN' 200) #(228 'WHERE' 201) #(228 'WHILE' 202) #(228 'WIDENING' 203) #(228 'WITH' 204) #(228 'WITHEVENTS' 205) #(228 'WRITEONLY' 206) #(228 'XOR' 207) #(228 'YIELD' 208) #(229 'ADDHANDLER' 30) #(229 'ADDRESSOF' 31) #(229 'AGGREGATE' 32) #(229 'ALIAS' 33) #(229 'AND' 34) #(229 'ANDALSO' 35) #(229 'ANSI' 36) #(229 'AS' 37) #(229 'ASCENDING' 38) #(229 'ASSEMBLY' 39) #(229 'ASYNC' 40) #(229 'AUTO' 41) #(229 'AWAIT' 42) #(229 'BINARY' 43) #(229 'BOOLEAN' 44) #(229 'BY' 45) #(229 'BYREF' 46) #(229 'BYTE' 48) #(229 'BYVAL' 47) #(229 'CALL' 66) #(229 'CASE' 67) #(229 'CATCH' 68) #(229 'CBOOL' 49) #(229 'CBYTE' 50) #(229 'CCHAR' 51) #(229 'CDATE' 52) #(229 'CDBL' 53) #(229 'CDEC' 54) #(229 'CHAR' 69) #(229 'CINT' 55) #(229 'CLASS' 70) #(229 'CLNG' 56) #(229 'COBJ' 57) #(229 'COMPARE' 71) #(229 'CONST' 72) #(229 'CONTINUE' 73) #(229 'CSBYTE' 58) #(229 'CSHORT' 59) #(229 'CSNG' 60) #(229 'CSTR' 61) #(229 'CTYPE' 62) #(229 'CUINT' 63) #(229 'CULNG' 64) #(229 'CUSHORT' 65) #(229 'CUSTOM' 74) #(229 'DATE' 75) #(229 'DECIMAL' 76) #(229 'DECLARE' 77) #(229 'DEFAULT' 78) #(229 'DELEGATE' 79) #(229 'DESCENDING' 80) #(229 'DIM' 81) #(229 'DIRECTCAST' 82) #(229 'DISTINCT' 83) #(229 'DO' 84) #(229 'DOUBLE' 85) #(229 'EACH' 86) #(229 'ELSE' 87) #(229 'END' 88) #(229 'ENUM' 89) #(229 'EQUALS' 90) #(229 'ERASE' 91) #(229 'ERROR' 92) #(229 'EVENT' 93) #(229 'EXIT' 94) #(229 'EXPLICIT' 95) #(229 'FALSE' 219) #(229 'FINALLY' 96) #(229 'FOR' 97) #(229 'FRIEND' 98) #(229 'FROM' 99) #(229 'FUNCTION' 100) #(229 'GET' 101) #(229 'GETTYPE' 102) #(229 'GLOBAL' 103) #(229 'GOTO' 104) #(229 'GROUP' 105) #(229 'HANDLES' 106) #(229 'IF' 107) #(229 'IMPLEMENTS' 108) #(229 'IMPORTS' 109) #(229 'IN' 110) #(229 'INFER' 111) #(229 'INHERITS' 112) #(229 'INTEGER' 113) #(229 'INTERFACE' 114) #(229 'INTO' 115) #(229 'IS' 116) #(229 'ISFALSE' 117) #(229 'ISNOT' 118) #(229 'ISTRUE' 119) #(229 'ITERATOR' 120) #(229 'JOIN' 121) #(229 'KEY' 122) #(229 'LET' 123) #(229 'LIB' 124) #(229 'LIKE' 125) #(229 'LONG' 126) #(229 'LOOP' 127) #(229 'ME' 128) #(229 'MID' 129) #(229 'MOD' 130) #(229 'MODULE' 131) #(229 'MUSTINHERIT' 132) #(229 'MUSTOVERRIDE' 133) #(229 'MYBASE' 134) #(229 'MYCLASS' 135) #(229 'NAMESPACE' 136) #(229 'NARROWING' 137) #(229 'NEW' 138) #(229 'NEXT' 139) #(229 'NOT' 140) #(229 'NOTHING' 227) #(229 'NOTINHERITABLE' 141) #(229 'NOTOVERRIDABLE' 142) #(229 'OBJECT' 143) #(229 'OF' 144) #(229 'OFF' 145) #(229 'ON' 146) #(229 'OPERATOR' 147) #(229 'OPTION' 148) #(229 'OPTIONAL' 149) #(229 'OR' 150) #(229 'ORDER' 152) #(229 'ORELSE' 151) #(229 'OUT' 153) #(229 'OVERLOADS' 154) #(229 'OVERRIDABLE' 155) #(229 'OVERRIDES' 156) #(229 'PARAMARRAY' 157) #(229 'PARTIAL' 158) #(229 'PRESERVE' 159) #(229 'PRIVATE' 160) #(229 'PROPERTY' 161) #(229 'PROTECTED' 162) #(229 'PUBLIC' 163) #(229 'RAISEEVENT' 164) #(229 'READONLY' 166) #(229 'REDIM' 165) #(229 'REMOVEHANDLER' 167) #(229 'RESUME' 168) #(229 'RETURN' 169) #(229 'SBYTE' 170) #(229 'SELECT' 171) #(229 'SET' 172) #(229 'SHADOWS' 173) #(229 'SHARED' 174) #(229 'SHORT' 175) #(229 'SINGLE' 176) #(229 'SKIP' 177) #(229 'STATIC' 178) #(229 'STEP' 179) #(229 'STOP' 180) #(229 'STRICT' 181) #(229 'STRING' 182) #(229 'STRUCTURE' 183) #(229 'SUB' 184) #(229 'SYNCLOCK' 185) #(229 'TAKE' 186) #(229 'TEXT' 187) #(229 'THEN' 188) #(229 'THROW' 189) #(229 'TO' 190) #(229 'TRUE' 219) #(229 'TRY' 191) #(229 'TRYCAST' 192) #(229 'TYPEOF' 193) #(229 'UINTEGER' 194) #(229 'ULONG' 195) #(229 'UNICODE' 197) #(229 'UNTIL' 198) #(229 'USHORT' 196) #(229 'USING' 199) #(229 'WHEN' 200) #(229 'WHERE' 201) #(229 'WHILE' 202) #(229 'WIDENING' 203) #(229 'WITH' 204) #(229 'WITHEVENTS' 205) #(229 'WRITEONLY' 206) #(229 'XOR' 207) #(229 'YIELD' 208))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
VBNetScanner >> IdentifierId [
	^ 229
]

{ #category : #generated }
VBNetScanner >> IdentifierOrKeywordId [
	^ 228
]

{ #category : #private }
VBNetScanner >> LineContinuation [
	lineContinuations add: start + 1.
	^ self whitespace
]

{ #category : #generated }
VBNetScanner >> LineTerminatorId [
	^ 215
]

{ #category : #generated }
VBNetScanner >> emptySymbolTokenId [
	^ 649
]

{ #category : #generated }
VBNetScanner >> errorTokenId [
	^ 650
]

{ #category : #'initialize-release' }
VBNetScanner >> initialize [
	super initialize.
	lineContinuations := Set new.
	preprocessorDirectives := Set new.
]

{ #category : #generated }
VBNetScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #accessing }
VBNetScanner >> lineContinuations [
	^ lineContinuations
]

{ #category : #private }
VBNetScanner >> preprocessorDirective [
	preprocessorDirectives add: (Array with: start + 1 with: matchEnd).
	^ self whitespace
]

{ #category : #accessing }
VBNetScanner >> preprocessorDirectives [
	^ preprocessorDirectives
]

{ #category : #generated }
VBNetScanner >> scan1 [
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ self recordMatch: #(223).
			self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(224) ].
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	^ self scan2
]

{ #category : #generated }
VBNetScanner >> scan10 [
	[ self recordMatch: #(230).
	self step.
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(230).
			self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(230) ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ currentCharacter
				between: (Character value: 8232)
				and: (Character value: 8233) ])
		ifTrue: [ ^ self recordAndReportMatch: #(230) ].
	true ] whileTrue
]

{ #category : #generated }
VBNetScanner >> scan11 [
	self step.
	currentCharacter == $e
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan12 [
	self step.
	('ILSils' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(220) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan13 [
	[ self recordMatch: #(222).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan14 ].
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(222) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan14 [
	self step.
	('+-' includes: currentCharacter)
		ifTrue: [ self step ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan15 [
	[ self recordMatch: #(222).
	self step.
	currentCharacter isDigit ] whileTrue.
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(222) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan16 [
	[ self recordMatch: #(228 229).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(228 229) ].
	currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan17 [
	self recordMatch: #(228 229).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(228 229) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan18 [
	self recordMatch: #(228 229).
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(228 229).
			self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ self recordMatch: #(228 229).
					self step.
					(currentCharacter == Character tab
						or: [ currentCharacter == Character space ])
						ifTrue: [ [ self step.
							currentCharacter == Character tab
								or: [ currentCharacter == Character space ] ] whileTrue.
							('Ii' includes: currentCharacter)
								ifTrue: [ self step.
									('Ff' includes: currentCharacter)
										ifTrue: [ ^ self recordAndReportMatch: #(226) ] ].
							^ self reportLastMatch ].
					('Ii' includes: currentCharacter)
						ifTrue: [ self recordMatch: #(228 229).
							self step.
							('Ff' includes: currentCharacter)
								ifTrue: [ self recordMatch: #(226 228 229).
									self step ] ] ] ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(228 229) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan19 [
	self recordMatch: #(228 229).
	(self scanForString: 'EM')
		ifTrue:
			[ ^ self scan19X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(228 229) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan19X1 [
	[ self recordMatch: #(218 228 229).
	self step.
	(currentCharacter
		between: (Character value: 768)
		and: (Character value: 879))
		ifTrue: [ ^ self scan16 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ self recordMatch: #(218 228 229).
			self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ [ self recordMatch: #(218).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	true
		ifTrue: [ [ self recordMatch: #(218).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan2 [
	[ self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ self recordMatch: #(223).
			self step.
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
VBNetScanner >> scan20 [
	[ self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(228 229) ].
	currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan21 [
	self recordMatch: #(216).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(216) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan3 [
	[ self step.
	currentCharacter == $C
		ifTrue: [ (self scanForString: 'onst')
				ifTrue: [ ^ self scan10 ].
			^ self reportLastMatch ].
	currentCharacter == $E
		ifTrue: [ self step.
			currentCharacter == $l
				ifTrue: [ self step.
					currentCharacter == $s
						ifTrue: [ ^ self scan11 ].
					^ self reportLastMatch ].
			currentCharacter == $n
				ifTrue: [ self step.
					currentCharacter == $d
						ifTrue: [ ^ self scan10 ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue: [ (self scanForString: 'ternal')
						ifTrue: [ self step.
							currentCharacter == $C
								ifTrue: [ (self scanForString: 'hecksum')
										ifTrue: [ ^ self scan10 ].
									^ self reportLastMatch ].
							currentCharacter == $S
								ifTrue: [ (self scanForString: 'ourc')
										ifTrue: [ ^ self scan11 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $I
		ifTrue: [ self step.
			currentCharacter == $f
				ifTrue: [ ^ self scan10 ].
			^ self reportLastMatch ].
	currentCharacter == $R
		ifTrue: [ (self scanForString: 'egion')
				ifTrue: [ ^ self scan10 ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan3X1 ].
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan3X1 [
	[ self step.
	currentCharacter == $-
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self step.
					currentCharacter == $-
						ifTrue: [ ^ self scan6 ].
					currentCharacter isDigit ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $/
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self step.
					currentCharacter == $/
						ifTrue: [ ^ self scan6 ].
					currentCharacter isDigit ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $:
		ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan4 ].
	('APap' includes: currentCharacter)
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan4 [
	[ self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	('APap' includes: currentCharacter)
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan5 [
	self step.
	('Mm' includes: currentCharacter)
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(225) ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan6 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan7 [
	[ self step.
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(225) ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(225) ].
			currentCharacter isDigit
				ifTrue: [ [ self step.
					currentCharacter == $:
						ifTrue: [ ^ self scan8 ].
					currentCharacter isDigit ] whileTrue.
					(currentCharacter == Character tab
						or: [ currentCharacter == Character space ])
						ifTrue: [ ^ self scan4 ].
					('APap' includes: currentCharacter)
						ifTrue: [ ^ self scan5 ].
					^ self reportLastMatch ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan8 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(225) ].
			currentCharacter == $:
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self step.
							currentCharacter == $#
								ifTrue: [ ^ self recordAndReportMatch: #(225) ].
							currentCharacter isDigit ] whileTrue.
							(currentCharacter == Character tab
								or: [ currentCharacter == Character space ])
								ifTrue: [ ^ self scan9 ].
							('APap' includes: currentCharacter)
								ifTrue: [ ^ self scan5 ] ].
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue.
			(currentCharacter == Character tab
				or: [ currentCharacter == Character space ])
				ifTrue: [ ^ self scan9 ].
			('APap' includes: currentCharacter)
				ifTrue: [ ^ self scan5 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan9 [
	[ self step.
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(225) ].
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	('APap' includes: currentCharacter)
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForToken [
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scanForTokenX18 ].
	^ self scanForTokenX22
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
				ifTrue: [ [ self recordMatch: #(220).
					self step.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan12 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
					((currentCharacter between: $% and: $&)
						or:
							[ 'ILSils' includes: currentCharacter ])
						ifTrue: [ ^ self recordAndReportMatch: #(220) ] ].
			^ self reportLastMatch ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(220).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan12 ].
					((currentCharacter between: $% and: $&)
						or:
							[ 'ILSils' includes: currentCharacter ])
						ifTrue: [ ^ self recordAndReportMatch: #(220) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX10 [
	[ self recordMatch: #(217).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX11 [
	self recordMatch: #(211).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(212) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX12 [
	self recordMatch: #(209).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(210) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX13 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX14 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX15 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX16 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX17 [
	self recordMatch: #(7).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX18 [
	self recordMatch: #(215).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(215) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX19 [
	self recordMatch: #(14).
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX2 [
	[ self recordMatch: #(220 221).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan13 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan14 ].
	('Uu' includes: currentCharacter)
		ifTrue: [ ^ self scan12 ].
	((currentCharacter between: $% and: $&)
		or:
			[ 'ILSils' includes: currentCharacter ])
		ifTrue: [ ^ self recordAndReportMatch: #(220) ].
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(222) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX20 [
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX2 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue:
			[ ^ self scanForTokenX10 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	(currentCharacter == Character lf
		or: [ currentCharacter
				between: (Character value: 8232)
				and: (Character value: 8233) ])
		ifTrue: [ ^ self recordAndReportMatch: #(215) ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue:
			[ ^ self scanForTokenX9 ].
	(currentCharacter == $'
		or: [ currentCharacter
				between: (Character value: 8216)
				and: (Character value: 8217) ])
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter isLetter
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX21 [
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX13 ].
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
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $\
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $_
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(213) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(214) ].
	^ self scanForTokenX20
]

{ #category : #generated }
VBNetScanner >> scanForTokenX22 [
	currentCharacter == $!
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $#
		ifTrue: [ ^ self scan3 ].
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
			[ ^ self scanForTokenX17 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX19 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX14 ].
	^ self scanForTokenX21
]

{ #category : #generated }
VBNetScanner >> scanForTokenX3 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan21 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self step.
			currentCharacter == Character cr
				ifTrue: [ ^ self scan21 ].
			currentCharacter == Character tab
				or: [ currentCharacter == Character space ] ] whileTrue.
			(currentCharacter == Character lf
				or: [ currentCharacter
						between: (Character value: 8232)
						and: (Character value: 8233) ])
				ifTrue: [ ^ self recordAndReportMatch: #(216) ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ currentCharacter
				between: (Character value: 8232)
				and: (Character value: 8233) ])
		ifTrue: [ ^ self recordAndReportMatch: #(216) ].
	(currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX4 [
	[ self recordMatch: #(218).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
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
	self recordMatch: #(223).
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
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
				ifTrue: [ ^ self scan20 ].
			^ self reportLastMatch ].
	currentCharacter isLetter
		ifTrue: [ ^ self scan20 ].
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
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ ^ self scanForTokenX6 ].
	^ self scan1
]

{ #category : #generated }
VBNetScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #LineContinuation #whitespace #comment nil nil nil nil nil nil nil nil nil nil nil #preprocessorDirective)
]

{ #category : #generated }
VBNetScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
