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
	#(#(220 'REMOVEHANDLER' 168) #(232 'ADDHANDLER' 30) #(232 'ADDRESSOF' 31) #(232 'AGGREGATE' 32) #(232 'ALIAS' 33) #(232 'AND' 34) #(232 'ANDALSO' 35) #(232 'ANSI' 36) #(232 'AS' 37) #(232 'ASCENDING' 38) #(232 'ASSEMBLY' 39) #(232 'ASYNC' 40) #(232 'AUTO' 41) #(232 'AWAIT' 42) #(232 'BINARY' 43) #(232 'BOOLEAN' 44) #(232 'BY' 45) #(232 'BYREF' 46) #(232 'BYTE' 48) #(232 'BYVAL' 47) #(232 'CALL' 66) #(232 'CASE' 67) #(232 'CATCH' 68) #(232 'CBOOL' 49) #(232 'CBYTE' 50) #(232 'CCHAR' 51) #(232 'CDATE' 52) #(232 'CDBL' 53) #(232 'CDEC' 54) #(232 'CHAR' 69) #(232 'CINT' 55) #(232 'CLASS' 70) #(232 'CLNG' 56) #(232 'COBJ' 57) #(232 'COMPARE' 71) #(232 'CONST' 72) #(232 'CONTINUE' 73) #(232 'CSBYTE' 58) #(232 'CSHORT' 59) #(232 'CSNG' 60) #(232 'CSTR' 61) #(232 'CTYPE' 62) #(232 'CUINT' 63) #(232 'CULNG' 64) #(232 'CUSHORT' 65) #(232 'CUSTOM' 74) #(232 'DATE' 75) #(232 'DECIMAL' 76) #(232 'DECLARE' 77) #(232 'DEFAULT' 78) #(232 'DELEGATE' 79) #(232 'DESCENDING' 80) #(232 'DIM' 81) #(232 'DIRECTCAST' 82) #(232 'DISTINCT' 83) #(232 'DO' 84) #(232 'DOUBLE' 85) #(232 'EACH' 86) #(232 'ELSE' 87) #(232 'END' 88) #(232 'ENUM' 89) #(232 'EQUALS' 90) #(232 'ERASE' 91) #(232 'ERROR' 92) #(232 'EVENT' 93) #(232 'EXIT' 94) #(232 'EXPLICIT' 95) #(232 'FALSE' 222) #(232 'FINALLY' 96) #(232 'FOR' 97) #(232 'FRIEND' 98) #(232 'FROM' 99) #(232 'FUNCTION' 100) #(232 'GET' 101) #(232 'GETTYPE' 102) #(232 'GETXMLNAMESPACE' 103) #(232 'GLOBAL' 104) #(232 'GOTO' 105) #(232 'GROUP' 106) #(232 'HANDLES' 107) #(232 'IF' 108) #(232 'IMPLEMENTS' 109) #(232 'IMPORTS' 110) #(232 'IN' 111) #(232 'INFER' 112) #(232 'INHERITS' 113) #(232 'INTEGER' 114) #(232 'INTERFACE' 115) #(232 'INTO' 116) #(232 'IS' 117) #(232 'ISFALSE' 118) #(232 'ISNOT' 119) #(232 'ISTRUE' 120) #(232 'ITERATOR' 121) #(232 'JOIN' 122) #(232 'KEY' 123) #(232 'LET' 124) #(232 'LIB' 125) #(232 'LIKE' 126) #(232 'LONG' 127) #(232 'LOOP' 128) #(232 'ME' 129) #(232 'MID' 130) #(232 'MOD' 131) #(232 'MODULE' 132) #(232 'MUSTINHERIT' 133) #(232 'MUSTOVERRIDE' 134) #(232 'MYBASE' 135) #(232 'MYCLASS' 136) #(232 'NAMESPACE' 137) #(232 'NARROWING' 138) #(232 'NEW' 139) #(232 'NEXT' 140) #(232 'NOT' 141) #(232 'NOTHING' 231) #(232 'NOTINHERITABLE' 142) #(232 'NOTOVERRIDABLE' 143) #(232 'OBJECT' 144) #(232 'OF' 145) #(232 'OFF' 146) #(232 'ON' 147) #(232 'OPERATOR' 148) #(232 'OPTION' 149) #(232 'OPTIONAL' 150) #(232 'OR' 151) #(232 'ORDER' 153) #(232 'ORELSE' 152) #(232 'OUT' 154) #(232 'OVERLOADS' 155) #(232 'OVERRIDABLE' 156) #(232 'OVERRIDES' 157) #(232 'PARAMARRAY' 158) #(232 'PARTIAL' 159) #(232 'PRESERVE' 160) #(232 'PRIVATE' 161) #(232 'PROPERTY' 162) #(232 'PROTECTED' 163) #(232 'PUBLIC' 164) #(232 'RAISEEVENT' 165) #(232 'READONLY' 167) #(232 'REDIM' 166) #(232 'REMOVEHANDLER' 168) #(232 'RESUME' 169) #(232 'RETURN' 170) #(232 'SBYTE' 171) #(232 'SELECT' 172) #(232 'SET' 173) #(232 'SHADOWS' 174) #(232 'SHARED' 175) #(232 'SHORT' 176) #(232 'SINGLE' 177) #(232 'SKIP' 178) #(232 'STATIC' 179) #(232 'STEP' 180) #(232 'STOP' 181) #(232 'STRICT' 182) #(232 'STRING' 183) #(232 'STRUCTURE' 184) #(232 'SUB' 185) #(232 'SYNCLOCK' 186) #(232 'TAKE' 187) #(232 'TEXT' 188) #(232 'THEN' 189) #(232 'THROW' 190) #(232 'TO' 191) #(232 'TRUE' 222) #(232 'TRY' 192) #(232 'TRYCAST' 193) #(232 'TYPEOF' 194) #(232 'UINTEGER' 195) #(232 'ULONG' 196) #(232 'UNICODE' 198) #(232 'UNTIL' 199) #(232 'USHORT' 197) #(232 'USING' 200) #(232 'WHEN' 201) #(232 'WHERE' 202) #(232 'WHILE' 203) #(232 'WIDENING' 204) #(232 'WITH' 205) #(232 'WITHEVENTS' 206) #(232 'WRITEONLY' 207) #(232 'XOR' 208) #(232 'YIELD' 209) #(233 'ADDHANDLER' 30) #(233 'ADDRESSOF' 31) #(233 'AGGREGATE' 32) #(233 'ALIAS' 33) #(233 'AND' 34) #(233 'ANDALSO' 35) #(233 'ANSI' 36) #(233 'AS' 37) #(233 'ASCENDING' 38) #(233 'ASSEMBLY' 39) #(233 'ASYNC' 40) #(233 'AUTO' 41) #(233 'AWAIT' 42) #(233 'BINARY' 43) #(233 'BOOLEAN' 44) #(233 'BY' 45) #(233 'BYREF' 46) #(233 'BYTE' 48) #(233 'BYVAL' 47) #(233 'CALL' 66) #(233 'CASE' 67) #(233 'CATCH' 68) #(233 'CBOOL' 49) #(233 'CBYTE' 50) #(233 'CCHAR' 51) #(233 'CDATE' 52) #(233 'CDBL' 53) #(233 'CDEC' 54) #(233 'CHAR' 69) #(233 'CINT' 55) #(233 'CLASS' 70) #(233 'CLNG' 56) #(233 'COBJ' 57) #(233 'COMPARE' 71) #(233 'CONST' 72) #(233 'CONTINUE' 73) #(233 'CSBYTE' 58) #(233 'CSHORT' 59) #(233 'CSNG' 60) #(233 'CSTR' 61) #(233 'CTYPE' 62) #(233 'CUINT' 63) #(233 'CULNG' 64) #(233 'CUSHORT' 65) #(233 'CUSTOM' 74) #(233 'DATE' 75) #(233 'DECIMAL' 76) #(233 'DECLARE' 77) #(233 'DEFAULT' 78) #(233 'DELEGATE' 79) #(233 'DESCENDING' 80) #(233 'DIM' 81) #(233 'DIRECTCAST' 82) #(233 'DISTINCT' 83) #(233 'DO' 84) #(233 'DOUBLE' 85) #(233 'EACH' 86) #(233 'ELSE' 87) #(233 'END' 88) #(233 'ENUM' 89) #(233 'EQUALS' 90) #(233 'ERASE' 91) #(233 'ERROR' 92) #(233 'EVENT' 93) #(233 'EXIT' 94) #(233 'EXPLICIT' 95) #(233 'FALSE' 222) #(233 'FINALLY' 96) #(233 'FOR' 97) #(233 'FRIEND' 98) #(233 'FROM' 99) #(233 'FUNCTION' 100) #(233 'GET' 101) #(233 'GETTYPE' 102) #(233 'GETXMLNAMESPACE' 103) #(233 'GLOBAL' 104) #(233 'GOTO' 105) #(233 'GROUP' 106) #(233 'HANDLES' 107) #(233 'IF' 108) #(233 'IMPLEMENTS' 109) #(233 'IMPORTS' 110) #(233 'IN' 111) #(233 'INFER' 112) #(233 'INHERITS' 113) #(233 'INTEGER' 114) #(233 'INTERFACE' 115) #(233 'INTO' 116) #(233 'IS' 117) #(233 'ISFALSE' 118) #(233 'ISNOT' 119) #(233 'ISTRUE' 120) #(233 'ITERATOR' 121) #(233 'JOIN' 122) #(233 'KEY' 123) #(233 'LET' 124) #(233 'LIB' 125) #(233 'LIKE' 126) #(233 'LONG' 127) #(233 'LOOP' 128) #(233 'ME' 129) #(233 'MID' 130) #(233 'MOD' 131) #(233 'MODULE' 132) #(233 'MUSTINHERIT' 133) #(233 'MUSTOVERRIDE' 134) #(233 'MYBASE' 135) #(233 'MYCLASS' 136) #(233 'NAMESPACE' 137) #(233 'NARROWING' 138) #(233 'NEW' 139) #(233 'NEXT' 140) #(233 'NOT' 141) #(233 'NOTHING' 231) #(233 'NOTINHERITABLE' 142) #(233 'NOTOVERRIDABLE' 143) #(233 'OBJECT' 144) #(233 'OF' 145) #(233 'OFF' 146) #(233 'ON' 147) #(233 'OPERATOR' 148) #(233 'OPTION' 149) #(233 'OPTIONAL' 150) #(233 'OR' 151) #(233 'ORDER' 153) #(233 'ORELSE' 152) #(233 'OUT' 154) #(233 'OVERLOADS' 155) #(233 'OVERRIDABLE' 156) #(233 'OVERRIDES' 157) #(233 'PARAMARRAY' 158) #(233 'PARTIAL' 159) #(233 'PRESERVE' 160) #(233 'PRIVATE' 161) #(233 'PROPERTY' 162) #(233 'PROTECTED' 163) #(233 'PUBLIC' 164) #(233 'RAISEEVENT' 165) #(233 'READONLY' 167) #(233 'REDIM' 166) #(233 'REMOVEHANDLER' 168) #(233 'RESUME' 169) #(233 'RETURN' 170) #(233 'SBYTE' 171) #(233 'SELECT' 172) #(233 'SET' 173) #(233 'SHADOWS' 174) #(233 'SHARED' 175) #(233 'SHORT' 176) #(233 'SINGLE' 177) #(233 'SKIP' 178) #(233 'STATIC' 179) #(233 'STEP' 180) #(233 'STOP' 181) #(233 'STRICT' 182) #(233 'STRING' 183) #(233 'STRUCTURE' 184) #(233 'SUB' 185) #(233 'SYNCLOCK' 186) #(233 'TAKE' 187) #(233 'TEXT' 188) #(233 'THEN' 189) #(233 'THROW' 190) #(233 'TO' 191) #(233 'TRUE' 222) #(233 'TRY' 192) #(233 'TRYCAST' 193) #(233 'TYPEOF' 194) #(233 'UINTEGER' 195) #(233 'ULONG' 196) #(233 'UNICODE' 198) #(233 'UNTIL' 199) #(233 'USHORT' 197) #(233 'USING' 200) #(233 'WHEN' 201) #(233 'WHERE' 202) #(233 'WHILE' 203) #(233 'WIDENING' 204) #(233 'WITH' 205) #(233 'WITHEVENTS' 206) #(233 'WRITEONLY' 207) #(233 'XOR' 208) #(233 'YIELD' 209))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
VBNetScanner >> IdentifierId [
	^ 233
]

{ #category : #generated }
VBNetScanner >> IdentifierOrKeywordId [
	^ 232
]

{ #category : #private }
VBNetScanner >> LineContinuation [
	lineContinuations add: start + 1.
	^ self whitespace
]

{ #category : #generated }
VBNetScanner >> LineTerminatorId [
	^ 217
]

{ #category : #generated }
VBNetScanner >> emptySymbolTokenId [
	^ 687
]

{ #category : #generated }
VBNetScanner >> errorTokenId [
	^ 688
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
		ifTrue: [ self recordMatch: #(226).
			self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(228) ].
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
	[ self recordMatch: #(234).
	self step.
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(234).
			self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(234) ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ currentCharacter
				between: (Character value: 8232)
				and: (Character value: 8233) ])
		ifTrue: [ ^ self recordAndReportMatch: #(234) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(223) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan13 [
	[ self recordMatch: #(225).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan14 ].
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(225) ].
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
	[ self recordMatch: #(225).
	self step.
	currentCharacter isDigit ] whileTrue.
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(225) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan16 [
	[ self recordMatch: #(232 233).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(232 233) ].
	currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan17 [
	self recordMatch: #(232 233).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(232 233) ].
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
	self recordMatch: #(232 233).
	self step.
	('Ss' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(232 233).
			self step.
			('Ee' includes: currentCharacter)
				ifTrue: [ self recordMatch: #(232 233).
					self step.
					(currentCharacter == Character tab
						or: [ currentCharacter == Character space ])
						ifTrue: [ [ self step.
							currentCharacter == Character tab
								or: [ currentCharacter == Character space ] ] whileTrue.
							('Ii' includes: currentCharacter)
								ifTrue: [ self step.
									('Ff' includes: currentCharacter)
										ifTrue: [ ^ self recordAndReportMatch: #(230) ] ].
							^ self reportLastMatch ].
					('Ii' includes: currentCharacter)
						ifTrue: [ self recordMatch: #(232 233).
							self step.
							('Ff' includes: currentCharacter)
								ifTrue: [ self recordMatch: #(230 232 233).
									self step ] ] ] ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(232 233) ].
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
	self recordMatch: #(232 233).
	(self scanForString: 'EM')
		ifTrue:
			[ ^ self scan19X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(232 233) ].
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
	[ self recordMatch: #(220 232 233).
	self step.
	(currentCharacter
		between: (Character value: 768)
		and: (Character value: 879))
		ifTrue: [ ^ self scan16 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ currentCharacter == $@ ] ])
		ifTrue: [ self recordMatch: #(220 232 233).
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
VBNetScanner >> scan2 [
	[ self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ self recordMatch: #(226).
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
		ifTrue: [ ^ self recordAndReportMatch: #(232 233) ].
	currentCharacter isAlphaNumeric
		or: [ currentCharacter == $_
				or: [ currentCharacter
						between: (Character value: 768)
						and: (Character value: 879) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scan21 [
	self recordMatch: #(218).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(218) ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(229) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(229) ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space ])
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self recordAndReportMatch: #(229) ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(229) ].
			currentCharacter == $:
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self step.
							currentCharacter == $#
								ifTrue: [ ^ self recordAndReportMatch: #(229) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(229) ].
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
			[ ^ self scanForTokenX17 ].
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
				ifTrue: [ [ self recordMatch: #(223).
					self step.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan12 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
					((currentCharacter between: $% and: $&)
						or:
							[ 'ILSils' includes: currentCharacter ])
						ifTrue: [ ^ self recordAndReportMatch: #(223) ] ].
			^ self reportLastMatch ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(223).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue.
					('Uu' includes: currentCharacter)
						ifTrue: [ ^ self scan12 ].
					((currentCharacter between: $% and: $&)
						or:
							[ 'ILSils' includes: currentCharacter ])
						ifTrue: [ ^ self recordAndReportMatch: #(223) ] ] ].
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
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX19 [
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
		ifTrue: [ ^ self recordAndReportMatch: #(217) ].
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue:
			[ ^ self scanForTokenX5 ].
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
VBNetScanner >> scanForTokenX2 [
	[ self recordMatch: #(223 224).
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
		ifTrue: [ ^ self recordAndReportMatch: #(223) ].
	('!#@DFRdfr' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(225) ].
	^ self reportLastMatch
]

{ #category : #generated }
VBNetScanner >> scanForTokenX20 [
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX6 ].
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
		ifTrue: [ ^ self scan16 ].
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
	self recordMatch: #(227).
	self step.
	(currentCharacter == $"
		or: [ currentCharacter
				between: (Character value: 8220)
				and: (Character value: 8221) ])
		ifTrue: [ self recordMatch: #(226).
			self step.
			(currentCharacter == $"
				or: [ currentCharacter
						between: (Character value: 8220)
						and: (Character value: 8221) ])
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	^ self scan1
]

{ #category : #generated }
VBNetScanner >> scanForTokenX6 [
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #LineContinuation #whitespace #comment nil nil nil nil nil nil nil nil nil nil nil nil nil #preprocessorDirective)
]

{ #category : #generated }
VBNetScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
