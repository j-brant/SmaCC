Class {
	#name : 'RustScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated-initialization' }
RustScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(128 '''static' 12) #(114 'Self' 44) #(114 'abstract' 50) #(114 'as' 51) #(114 'async' 52) #(114 'auto' 53) #(114 'await' 54) #(114 'become' 55) #(114 'box' 56) #(114 'break' 57) #(114 'const' 58) #(114 'continue' 59) #(114 'crate' 60) #(114 'default' 61) #(114 'do' 62) #(114 'dyn' 63) #(114 'else' 64) #(114 'enum' 65) #(114 'extern' 66) #(114 'false' 67) #(114 'final' 68) #(114 'fn' 69) #(114 'for' 70) #(114 'if' 71) #(114 'impl' 72) #(114 'in' 73) #(114 'let' 74) #(114 'loop' 75) #(114 'macro' 76) #(114 'macro_rules' 77) #(114 'match' 78) #(114 'mod' 79) #(114 'move' 80) #(114 'mut' 81) #(114 'override' 82) #(114 'priv' 83) #(114 'pub' 84) #(114 'raw' 85) #(114 'ref' 86) #(114 'return' 87) #(114 'safe' 88) #(114 'self' 89) #(114 'static' 90) #(114 'struct' 91) #(114 'super' 92) #(114 'trait' 93) #(114 'true' 94) #(114 'try' 95) #(114 'type' 96) #(114 'typeof' 97) #(114 'union' 98) #(114 'unsafe' 99) #(114 'unsized' 100) #(114 'use' 101) #(114 'virtual' 102) #(114 'where' 103) #(114 'while' 104) #(114 'yield' 105))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'scanning' }
RustScanner >> BYTE_LITERAL [
	^ self BYTE_STRING_LITERAL
]

{ #category : 'scanning' }
RustScanner >> BYTE_STRING_LITERAL [
	(self validateLiteral: outputStream contents raw: false byte: true)
		ifFalse: [ ^ self scannerError ].
	^ self createToken
]

{ #category : 'scanning' }
RustScanner >> CHAR_LITERAL [
	^ self STRING_LITERAL
]

{ #category : 'scanning' }
RustScanner >> C_STRING_LITERAL [
	(self validateLiteral: outputStream contents raw: false byte: false) ifFalse: [ ^ self scannerError ].
	(outputStream contents includes: Character null) ifTrue: [ ^ self scannerError ].
	^ self createToken
]

{ #category : 'generated' }
RustScanner >> FLOAT_LITERALId [
	^ 127
]

{ #category : 'generated' }
RustScanner >> INTEGER_LITERALId [
	^ 125
]

{ #category : 'scanning' }
RustScanner >> STRING_LITERAL [
	(self validateLiteral: outputStream contents raw: false byte: false)
		ifFalse: [ ^ self scannerError ].
	^ self createToken
]

{ #category : 'generated' }
RustScanner >> ampId [
	^ 131
]

{ #category : 'scanning' }
RustScanner >> blockComment [
	"Consume nested comments and retain documentation comments with their original spelling."
	| depth previous character text |
	depth := 1.
	previous := nil.
	[ depth > 0 ] whileTrue: [
		stream atEnd ifTrue: [ ^ self scannerError ].
		character := stream next.
		outputStream nextPut: character.
		(previous = $/ and: [ character = $* ])
			ifTrue: [ depth := depth + 1. previous := nil ]
			ifFalse: [
				(previous = $* and: [ character = $/ ])
					ifTrue: [ depth := depth - 1. previous := nil ]
					ifFalse: [ previous := character ] ] ].
	matchEnd := stream position.
	text := outputStream contents.
	(text beginsWith: '/*!') ifTrue: [ ^ self recordAndReportMatch: {self innerDocCommentId} ].
	((text beginsWith: '/**') and: [ text ~= '/**/' and: [ (text beginsWith: '/***') not ] ])
		ifTrue: [ ^ self recordAndReportMatch: {self outerDocCommentId} ].
	^ super comment
]

{ #category : 'scanning' }
RustScanner >> comment [
	"Retain documentation comments as attribute tokens; ordinary comments stay trivia."
	| text |
	text := outputStream contents.
	(text beginsWith: '//!') ifTrue: [ ^ self recordAndReportMatch: {self innerDocCommentId} ].
	((text beginsWith: '///') and: [ (text beginsWith: '////') not ])
		ifTrue: [ ^ self recordAndReportMatch: {self outerDocCommentId} ].
	^ super comment
]

{ #category : 'generated' }
RustScanner >> emptySymbolTokenId [
	^ 414
]

{ #category : 'generated' }
RustScanner >> errorTokenId [
	^ 415
]

{ #category : 'generated' }
RustScanner >> gtId [
	^ 130
]

{ #category : 'generated' }
RustScanner >> innerDocCommentId [
	^ 135
]

{ #category : 'generated' }
RustScanner >> lbracketId [
	^ 113
]

{ #category : 'generated' }
RustScanner >> lparenId [
	^ 112
]

{ #category : 'generated' }
RustScanner >> ltId [
	^ 129
]

{ #category : 'accessing' }
RustScanner >> next [
	stream position = 0
		ifTrue:
			[ scope := #shebang.
			self resetScanner.
			returnMatchBlock := [ :match | 
			scope := #default.
			match ids first = 0
				ifTrue:
					[ stream position: 0.
					^ super next ]
				ifFalse: [ ^ match ] ].
			returnMatchBlock value: self scanForToken ].
	^ super next
]

{ #category : 'generated' }
RustScanner >> outerDocCommentId [
	^ 134
]

{ #category : 'scanning' }
RustScanner >> potentialFloat [
	"A decimal trailing dot belongs to member access when followed by an identifier, or to a range when followed by another dot."
	| string following |
	following := stream peek.
	(following notNil and: [ following = $. or: [ following = $_ or: [ following isLetter ] ] ])
		ifTrue: [
			stream position: stream position - 1.
			outputStream position: outputStream position - 1.
			matchActions := {self INTEGER_LITERALId} ]
		ifFalse: [ matchActions := {self FLOAT_LITERALId} ].
	string := outputStream contents.
	^ self createTokenFor: string
]

{ #category : 'scanning' }
RustScanner >> rawString [
	^ self simpleRawString
]

{ #category : 'generated' }
RustScanner >> rawStringId [
	^ 413
]

{ #category : 'scanning' }
RustScanner >> rawStringStart [
	"Only report a raw string after consuming its actual closing delimiter."
	| hashCount matchedHashes character |
	hashCount := outputStream contents occurrencesOf: $#.
	hashCount > 255 ifTrue: [ ^ self scannerError ].
	[ stream atEnd ] whileFalse: [
		character := stream next.
		outputStream nextPut: character.
		character = $" ifTrue: [
			matchedHashes := 0.
			[ matchedHashes < hashCount and: [ stream atEnd not and: [ stream peek = $# ] ] ]
				whileTrue: [
					outputStream nextPut: stream next.
					matchedHashes := matchedHashes + 1 ].
			matchedHashes = hashCount ifTrue: [
				^ self recordAndReportMatch: {self rawStringId} ] ] ].
	^ self scannerError
]

{ #category : 'generated' }
RustScanner >> scan1 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $# ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self scan1X19
]

{ #category : 'generated' }
RustScanner >> scan10 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan11 [
	self recordMatch: #(128).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan12 [
	[ self recordMatch: #(128).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan13 [
	self step.
	currentCharacter == $u ifTrue: [ ^ self scan14 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan10 ] ].
			^ self reportLastMatch ].
	('"''0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan14 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan15 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan16 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan10 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan17 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan10 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan18 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan10 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter == $} ifTrue: [ ^ self scan10 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $_ ] whileTrue.
					currentCharacter == $} ifTrue: [ ^ self scan10 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ [ self step.
							currentCharacter == $_ ] whileTrue.
							currentCharacter == $} ifTrue: [ ^ self scan10 ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan19 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(119) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(133) ].
	currentCharacter == $/
		ifTrue: [ self recordMatch: #(116).
			self step.
			currentCharacter == $!
				ifTrue: [ [ self recordMatch: #(116 135).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == $/
				ifTrue: [ self recordMatch: #(116 134).
					self step.
					currentCharacter == $/
						ifTrue: [ [ self recordMatch: #(116).
							self step.
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
							^ self reportLastMatch ].
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ])
						ifTrue: [ [ self recordMatch: #(116 134).
							self step.
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ [ self recordMatch: #(116).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X10 [
	[ self recordMatch: #(118).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X11 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X12 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X13 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X14 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X15 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X16 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X17 [
	currentCharacter == $` ifTrue: [ ^ self scan29 ].
	currentCharacter == $b ifTrue: [ ^ self scan30 ].
	currentCharacter == $c ifTrue: [ ^ self scan36 ].
	currentCharacter == $r ifTrue: [ ^ self scan44 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	(currentCharacter between: $1 and: $9) ifTrue: [ ^ self scan25 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan1X10 ].
	currentCharacter isLetter ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X18 [
	currentCharacter == $0 ifTrue: [ ^ self scan20 ].
	currentCharacter == $: ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(45 113) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $^ ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan28 ].
	^ self scan1X17
]

{ #category : 'generated' }
RustScanner >> scan1X19 [
	currentCharacter == $$ ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X15 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $' ifTrue: [ ^ self scan9 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(13 112) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $/ ifTrue: [ ^ self scan1X1 ].
	^ self scan1X18
]

{ #category : 'generated' }
RustScanner >> scan1X2 [
	self recordMatch: #(130).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(40) ].
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(41) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X3 [
	self recordMatch: #(129).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(32).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X4 [
	self recordMatch: #(23).
	self step.
	currentCharacter == $.
		ifTrue:
			[ self recordMatch: #(24).
			self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(26) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X5 [
	self recordMatch: #(107 111).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(108) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(109) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X6 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X7 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X8 [
	self recordMatch: #(8 131).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan1X9 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $c ifTrue: [ (self scanForString: 'rate') ifTrue: [ ^ self recordAndReportMatch: #(5) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan2 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	currentCharacter == $\ ifTrue: [ ^ self scan3 ].
	true ] whileTrue
]

{ #category : 'generated' }
RustScanner >> scan20 [
	self recordMatch: #(125).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan21 ].
	currentCharacter == $b
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(125).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
					(currentCharacter between: $0 and: $1) or: [ currentCharacter == $_ ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $f ifTrue: [ ^ self scan24 ].
	currentCharacter == $o
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(125).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
					(currentCharacter between: $0 and: $7) or: [ currentCharacter == $_ ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(125).
					self step.
					('iu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $f ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	((currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan25 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan21 [
	self recordMatch: #(126).
	self step.
	(currentCharacter between: $0 and: $9)
		ifTrue: [ [ self recordMatch: #(127).
			self step.
			currentCharacter == $f ifTrue: [ ^ self scan24 ].
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
			(currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan22 [
	self step.
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan23 ].
	('+-_' includes: currentCharacter)
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan23 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan23 [
	[ self recordMatch: #(127).
	self step.
	currentCharacter == $f ifTrue: [ ^ self scan24 ].
	(currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan24 [
	self step.
	currentCharacter == $3
		ifTrue: [ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(127) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue: [ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(127) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan25 [
	[ self recordMatch: #(125).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan21 ].
	currentCharacter == $f ifTrue: [ ^ self scan24 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	('iu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
	(currentCharacter between: $0 and: $9) or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan26 [
	self step.
	currentCharacter == $1
		ifTrue: [ self step.
			currentCharacter == $2
				ifTrue: [ self step.
					currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(125) ].
					^ self reportLastMatch ].
			currentCharacter == $6 ifTrue: [ ^ self recordAndReportMatch: #(125) ].
			^ self reportLastMatch ].
	currentCharacter == $3
		ifTrue: [ self step.
			currentCharacter == $2 ifTrue: [ ^ self recordAndReportMatch: #(125) ].
			^ self reportLastMatch ].
	currentCharacter == $6
		ifTrue: [ self step.
			currentCharacter == $4 ifTrue: [ ^ self recordAndReportMatch: #(125) ].
			^ self reportLastMatch ].
	currentCharacter == $8 ifTrue: [ ^ self recordAndReportMatch: #(125) ].
	currentCharacter == $s
		ifTrue: [ (self scanForString: 'ize') ifTrue: [ ^ self recordAndReportMatch: #(125) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan27 [
	[ self recordMatch: #(114).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan28 [
	self recordMatch: #(49).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan29 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(132).
			self step.
			currentCharacter == $` ifTrue: [ ^ self scan29 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
RustScanner >> scan3 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan4 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan2 ] ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf or: [ '"''0\nrt' includes: currentCharacter ])
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan30 [
	self recordMatch: #(114).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan31 ].
	currentCharacter == $' ifTrue: [ ^ self scan30X1 ].
	currentCharacter == $r ifTrue: [ ^ self scan33 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan30X1 [
	self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $x
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan32 ] ].
					^ self reportLastMatch ].
			('"''0\nrt' includes: currentCharacter) ifTrue: [ ^ self scan32 ].
			^ self reportLastMatch ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ currentCharacter >= $( ] ] ]) ifTrue: [ ^ self scan32 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan31 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(124) ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == Character cr
				ifTrue: [ self step.
					currentCharacter == Character lf ifTrue: [ ^ self scan31 ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan31 ] ].
					^ self reportLastMatch ].
			(currentCharacter == Character lf
				or: [ '"''0\nrt' includes: currentCharacter ]) ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter <= Character newPage
		or: [ currentCharacter >= (Character value: 14) ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan32 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(123) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan33 [
	self recordMatch: #(114).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan34 ].
	currentCharacter == $# ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan34 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(122) ].
	true ] whileTrue
]

{ #category : 'generated' }
RustScanner >> scan35 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(121) ].
	currentCharacter == $# ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan36 [
	self recordMatch: #(114).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan37 ].
	currentCharacter == $r ifTrue: [ ^ self scan33 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan37 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(136) ].
	currentCharacter == $\ ifTrue: [ ^ self scan38 ].
	currentCharacter >= Character home ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan38 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan37 ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan39 ].
	currentCharacter == $x
		ifTrue: [ self step.
			currentCharacter == $0
				ifTrue: [ self step.
					((currentCharacter between: $1 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan37 ].
					^ self reportLastMatch ].
			((currentCharacter between: $1 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan37 ] ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf or: [ '"''\nrt' includes: currentCharacter ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan39 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self scan40 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan4 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan40 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan41 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan41 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan37 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan42 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan42 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan37 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan43 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan43 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan37 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter == $} ifTrue: [ ^ self scan37 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $_ ] whileTrue.
					currentCharacter == $} ifTrue: [ ^ self scan37 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ [ self step.
							currentCharacter == $_ ] whileTrue.
							currentCharacter == $} ifTrue: [ ^ self scan37 ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan44 [
	self recordMatch: #(114).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan34 ].
	currentCharacter == $# ifTrue: [ ^ self scan45 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan45 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(121) ].
	currentCharacter == $# ifTrue: [ ^ self scan35 ].
	currentCharacter == $_ ifTrue: [ ^ self scan47 ].
	currentCharacter isLetter ifTrue: [ ^ self scan46 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan46 [
	[ self recordMatch: #(115).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan47 [
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan46 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan48 [
	self step.
	currentCharacter == $!
		ifTrue: [ self step.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr or: [ currentCharacter == $[ ] ]) not
				ifTrue: [ [ self recordMatch: #(117).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan5 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan6 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan2 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan7 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan2 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan8 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter == $} ifTrue: [ ^ self scan2 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter == $} ifTrue: [ ^ self scan2 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $_ ] whileTrue.
					currentCharacter == $} ifTrue: [ ^ self scan2 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ [ self step.
							currentCharacter == $_ ] whileTrue.
							currentCharacter == $} ifTrue: [ ^ self scan2 ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scan9 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan13 ].
	currentCharacter == $_ ifTrue: [ ^ self scan19 ].
	currentCharacter isLetter ifTrue: [ ^ self scan11 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ currentCharacter >= $( ] ] ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RustScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #shebang
		ifTrue: [ self step.
			currentCharacter = (Character value: 65279) ifTrue: [ self step ].
			currentCharacter == $# ifTrue: [ ^ self scan48 ] ].
	^ self reportLastMatch
]

{ #category : 'scanning' }
RustScanner >> simpleRawString [
	| text |
	text := outputStream contents.
	(self validateLiteral: text raw: true byte: (text first = $b)) ifFalse: [ ^ self scannerError ].
	(text first = $c and: [ text includes: Character null ]) ifTrue: [ ^ self scannerError ].
	^ self createToken
]

{ #category : 'generated' }
RustScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil #whitespace #CHAR_LITERAL #STRING_LITERAL #rawStringStart #simpleRawString #BYTE_LITERAL #BYTE_STRING_LITERAL nil #potentialFloat nil nil nil nil nil #patternToken #blockComment nil nil #C_STRING_LITERAL nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #rawString)
]

{ #category : 'scanning' }
RustScanner >> validateLiteral: text raw: isRaw byte: isByte [
	"Validate literal contents without decoding or changing their source spelling."
	| input character escaped scalar digit |
	isByte ifTrue: [
		(text anySatisfy: [ :each | each codePoint > 127 ]) ifTrue: [ ^ false ] ].
	isRaw ifTrue: [ ^ true ].
	input := text readStream.
	[ input atEnd ] whileFalse: [
		character := input next.
		(character = $\ and: [ input atEnd not ]) ifTrue: [
			escaped := input next.
			escaped = $u ifTrue: [
				(input atEnd or: [ input next ~= ${ ]) ifTrue: [ ^ false ].
				scalar := 0.
				[ input atEnd or: [ input peek = $} ] ] whileFalse: [
					digit := input next.
					digit ~= $_ ifTrue: [ scalar := scalar * 16 + digit digitValue ] ].
				input atEnd ifTrue: [ ^ false ].
				input next.
				(text first = $c and: [ scalar = 0 ]) ifTrue: [ ^ false ].
				(scalar > 16r10FFFF or: [ scalar between: 16rD800 and: 16rDFFF ]) ifTrue: [ ^ false ] ] ] ].
	^ true
]
