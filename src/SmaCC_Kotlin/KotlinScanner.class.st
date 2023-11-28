Class {
	#name : #KotlinScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Kotlin'
}

{ #category : #'generated-initialization' }
KotlinScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(136 'abstract' 116) #(136 'actual' 126) #(136 'annotation' 105) #(136 'as' 92) #(136 'break' 91) #(136 'by' 73) #(136 'catch' 83) #(136 'class' 65) #(136 'companion' 74) #(136 'const' 119) #(136 'constructor' 72) #(136 'continue' 90) #(136 'crossinline' 123) #(136 'data' 106) #(136 'delegate' 62) #(136 'do' 86) #(136 'dynamic' 98) #(136 'else' 80) #(136 'enum' 103) #(136 'expect' 125) #(136 'external' 113) #(136 'false' 133) #(136 'field' 55) #(136 'file' 54) #(136 'final' 117) #(136 'finally' 84) #(136 'for' 85) #(136 'fun' 67) #(136 'get' 57) #(136 'if' 79) #(136 'import' 64) #(136 'in' 94) #(136 'infix' 112) #(136 'init' 75) #(136 'inline' 111) #(136 'inner' 107) #(136 'interface' 66) #(136 'internal' 102) #(136 'is' 93) #(136 'lateinit' 120) #(136 'noinline' 122) #(136 'null' 134) #(136 'object' 68) #(136 'open' 118) #(136 'operator' 110) #(136 'out' 97) #(136 'override' 115) #(136 'package' 63) #(136 'param' 60) #(136 'private' 100) #(136 'property' 56) #(136 'protected' 101) #(136 'public' 99) #(136 'receiver' 59) #(136 'reified' 124) #(136 'return' 89) #(136 'sealed' 104) #(136 'set' 58) #(136 'setparam' 61) #(136 'super' 77) #(136 'suspend' 114) #(136 'tailrec' 109) #(136 'this' 76) #(136 'throw' 88) #(136 'true' 133) #(136 'try' 82) #(136 'typealias' 71) #(136 'val' 69) #(136 'value' 108) #(136 'var' 70) #(136 'vararg' 121) #(136 'when' 81) #(136 'where' 78) #(136 'while' 87))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
KotlinScanner >> AT_BOTH_WSId [
	^ 420
]

{ #category : #accessing }
KotlinScanner >> AT_NO_WS [
	| ch beforeSpace afterSpace |
	ch := stream peek.
	afterSpace := ch isNil or: [ ch isSeparator ].
	beforeSpace := stream position > 2
			and: [ (self peekAt: stream position - 2) isSeparator ].
	matchActions := {afterSpace
				ifTrue: [ beforeSpace ifTrue: [ self AT_BOTH_WSId ] ifFalse: [ self AT_POST_WSId ] ]
				ifFalse: [ beforeSpace ifTrue: [ self AT_PRE_WSId ] ifFalse: [ self AT_NO_WSId ] ]}.
	^ self createTokenFor: '@'
]

{ #category : #generated }
KotlinScanner >> AT_NO_WSId [
	^ 37
]

{ #category : #generated }
KotlinScanner >> AT_POST_WSId [
	^ 421
]

{ #category : #generated }
KotlinScanner >> AT_PRE_WSId [
	^ 422
]

{ #category : #private }
KotlinScanner >> DelimitedComment [
	| count current previous |
	count := 0.
	[ stream atEnd ]
		whileFalse: [ current := stream next.
			(previous = $/ and: [ current = $* ])
				ifTrue: [ count := count + 1.
					previous := nil ]
				ifFalse: [ (previous = $* and: [ current = $/ ])
						ifTrue: [ count = 0 ifTrue: [ ^ self comment ].
							count := count - 1.
							previous := nil ]
						ifFalse: [ previous := current ] ] ].
	^ self scannerError
]

{ #category : #generated }
KotlinScanner >> EXCL_NO_WSId [
	^ 24
]

{ #category : #accessing }
KotlinScanner >> NOT_IN [
	| ch |
	ch := stream peek.
	(ch isNil or: [ ch isSeparator ])
		ifTrue: [ matchActions := {self NOT_INId}.
			^ self createTokenFor: '!in' ].
	matchActions := {self EXCL_NO_WSId}.
	stream position: stream position - 2.
	^ self createTokenFor: '!'
]

{ #category : #generated }
KotlinScanner >> NOT_INId [
	^ 96
]

{ #category : #accessing }
KotlinScanner >> NOT_IS [
	| ch |
	ch := stream peek.
	(ch isNil or: [ ch isSeparator ])
		ifTrue: [ matchActions := {self NOT_ISId}.
			^ self createTokenFor: '!is' ].
	matchActions := {self EXCL_NO_WSId}.
	stream position: stream position - 2.
	^ self createTokenFor: '!'
]

{ #category : #generated }
KotlinScanner >> NOT_ISId [
	^ 95
]

{ #category : #accessing }
KotlinScanner >> QUEST_NO_WS [
	| ch |
	ch := stream peek.
	matchActions := (ch isNil or: [ ch isSeparator ])
			ifTrue: [ {self QUEST_WSId} ]
			ifFalse: [ {self QUEST_NO_WSId} ].
	^ self createTokenFor: '?'
]

{ #category : #generated }
KotlinScanner >> QUEST_NO_WSId [
	^ 38
]

{ #category : #generated }
KotlinScanner >> QUEST_WSId [
	^ 423
]

{ #category : #generated }
KotlinScanner >> emptySymbolTokenId [
	^ 424
]

{ #category : #generated }
KotlinScanner >> errorTokenId [
	^ 425
]

{ #category : #generated }
KotlinScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self scan1X4
]

{ #category : #generated }
KotlinScanner >> scan10 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan11 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan12 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(34).
			self step.
			currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(35) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan13 [
	[ self recordMatch: #(127).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan13 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan14 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan15 [
	[ self recordMatch: #(127).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan16 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan17 [
	self recordMatch: #(128).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	^ self scan17X2
]

{ #category : #generated }
KotlinScanner >> scan17X1 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan17X2 [
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan17X1 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan18 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan19 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan1X1 [
	[ self recordMatch: #(136).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
KotlinScanner >> scan1X2 [
	currentCharacter == $` ifTrue: [ ^ self scan29 ].
	currentCharacter == $a ifTrue: [ ^ self scan30 ].
	currentCharacter == $b ifTrue: [ ^ self scan31 ].
	currentCharacter == $c ifTrue: [ ^ self scan34 ].
	currentCharacter == $r ifTrue: [ ^ self scan40 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $| ifTrue: [ ^ self scan44 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	currentCharacter isSeparator ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ self scan1X1 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan1X3 [
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $/ ifTrue: [ ^ self scan16 ].
	currentCharacter == $0 ifTrue: [ ^ self scan17 ].
	currentCharacter == $: ifTrue: [ ^ self scan25 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scan26 ].
	currentCharacter == $= ifTrue: [ ^ self scan27 ].
	currentCharacter == $> ifTrue: [ ^ self scan28 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scan1X2
]

{ #category : #generated }
KotlinScanner >> scan1X4 [
	currentCharacter == Character cr ifTrue: [ ^ self scan2 ].
	currentCharacter == $! ifTrue: [ ^ self scan3 ].
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	currentCharacter == $% ifTrue: [ ^ self scan5 ].
	currentCharacter == $& ifTrue: [ ^ self scan6 ].
	currentCharacter == $' ifTrue: [ ^ self scan7 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scan9 ].
	currentCharacter == $+ ifTrue: [ ^ self scan10 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $- ifTrue: [ ^ self scan11 ].
	^ self scan1X3
]

{ #category : #generated }
KotlinScanner >> scan2 [
	self recordMatch: #(5).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan20 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan21 [
	[ self recordMatch: #(130).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan21 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan22 [
	self recordMatch: #(131).
	self step.
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(131) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan23 [
	[ self recordMatch: #(129).
	self step.
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan24 [
	[ self recordMatch: #(128).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan18 ].
	currentCharacter == $_
		ifTrue: [ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan24 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('Ff' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(127) ].
	('Ll' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(132) ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan25 [
	self recordMatch: #(25).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan26 [
	self recordMatch: #(39).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan27 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(47) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan28 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan29 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $_)
						or: [ currentCharacter >= $a ] ] ])
		ifTrue: [ [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(136) ].
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan3 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $!
		ifTrue: [ [ self recordMatch: #(23).
			self step.
			currentCharacter == $! ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(43).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(44) ].
			^ self reportLastMatch ].
	currentCharacter == $i
		ifTrue: [ self step.
			currentCharacter == $n ifTrue: [ ^ self recordAndReportMatch: #(96) ].
			currentCharacter == $s ifTrue: [ ^ self recordAndReportMatch: #(95) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan30 [
	(self scanForString: 's?' match: #(136))
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan31 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $r ifTrue: [ ^ self scan32 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan32 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $e ifTrue: [ ^ self scan33 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan33 [
	(self scanForString: 'ak@' match: #(136))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(51) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(51).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan34 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $o ifTrue: [ ^ self scan35 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan35 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $n ifTrue: [ ^ self scan36 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan36 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $t ifTrue: [ ^ self scan37 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan37 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $i ifTrue: [ ^ self scan38 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan38 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $n ifTrue: [ ^ self scan39 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan39 [
	(self scanForString: 'ue@' match: #(136))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(50) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(50).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan4 [
	self recordMatch: #(137).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(138) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan40 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $e ifTrue: [ ^ self scan41 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan41 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $t ifTrue: [ ^ self scan42 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan42 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $u ifTrue: [ ^ self scan43 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan43 [
	(self scanForString: 'rn@' match: #(136))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(49) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(49).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan44 [
	self step.
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan45 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(139) ].
	currentCharacter == $$ ifTrue: [ ^ self scan45X1 ].
	currentCharacter == $\ ifTrue: [ ^ self scan45X2 ].
	true
		ifTrue: [ [ self recordMatch: #(141).
			self step.
			currentCharacter <= $!
				or: [ currentCharacter == $#
						or: [ (currentCharacter between: $% and: $[) or: [ currentCharacter >= $] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan45X1 [
	self recordMatch: #(141).
	self step.
	currentCharacter == $`
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $_)
								or: [ currentCharacter >= $a ] ] ])
				ifTrue: [ [ self step.
					currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(140) ].
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(143) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(140).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan45X2 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self recordAndReportMatch: #(142) ] ] ] ].
			^ self reportLastMatch ].
	('"$''\bnrt' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(142) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan46 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan2 ].
	currentCharacter == $! ifTrue: [ ^ self scan3 ].
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	^ self scan46X5
]

{ #category : #generated }
KotlinScanner >> scan46X1 [
	self step.
	currentCharacter == $!
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan46X2 [
	[ self recordMatch: #(136).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue
]

{ #category : #generated }
KotlinScanner >> scan46X3 [
	currentCharacter == $b ifTrue: [ ^ self scan31 ].
	currentCharacter == $c ifTrue: [ ^ self scan34 ].
	currentCharacter == $r ifTrue: [ ^ self scan40 ].
	currentCharacter == $s ifTrue: [ ^ self scan47 ].
	currentCharacter == $t ifTrue: [ ^ self scan50 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $| ifTrue: [ ^ self scan44 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	currentCharacter isSeparator ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ self scan46X2 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan46X4 [
	currentCharacter == $0 ifTrue: [ ^ self scan17 ].
	currentCharacter == $: ifTrue: [ ^ self scan25 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scan26 ].
	currentCharacter == $= ifTrue: [ ^ self scan27 ].
	currentCharacter == $> ifTrue: [ ^ self scan28 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $` ifTrue: [ ^ self scan29 ].
	currentCharacter == $a ifTrue: [ ^ self scan30 ].
	^ self scan46X3
]

{ #category : #generated }
KotlinScanner >> scan46X5 [
	currentCharacter == $# ifTrue: [ ^ self scan46X1 ].
	currentCharacter == $% ifTrue: [ ^ self scan5 ].
	currentCharacter == $& ifTrue: [ ^ self scan6 ].
	currentCharacter == $' ifTrue: [ ^ self scan7 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scan9 ].
	currentCharacter == $+ ifTrue: [ ^ self scan10 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $- ifTrue: [ ^ self scan11 ].
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $/ ifTrue: [ ^ self scan16 ].
	^ self scan46X4
]

{ #category : #generated }
KotlinScanner >> scan47 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $u ifTrue: [ ^ self scan48 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan48 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $p ifTrue: [ ^ self scan49 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan49 [
	(self scanForString: 'er@' match: #(136))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(53) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(53).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan5 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan50 [
	self recordMatch: #(136).
	self step.
	currentCharacter == $h ifTrue: [ ^ self scan51 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan51 [
	(self scanForString: 'is@' match: #(136))
		ifTrue: [ self step.
			currentCharacter == $`
				ifTrue: [ self step.
					(currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ (currentCharacter between: (Character value: 14) and: $_)
										or: [ currentCharacter >= $a ] ] ])
						ifTrue: [ [ self step.
							currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(52) ].
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue: [ [ self recordMatch: #(52).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(136).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan6 [
	self recordMatch: #(48).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan7 [
	self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ ^ self scan8 ] ] ] ].
					^ self reportLastMatch ].
			('"$''\bnrt' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
			^ self reportLastMatch ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ currentCharacter >= $( ] ] ]) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan8 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(135) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scan9 [
	self recordMatch: #(14).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scanForToken [
	scope == #MultiLineString ifTrue: [ ^ self scanForTokenX1 ].
	scope == #LineString ifTrue: [ ^ self scan45 ].
	scope == #Inside ifTrue: [ ^ self scan1 ].
	scope == #default ifTrue: [ ^ self scan46 ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""' match: #(145))
				ifTrue: [ [ self recordMatch: #(144 145).
					self step.
					currentCharacter == $" ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $$ ifTrue: [ ^ self scanForTokenX1X1 ].
	true
		ifTrue: [ [ self recordMatch: #(147).
			self step.
			currentCharacter <= $!
				or: [ currentCharacter == $# or: [ currentCharacter >= $% ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> scanForTokenX1X1 [
	self recordMatch: #(147).
	self step.
	currentCharacter == $`
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter between: (Character value: 14) and: $_)
								or: [ currentCharacter >= $a ] ] ])
				ifTrue: [ [ self step.
					currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(146) ].
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(148) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(146).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
KotlinScanner >> tokenActions [
	^ #(nil #DelimitedComment #comment #whitespace nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #AT_NO_WS #QUEST_NO_WS nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #NOT_IS #NOT_IN)
]
