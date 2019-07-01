Class {
	#name : #DelphiScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'ifDefCount',
		'definedItems',
		'undefinedItems',
		'ifDefs',
		'optComments',
		'optDepths',
		'parseOpt'
	],
	#classInstVars : [
		'definedItems',
		'undefinedItems'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #accessing }
DelphiScanner class >> definedItems [
	definedItems isNil
		ifTrue: [ self
				definedItems:
					#('MSWINDOWS' 'PC_MAPPED_EXCEPTIONS' 'PIC' 'VERSION3' 'CHAR_TYPES_INITIALIZED' 'CASE_MAP_INITIALIZED' 'USEGREEDYPASCAL' 'ADSDELPHI2006' 'CONDITIONALEXPRESSIONS' 'USEJCLDEBUG' 'WIN32' 'VER36') ].
	^ definedItems
]

{ #category : #accessing }
DelphiScanner class >> definedItems: aCollection [
	definedItems := Set withAll: (aCollection collect: [ :each | each asUppercase ])
]

{ #category : #'generated-initialization' }
DelphiScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(138 '&OPERATOR' 1) #(138 'ABSOLUTE' 16) #(138 'ABSTRACT' 17) #(138 'AND' 18) #(138 'ARRAY' 19) #(138 'AS' 20) #(138 'ASM' 21) #(138 'ASSEMBLER' 22) #(138 'AT' 133) #(138 'BEGIN' 23) #(138 'CASE' 24) #(138 'CDECL' 25) #(138 'CLASS' 26) #(138 'CONST' 27) #(138 'CONSTRUCTOR' 28) #(138 'CONTAINS' 29) #(138 'DEFAULT' 30) #(138 'DEPRECATED' 31) #(138 'DESTRUCTOR' 32) #(138 'DISPID' 33) #(138 'DISPINTERFACE' 34) #(138 'DIV' 35) #(138 'DO' 36) #(138 'DOWNTO' 37) #(138 'DYNAMIC' 38) #(138 'ELSE' 39) #(138 'END' 40) #(138 'EXCEPT' 41) #(138 'EXPORT' 42) #(138 'EXPORTS' 43) #(138 'EXTERNAL' 44) #(138 'FAR' 45) #(138 'FILE' 46) #(138 'FINAL' 47) #(138 'FINALIZATION' 48) #(138 'FINALLY' 49) #(138 'FOR' 50) #(138 'FORWARD' 51) #(138 'FUNCTION' 52) #(138 'GOTO' 53) #(138 'HELPER' 54) #(138 'IF' 55) #(138 'IMPLEMENTATION' 56) #(138 'IMPLEMENTS' 57) #(138 'IN' 58) #(138 'INDEX' 59) #(138 'INHERITED' 60) #(138 'INITIALIZATION' 61) #(138 'INLINE' 62) #(138 'INTERFACE' 63) #(138 'IS' 64) #(138 'LABEL' 65) #(138 'LIBRARY' 66) #(138 'LOCAL' 67) #(138 'MEM' 68) #(138 'MEMW' 69) #(138 'MESSAGE' 70) #(138 'MOD' 71) #(138 'NAME' 72) #(138 'NEAR' 73) #(138 'NODEFAULT' 74) #(138 'NOT' 75) #(138 'OBJECT' 76) #(138 'OF' 77) #(138 'ON' 78) #(138 'OPERATOR' 79) #(138 'OR' 80) #(138 'OUT' 81) #(138 'OVERLOAD' 82) #(138 'OVERRIDE' 83) #(138 'PACKAGE' 84) #(138 'PACKED' 85) #(138 'PASCAL' 86) #(138 'PLATFORM' 87) #(138 'PRIVATE' 88) #(138 'PROCEDURE' 89) #(138 'PROGRAM' 90) #(138 'PROPERTY' 91) #(138 'PROTECTED' 92) #(138 'PUBLIC' 93) #(138 'PUBLISHED' 94) #(138 'RAISE' 95) #(138 'READ' 96) #(138 'READONLY' 97) #(138 'RECORD' 98) #(138 'REGISTER' 99) #(138 'REINTRODUCE' 100) #(138 'REPEAT' 101) #(138 'REQUIRES' 102) #(138 'RESOURCESTRING' 103) #(138 'SAFECALL' 104) #(138 'SEALED' 105) #(138 'SET' 106) #(138 'SHL' 107) #(138 'SHR' 108) #(138 'STATIC' 109) #(138 'STDCALL' 110) #(138 'STORED' 111) #(138 'STRICT' 112) #(138 'THEN' 113) #(138 'THREADVAR' 114) #(138 'TO' 115) #(138 'TRY' 116) #(138 'TYPE' 117) #(138 'UNIT' 118) #(138 'UNSAFE' 119) #(138 'UNTIL' 120) #(138 'USES' 121) #(138 'VAR' 122) #(138 'VIRTUAL' 123) #(138 'WHILE' 124) #(138 'WITH' 125) #(138 'WRITE' 126) #(138 'WRITEONLY' 127) #(138 'XOR' 128) #(139 '&OPERATOR' 1) #(139 'ABSOLUTE' 16) #(139 'ABSTRACT' 17) #(139 'AND' 18) #(139 'ARRAY' 19) #(139 'AS' 20) #(139 'ASM' 21) #(139 'ASSEMBLER' 22) #(139 'AT' 133) #(139 'BEGIN' 23) #(139 'CASE' 24) #(139 'CDECL' 25) #(139 'CLASS' 26) #(139 'CONST' 27) #(139 'CONSTRUCTOR' 28) #(139 'CONTAINS' 29) #(139 'DEFAULT' 30) #(139 'DEPRECATED' 31) #(139 'DESTRUCTOR' 32) #(139 'DISPID' 33) #(139 'DISPINTERFACE' 34) #(139 'DIV' 35) #(139 'DO' 36) #(139 'DOWNTO' 37) #(139 'DYNAMIC' 38) #(139 'ELSE' 39) #(139 'END' 40) #(139 'EXCEPT' 41) #(139 'EXPORT' 42) #(139 'EXPORTS' 43) #(139 'EXTERNAL' 44) #(139 'FAR' 45) #(139 'FILE' 46) #(139 'FINAL' 47) #(139 'FINALIZATION' 48) #(139 'FINALLY' 49) #(139 'FOR' 50) #(139 'FORWARD' 51) #(139 'FUNCTION' 52) #(139 'GOTO' 53) #(139 'HELPER' 54) #(139 'IF' 55) #(139 'IMPLEMENTATION' 56) #(139 'IMPLEMENTS' 57) #(139 'IN' 58) #(139 'INDEX' 59) #(139 'INHERITED' 60) #(139 'INITIALIZATION' 61) #(139 'INLINE' 62) #(139 'INTERFACE' 63) #(139 'IS' 64) #(139 'LABEL' 65) #(139 'LIBRARY' 66) #(139 'LOCAL' 67) #(139 'MEM' 68) #(139 'MEMW' 69) #(139 'MESSAGE' 70) #(139 'MOD' 71) #(139 'NAME' 72) #(139 'NEAR' 73) #(139 'NODEFAULT' 74) #(139 'NOT' 75) #(139 'OBJECT' 76) #(139 'OF' 77) #(139 'ON' 78) #(139 'OPERATOR' 79) #(139 'OR' 80) #(139 'OUT' 81) #(139 'OVERLOAD' 82) #(139 'OVERRIDE' 83) #(139 'PACKAGE' 84) #(139 'PACKED' 85) #(139 'PASCAL' 86) #(139 'PLATFORM' 87) #(139 'PRIVATE' 88) #(139 'PROCEDURE' 89) #(139 'PROGRAM' 90) #(139 'PROPERTY' 91) #(139 'PROTECTED' 92) #(139 'PUBLIC' 93) #(139 'PUBLISHED' 94) #(139 'RAISE' 95) #(139 'READ' 96) #(139 'READONLY' 97) #(139 'RECORD' 98) #(139 'REGISTER' 99) #(139 'REINTRODUCE' 100) #(139 'REPEAT' 101) #(139 'REQUIRES' 102) #(139 'RESOURCESTRING' 103) #(139 'SAFECALL' 104) #(139 'SEALED' 105) #(139 'SET' 106) #(139 'SHL' 107) #(139 'SHR' 108) #(139 'STATIC' 109) #(139 'STDCALL' 110) #(139 'STORED' 111) #(139 'STRICT' 112) #(139 'THEN' 113) #(139 'THREADVAR' 114) #(139 'TO' 115) #(139 'TRY' 116) #(139 'TYPE' 117) #(139 'UNIT' 118) #(139 'UNSAFE' 119) #(139 'UNTIL' 120) #(139 'USES' 121) #(139 'VAR' 122) #(139 'VIRTUAL' 123) #(139 'WHILE' 124) #(139 'WITH' 125) #(139 'WRITE' 126) #(139 'WRITEONLY' 127) #(139 'XOR' 128))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #accessing }
DelphiScanner class >> undefinedItems [
	undefinedItems isNil
		ifTrue: [ self
				undefinedItems:
					#('LINUX' 'DECLARE_GPL' 'DEBUG' 'ELF' 'STATIC_UNWIND' 'UNIX' 'KYLIX' 'HOOK_DLL_EXCEPTIONS' 'COMPILER_7_UP' 'WPDF_SOURCE' 'USECOMPATIBLEDC' 'ADSDELPHI4_OR_NEWER' 'USEGREEDYASM' 'CLR' 'BCB' 'DELPHI3' 'DELPHI4' 'DELPHI5' 'DELPHI6' 'DELPHI7' 'DEMO' 'LISTSERVER' 'METAFILE' 'PRNDIB_CKBOOL' 'PRNDIB_CKOVERFLOW' 'VSNET' 'TMSDOTNET' 'VER80' 'DOTNET' 'GRAPHICONTROL' 'CLX' 'TMSCLX' 'UMB') ].
	^ undefinedItems
]

{ #category : #accessing }
DelphiScanner class >> undefinedItems: aCollection [
	undefinedItems := Set withAll: (aCollection collect: [ :each | each asUppercase ])
]

{ #category : #generated }
DelphiScanner >> atId [
	^ 133
]

{ #category : #private }
DelphiScanner >> comment [
	| comment |
	comment := outputStream contents.
	(optDepths includes: ifDefCount)
		ifTrue:
			[ ('{$ELSE*' match: comment)
				ifTrue:
					[ optComments add: (Array with: start + 1 with: matchEnd).
					^ super comment ].
			(('{$ENDIF*' match: comment) or: [ '{$IFEND*' match: comment ])
				ifTrue:
					[ optComments add: (Array with: start + 1 with: matchEnd).
					optDepths remove: ifDefCount.
					^ super comment ] ].
	ifDefCount > 0
		ifTrue:
			[ ((('{$ELSE*' match: comment) and: [ ifDefCount = 1 ])
				or: [ ('{$ENDIF*' match: comment) or: [ '{$IFEND*' match: comment ] ])
				ifTrue:
					[ ifDefCount := ifDefCount - 1.
					ifDefCount = 0
						ifTrue: [ ifDefs last at: 2 put: start + comment size ] ]
				ifFalse: [ ('{$IF*' match: comment)
						ifTrue: [ ifDefCount := ifDefCount + 1 ] ] ]
		ifFalse:
			[ ('{$IF*' match: comment)
				ifTrue: [ ^ self processIfMacro: comment ].
			('{$ELSE*' match: comment)
				ifTrue: [ ^ self skipUntilEndDef ] ].
	^ super comment
]

{ #category : #generated }
DelphiScanner >> constantIdentifierId [
	^ 139
]

{ #category : #generated }
DelphiScanner >> controlCharacterId [
	^ 378
]

{ #category : #accessing }
DelphiScanner >> definedItems [
	^ definedItems
]

{ #category : #accessing }
DelphiScanner >> definedItems: aCollection [
	definedItems := aCollection
]

{ #category : #generated }
DelphiScanner >> emptySymbolTokenId [
	^ 379
]

{ #category : #generated }
DelphiScanner >> errorTokenId [
	^ 380
]

{ #category : #generated }
DelphiScanner >> gtEqId [
	^ 132
]

{ #category : #generated }
DelphiScanner >> gtId [
	^ 131
]

{ #category : #generated }
DelphiScanner >> identifierId [
	^ 138
]

{ #category : #'initialize-release' }
DelphiScanner >> ifDefs [
	^ ifDefs
]

{ #category : #'initialize-release' }
DelphiScanner >> initialize [
	super initialize.
	ifDefCount := 0.
	definedItems := self class definedItems.
	undefinedItems := self class undefinedItems.
	comments := OrderedCollection new.
	optComments := OrderedCollection new.
	optDepths := OrderedCollection new.
	ifDefs := OrderedCollection new
]

{ #category : #private }
DelphiScanner >> integerWithRange [
	stream position: stream position - 2.
	matchEnd := matchEnd - 2.
	matchActions := Array with: self numberId.
	^ self
		createTokenFor:
			(outputStream
				position: outputStream position - 2;
				contents)
]

{ #category : #generated }
DelphiScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
DelphiScanner >> minusId [
	^ 134
]

{ #category : #generated }
DelphiScanner >> numberId [
	^ 140
]

{ #category : #accessing }
DelphiScanner >> optComments [
	^ optComments
]

{ #category : #accessing }
DelphiScanner >> optComments: anObject [
	optComments := anObject
]

{ #category : #accessing }
DelphiScanner >> parseOpt [
	^ parseOpt ifNil: [ false ]
]

{ #category : #accessing }
DelphiScanner >> parseOpt: aBoolean [
	parseOpt := aBoolean
]

{ #category : #generated }
DelphiScanner >> plusId [
	^ 135
]

{ #category : #private }
DelphiScanner >> processIfMacro: comment [
	| command name index bad |
	index := (1 to: comment size)
		detect: [ :each | (comment at: each) isSeparator ]
		ifNone: [ comment size ].
	command := comment copyFrom: 3 to: index - 1.
	name := index = comment size
		ifTrue: [ '' ]
		ifFalse: [ (comment copyFrom: index + 1 to: comment size - 1) trim ].
	bad := #().
	('DEFINED(*)' match: name)
		ifTrue:
			[ bad := self undefinedItems.
			name := name copyFrom: 9 to: name size - 1 ].
	(command sameAs: 'IFDEF')
		ifTrue: [ bad := self undefinedItems ].
	(command sameAs: 'IFNDEF')
		ifTrue: [ bad := self definedItems ].
	(bad includes: name asUppercase)
		ifTrue: [ ^ self skipUntilEndDef ].
	(self parseOpt
		and: [ (command sameAs: 'IFOPT') and: [ name sameAs: 'C+' ] ])
		ifTrue:
			[ optDepths add: ifDefCount.
			optComments add: (Array with: start + 1 with: matchEnd) ].
	^ super comment
]

{ #category : #private }
DelphiScanner >> processIncludeFile: aString [
	^ self next
]

{ #category : #generated }
DelphiScanner >> scan1 [
	self step.
	currentCharacter == $$
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(142).
					self step.
					currentCharacter == $#
						ifTrue: [ ^ self scan1 ].
					currentCharacter == $'
						ifTrue: [ ^ self scan2 ].
					currentCharacter == $^
						ifTrue: [ ^ self scan6 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(142).
			self step.
			currentCharacter == $#
				ifTrue: [ ^ self scan1 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $^
				ifTrue: [ ^ self scan6 ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan10 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan11 [
	[ self recordMatch: #(140).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan12 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(140).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(140).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan13 [
	[ self recordMatch: #(140).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(140).
			self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(141) ].
			currentCharacter isDigit
				ifTrue: [ ^ self scan11 ].
			('Ee' includes: currentCharacter)
				ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan14 [
	self step.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ self recordMatch: #(146).
			self step.
			currentCharacter == $#
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $^
				ifTrue: [ ^ self scan14 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan15 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(145).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
DelphiScanner >> scan2 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan3 ].
	true ] whileTrue
]

{ #category : #generated }
DelphiScanner >> scan3 [
	self recordMatch: #(142).
	self step.
	currentCharacter == $#
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $^
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan4 [
	self step.
	currentCharacter == $$
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(142).
					self step.
					currentCharacter == $#
						ifTrue: [ ^ self scan4 ].
					currentCharacter == $'
						ifTrue: [ ^ self scan2 ].
					currentCharacter == $^
						ifTrue: [ ^ self scan5 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(142).
			self step.
			currentCharacter == $#
				ifTrue: [ ^ self scan4 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $^
				ifTrue: [ ^ self scan5 ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan5 [
	self step.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan6 [
	self step.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $^
				ifTrue: [ ^ self scan6 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan7 [
	self step.
	currentCharacter == $$
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $#
						ifTrue: [ ^ self scan7 ].
					currentCharacter == $'
						ifTrue: [ ^ self scan2 ].
					currentCharacter == $^
						ifTrue: [ ^ self scan6 ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $^
				ifTrue: [ ^ self scan6 ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan8 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(140).
			self step.
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan9 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $)
				ifTrue: [ ^ self recordAndReportMatch: #(143) ].
			currentCharacter == $* ] whileTrue.
			^ self scan9 ].
	true ] whileTrue
]

{ #category : #private }
DelphiScanner >> scanControlCharacter [
	stream peek isLetter
		ifFalse: [ ^ nil ].
	start := stream position - 1.
	matchActions := Array with: self controlCharacterId.
	^ self createTokenFor: (String with: $^ with: stream next)
]

{ #category : #generated }
DelphiScanner >> scanForToken [
	self step.
	currentCharacter == $#
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $$
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self scanForTokenX14
]

{ #category : #generated }
DelphiScanner >> scanForTokenX1 [
	self recordMatch: #(137).
	self step.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ self step.
			currentCharacter == $#
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $^
				ifTrue: [ ^ self scan14 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX10 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX11 [
	[ self recordMatch: #(138 139).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
DelphiScanner >> scanForTokenX12 [
	self recordMatch: #(2).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX13 [
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(130) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $`
		ifTrue: [ ^ self scan15 ].
	currentCharacter == ${
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self recordAndReportMatch: #(143) ].
			true ] whileTrue ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan13 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter =
						(Character value: 26) ] ])
		ifTrue:
			[ ^ self scanForTokenX3 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ self scanForTokenX11 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX14 [
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(136) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $@
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(129) ].
	^ self scanForTokenX13
]

{ #category : #generated }
DelphiScanner >> scanForTokenX2 [
	self recordMatch: #(8).
	self step.
	currentCharacter == $/
		ifTrue: [ [ self step.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self recordAndReportMatch: #(143) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX3 [
	[ self recordMatch: #(144).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter =
						(Character value: 26) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX4 [
	self recordMatch: #(134).
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX5 [
	self recordMatch: #(135).
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX6 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX7 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX8 [
	self step.
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(138 139).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX9 [
	self recordMatch: #(131).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> semicolonId [
	^ 136
]

{ #category : #private }
DelphiScanner >> skipToEndToken [
	| token previous |
	previous := SmaCCToken value: ''.
	[ [ stream atEnd
		or: [ (token := self next) value asUppercase ~= 'END' ] ]
		whileTrue: [ previous := token ].
	previous value = '@' ] whileTrue.
	(token value sameAs: 'END')
		ifTrue: [ stream position: token startPosition - 1 ]
]

{ #category : #private }
DelphiScanner >> skipUntilEndDef [
	| value entry |
	entry := Array with: start + 1 with: nil.
	ifDefs add: entry.
	comments add: (Array with: start + 1 with: matchEnd).
	ifDefCount := 1.
	[ value := self next.
	ifDefCount > 0 ] whileTrue.
	^ value
]

{ #category : #generated }
DelphiScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #integerWithRange nil #comment #whitespace #patternToken)
]

{ #category : #generated }
DelphiScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]

{ #category : #private }
DelphiScanner >> undefinedItems [
	^ undefinedItems
]

{ #category : #accessing }
DelphiScanner >> undefinedItems: aCollection [
	undefinedItems := aCollection
]

{ #category : #generated }
DelphiScanner >> upArrowId [
	^ 137
]
