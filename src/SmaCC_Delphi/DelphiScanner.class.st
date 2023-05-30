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
		'undefinedItems',
		'optNames'
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
	#(#(144 '&OPERATOR' 1) #(144 'ABSOLUTE' 17) #(144 'ABSTRACT' 18) #(144 'AND' 19) #(144 'ARRAY' 20) #(144 'AS' 21) #(144 'ASM' 22) #(144 'ASSEMBLER' 23) #(144 'AT' 139) #(144 'BEGIN' 24) #(144 'CASE' 25) #(144 'CDECL' 26) #(144 'CLASS' 27) #(144 'CONST' 28) #(144 'CONSTRUCTOR' 29) #(144 'CONTAINS' 30) #(144 'DEFAULT' 31) #(144 'DELAYED' 32) #(144 'DEPRECATED' 33) #(144 'DESTRUCTOR' 34) #(144 'DISPID' 35) #(144 'DISPINTERFACE' 36) #(144 'DIV' 37) #(144 'DO' 38) #(144 'DOWNTO' 39) #(144 'DYNAMIC' 40) #(144 'ELSE' 41) #(144 'END' 42) #(144 'EXCEPT' 43) #(144 'EXPORT' 44) #(144 'EXPORTS' 45) #(144 'EXTERNAL' 46) #(144 'FAR' 47) #(144 'FILE' 48) #(144 'FINAL' 49) #(144 'FINALIZATION' 50) #(144 'FINALLY' 51) #(144 'FOR' 52) #(144 'FORWARD' 53) #(144 'FUNCTION' 54) #(144 'GOTO' 55) #(144 'HELPER' 56) #(144 'IF' 57) #(144 'IMPLEMENTATION' 58) #(144 'IMPLEMENTS' 59) #(144 'IN' 60) #(144 'INDEX' 61) #(144 'INHERITED' 62) #(144 'INITIALIZATION' 63) #(144 'INLINE' 64) #(144 'INTERFACE' 65) #(144 'IS' 66) #(144 'LABEL' 67) #(144 'LIBRARY' 68) #(144 'LOCAL' 69) #(144 'MEM' 70) #(144 'MEMW' 71) #(144 'MESSAGE' 72) #(144 'METHOD' 73) #(144 'MOD' 74) #(144 'NAME' 75) #(144 'NAMESPACE' 76) #(144 'NEAR' 77) #(144 'NODEFAULT' 78) #(144 'NOT' 79) #(144 'OBJECT' 80) #(144 'OF' 81) #(144 'ON' 82) #(144 'OPERATOR' 83) #(144 'OR' 84) #(144 'OUT' 85) #(144 'OVERLOAD' 86) #(144 'OVERRIDE' 87) #(144 'PACKAGE' 88) #(144 'PACKED' 89) #(144 'PARTIAL' 90) #(144 'PASCAL' 91) #(144 'PLATFORM' 92) #(144 'PRIVATE' 93) #(144 'PROCEDURE' 94) #(144 'PROGRAM' 95) #(144 'PROPERTY' 96) #(144 'PROTECTED' 97) #(144 'PUBLIC' 98) #(144 'PUBLISHED' 99) #(144 'RAISE' 100) #(144 'READ' 101) #(144 'READONLY' 102) #(144 'RECORD' 103) #(144 'REFERENCE' 104) #(144 'REGISTER' 105) #(144 'REINTRODUCE' 106) #(144 'REPEAT' 107) #(144 'REQUIRES' 108) #(144 'RESOURCESTRING' 109) #(144 'SAFECALL' 110) #(144 'SEALED' 111) #(144 'SET' 112) #(144 'SHL' 113) #(144 'SHR' 114) #(144 'STATIC' 115) #(144 'STDCALL' 116) #(144 'STORED' 117) #(144 'STRICT' 118) #(144 'THEN' 119) #(144 'THREADVAR' 120) #(144 'TO' 121) #(144 'TRY' 122) #(144 'TYPE' 123) #(144 'UNIT' 124) #(144 'UNSAFE' 125) #(144 'UNTIL' 126) #(144 'USES' 127) #(144 'VAR' 128) #(144 'VIRTUAL' 129) #(144 'WHILE' 130) #(144 'WITH' 131) #(144 'WRITE' 132) #(144 'WRITEONLY' 133) #(144 'XOR' 134) #(145 '&OPERATOR' 1) #(145 'ABSOLUTE' 17) #(145 'ABSTRACT' 18) #(145 'AND' 19) #(145 'ARRAY' 20) #(145 'AS' 21) #(145 'ASM' 22) #(145 'ASSEMBLER' 23) #(145 'AT' 139) #(145 'BEGIN' 24) #(145 'CASE' 25) #(145 'CDECL' 26) #(145 'CLASS' 27) #(145 'CONST' 28) #(145 'CONSTRUCTOR' 29) #(145 'CONTAINS' 30) #(145 'DEFAULT' 31) #(145 'DELAYED' 32) #(145 'DEPRECATED' 33) #(145 'DESTRUCTOR' 34) #(145 'DISPID' 35) #(145 'DISPINTERFACE' 36) #(145 'DIV' 37) #(145 'DO' 38) #(145 'DOWNTO' 39) #(145 'DYNAMIC' 40) #(145 'ELSE' 41) #(145 'END' 42) #(145 'EXCEPT' 43) #(145 'EXPORT' 44) #(145 'EXPORTS' 45) #(145 'EXTERNAL' 46) #(145 'FAR' 47) #(145 'FILE' 48) #(145 'FINAL' 49) #(145 'FINALIZATION' 50) #(145 'FINALLY' 51) #(145 'FOR' 52) #(145 'FORWARD' 53) #(145 'FUNCTION' 54) #(145 'GOTO' 55) #(145 'HELPER' 56) #(145 'IF' 57) #(145 'IMPLEMENTATION' 58) #(145 'IMPLEMENTS' 59) #(145 'IN' 60) #(145 'INDEX' 61) #(145 'INHERITED' 62) #(145 'INITIALIZATION' 63) #(145 'INLINE' 64) #(145 'INTERFACE' 65) #(145 'IS' 66) #(145 'LABEL' 67) #(145 'LIBRARY' 68) #(145 'LOCAL' 69) #(145 'MEM' 70) #(145 'MEMW' 71) #(145 'MESSAGE' 72) #(145 'METHOD' 73) #(145 'MOD' 74) #(145 'NAME' 75) #(145 'NAMESPACE' 76) #(145 'NEAR' 77) #(145 'NODEFAULT' 78) #(145 'NOT' 79) #(145 'OBJECT' 80) #(145 'OF' 81) #(145 'ON' 82) #(145 'OPERATOR' 83) #(145 'OR' 84) #(145 'OUT' 85) #(145 'OVERLOAD' 86) #(145 'OVERRIDE' 87) #(145 'PACKAGE' 88) #(145 'PACKED' 89) #(145 'PARTIAL' 90) #(145 'PASCAL' 91) #(145 'PLATFORM' 92) #(145 'PRIVATE' 93) #(145 'PROCEDURE' 94) #(145 'PROGRAM' 95) #(145 'PROPERTY' 96) #(145 'PROTECTED' 97) #(145 'PUBLIC' 98) #(145 'PUBLISHED' 99) #(145 'RAISE' 100) #(145 'READ' 101) #(145 'READONLY' 102) #(145 'RECORD' 103) #(145 'REFERENCE' 104) #(145 'REGISTER' 105) #(145 'REINTRODUCE' 106) #(145 'REPEAT' 107) #(145 'REQUIRES' 108) #(145 'RESOURCESTRING' 109) #(145 'SAFECALL' 110) #(145 'SEALED' 111) #(145 'SET' 112) #(145 'SHL' 113) #(145 'SHR' 114) #(145 'STATIC' 115) #(145 'STDCALL' 116) #(145 'STORED' 117) #(145 'STRICT' 118) #(145 'THEN' 119) #(145 'THREADVAR' 120) #(145 'TO' 121) #(145 'TRY' 122) #(145 'TYPE' 123) #(145 'UNIT' 124) #(145 'UNSAFE' 125) #(145 'UNTIL' 126) #(145 'USES' 127) #(145 'VAR' 128) #(145 'VIRTUAL' 129) #(145 'WHILE' 130) #(145 'WITH' 131) #(145 'WRITE' 132) #(145 'WRITEONLY' 133) #(145 'XOR' 134))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #accessing }
DelphiScanner class >> optNames [
	^ optNames ifNil: [ optNames := #('RELEASE' 'DEBUG') asSet ]
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
	^ 139
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
	^ 145
]

{ #category : #generated }
DelphiScanner >> controlCharacterId [
	^ 396
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
	^ 397
]

{ #category : #generated }
DelphiScanner >> errorTokenId [
	^ 398
]

{ #category : #generated }
DelphiScanner >> gtEqId [
	^ 138
]

{ #category : #generated }
DelphiScanner >> gtId [
	^ 137
]

{ #category : #generated }
DelphiScanner >> identifierId [
	^ 144
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
	^ 140
]

{ #category : #generated }
DelphiScanner >> numberId [
	^ 146
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
	^ 141
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
		ifTrue: [ bad := self undefinedItems.
			name := name copyFrom: 9 to: name size - 1 ].
	(self parseOpt
		and: [ self class optNames includes: name asUppercase ])
		ifTrue: [ optDepths add: ifDefCount.
			optComments add: (Array with: start + 1 with: matchEnd).
			^ super comment ].
	(command sameAs: 'IFDEF')
		ifTrue: [ bad := self undefinedItems ].
	(command sameAs: 'IFNDEF')
		ifTrue: [ bad := self definedItems ].
	(bad includes: name asUppercase)
		ifTrue: [ ^ self skipUntilEndDef ].
	(self parseOpt
		and: [ (command sameAs: 'IFOPT') and: [ name sameAs: 'C+' ] ])
		ifTrue: [ optDepths add: ifDefCount.
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
				ifTrue: [ [ self recordMatch: #(148).
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
		ifTrue: [ [ self recordMatch: #(148).
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
	[ self recordMatch: #(146).
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
		ifTrue: [ [ self recordMatch: #(146).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(146).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scan13 [
	[ self recordMatch: #(146).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(146).
			self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(147) ].
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
		ifTrue: [ self recordMatch: #(152).
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
		ifTrue: [ self recordMatch: #(151).
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
	self recordMatch: #(148).
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
				ifTrue: [ [ self recordMatch: #(148).
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
		ifTrue: [ [ self recordMatch: #(148).
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
		ifTrue: [ [ self recordMatch: #(146).
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
				ifTrue: [ ^ self recordAndReportMatch: #(149) ].
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
	self recordMatch: #(143).
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
	[ self recordMatch: #(144 145).
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
		ifTrue: [ ^ self recordAndReportMatch: #(136) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $`
		ifTrue: [ ^ self scan15 ].
	currentCharacter == ${
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self recordAndReportMatch: #(149) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(11 142) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $@
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(135) ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(149) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX3 [
	[ self recordMatch: #(150).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter =
						(Character value: 26) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX4 [
	self recordMatch: #(140).
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
	self recordMatch: #(141).
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
	self recordMatch: #(12).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
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
		ifTrue: [ [ self recordMatch: #(144 145).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> scanForTokenX9 [
	self recordMatch: #(137).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(138) ].
	^ self reportLastMatch
]

{ #category : #generated }
DelphiScanner >> semicolonId [
	^ 142
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #integerWithRange nil #comment #whitespace #patternToken)
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
	^ 143
]
