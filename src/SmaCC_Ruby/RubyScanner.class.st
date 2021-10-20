Class {
	#name : 'RubyScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated-initialization' }
RubyScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(70 'BEGIN' #(2 #(#default))) #(70 'END' #(69 #(#default))) #(64 '__ENCODING__' #(41 #(#default))) #(64 '__FILE__' #(39 #(#default))) #(64 '__LINE__' #(40 #(#default))) #(64 'alias' #(3 #(#default))) #(64 'and' #(6 #(#default))) #(64 'begin' #(17 #(#default))) #(64 'break' #(12 #(#default))) #(64 'case' #(22 #(#default))) #(64 'class' #(24 #(#default))) #(64 'def' #(26 #(#default))) #(64 'defined' #(14 #(#default))) #(64 'do' #(27 #(#default))) #(64 'else' #(31 #(#default))) #(64 'elsif' #(32 #(#default))) #(64 'end' #(5 #(#default))) #(64 'ensure' #(29 #(#default))) #(64 'false' #(38 #(#default))) #(64 'for' #(23 #(#default))) #(64 'if' #(18 #(#default))) #(64 'in' #(9 #(#default))) #(64 'module' #(25 #(#default))) #(64 'next' #(13 #(#default))) #(64 'nil' #(35 #(#default))) #(64 'not' #(8 #(#default))) #(64 'or' #(7 #(#default))) #(64 'redo' #(15 #(#default))) #(64 'rescue' #(28 #(#default))) #(64 'retry' #(16 #(#default))) #(64 'return' #(33 #(#default))) #(64 'self' #(36 #(#default))) #(64 'super' #(10 #(#default))) #(64 'then' #(34 #(#default))) #(64 'true' #(37 #(#default))) #(64 'undef' #(4 #(#default))) #(64 'unless' #(19 #(#default))) #(64 'until' #(21 #(#default))) #(64 'when' #(30 #(#default))) #(64 'while' #(20 #(#default))) #(64 'yield' #(11 #(#default))))
		do: [ :each | (keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
RubyScanner >> AMPERId [
	^ 337
]

{ #category : 'generated' }
RubyScanner >> AREFId [
	^ 338
]

{ #category : 'generated' }
RubyScanner >> BDOT2Id [
	^ 339
]

{ #category : 'generated' }
RubyScanner >> BDOT3Id [
	^ 340
]

{ #category : 'generated' }
RubyScanner >> CHARId [
	^ 341
]

{ #category : 'generated' }
RubyScanner >> COLON2Id [
	^ 42
]

{ #category : 'generated' }
RubyScanner >> COLON3Id [
	^ 342
]

{ #category : 'generated' }
RubyScanner >> DOT2Id [
	^ 48
]

{ #category : 'generated' }
RubyScanner >> DOT3Id [
	^ 47
]

{ #category : 'generated' }
RubyScanner >> DSTARId [
	^ 343
]

{ #category : 'generated' }
RubyScanner >> FIDId [
	^ 344
]

{ #category : 'generated' }
RubyScanner >> IDENTIFIERId [
	^ 64
]

{ #category : 'generated' }
RubyScanner >> LABELId [
	^ 118
]

{ #category : 'generated' }
RubyScanner >> LBRACE_ARGId [
	^ 345
]

{ #category : 'generated' }
RubyScanner >> LBRACKId [
	^ 75
]

{ #category : 'generated' }
RubyScanner >> LPAREN_ARGId [
	^ 111
]

{ #category : 'generated' }
RubyScanner >> LSHFTId [
	^ 45
]

{ #category : 'generated' }
RubyScanner >> MINUSId [
	^ 1
]

{ #category : 'generated' }
RubyScanner >> OP_ASGNId [
	^ 87
]

{ #category : 'generated' }
RubyScanner >> OROPId [
	^ 51
]

{ #category : 'generated' }
RubyScanner >> POWId [
	^ 59
]

{ #category : 'generated' }
RubyScanner >> STARId [
	^ 346
]

{ #category : 'generated' }
RubyScanner >> UMINUSId [
	^ 60
]

{ #category : 'generated' }
RubyScanner >> UMINUS_NUMId [
	^ 112
]

{ #category : 'generated' }
RubyScanner >> UPLUSId [
	^ 347
]

{ #category : 'generated' }
RubyScanner >> ampId [
	^ 62
]

{ #category : 'generated' }
RubyScanner >> barId [
	^ 80
]

{ #category : 'private-scanning' }
RubyScanner >> beginComment [
	stream upToAll: '=end'.
	self recordMatch: matchActions.
	^ self comment
]

{ #category : 'generated' }
RubyScanner >> charId [
	^ 86
]

{ #category : 'private-scanning' }
RubyScanner >> continuation [
	^ self whitespace
]

{ #category : 'private-scanning' }
RubyScanner >> createPercentToken [
	self position: start + 1.
	outputStream position: 1.
	^ self recordAndReportMatch: {self percentId}
]

{ #category : 'generated' }
RubyScanner >> emptySymbolTokenId [
	^ 354
]

{ #category : 'private-scanning' }
RubyScanner >> endCharacterFor: aCharacter [
	| index |
	index := '<[{(' indexOf: aCharacter.
	^ index > 0
		ifTrue: [ '>]})' at: index ]
		ifFalse: [ aCharacter ]
]

{ #category : 'generated' }
RubyScanner >> errorTokenId [
	^ 355
]

{ #category : 'generated' }
RubyScanner >> fidId [
	^ 90
]

{ #category : 'generated' }
RubyScanner >> hereDocId [
	^ 348
]

{ #category : 'generated' }
RubyScanner >> interpolatedHereDocEndId [
	^ 349
]

{ #category : 'generated' }
RubyScanner >> interpolatedHereDocPartId [
	^ 350
]

{ #category : 'generated' }
RubyScanner >> interpolatedPercentStringEndId [
	^ 351
]

{ #category : 'generated' }
RubyScanner >> interpolatedPercentStringMiddleId [
	^ 352
]

{ #category : 'generated' }
RubyScanner >> interpolatedPercentStringStartId [
	^ 353
]

{ #category : 'generated' }
RubyScanner >> multId [
	^ 63
]

{ #category : 'generated' }
RubyScanner >> newlineId [
	^ 74
]

{ #category : 'generated' }
RubyScanner >> numericId [
	^ 113
]

{ #category : 'private-scanning' }
RubyScanner >> peekFor: aCharacter [
	^ stream peek == aCharacter
]

{ #category : 'generated' }
RubyScanner >> percentId [
	^ 84
]

{ #category : 'private-scanning' }
RubyScanner >> percentString [
	| source startChar type isRegex charBefore |
	start > 0
		ifTrue: [ charBefore := stream originalContents at: start.
			(charBefore isLetter
				or: [ charBefore isSeparator not
						and: [ ('([{*+!=?,' includes: charBefore) not ] ])
				ifTrue: [ ^ self createPercentToken ] ].
	source := outputStream contents.
	startChar := source last.
	type := source at: 2.
	isRegex := type asLowercase == $r.
	^ type isUppercase
		ifTrue: [ self
				scanPercentStringFor: startChar
				id: self interpolatedPercentStringStartId
				isRegex: isRegex ]
		ifFalse:
			[ self scanNonInterpolatedPercentStringFor: startChar isRegex: isRegex ]
]

{ #category : 'generated' }
RubyScanner >> plusId [
	^ 96
]

{ #category : 'generated' }
RubyScanner >> questionId [
	^ 97
]

{ #category : 'generated' }
RubyScanner >> regexId [
	^ 114
]

{ #category : 'generated' }
RubyScanner >> rightBraceId [
	^ 105
]

{ #category : 'generated' }
RubyScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(74) ].
	currentCharacter == $! ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X7 ].
	^ self scan1X26
]

{ #category : 'generated' }
RubyScanner >> scan10 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan11 [
	[ self step.
	currentCharacter isDigit ] whileTrue.
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan12 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan8 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
			currentCharacter isDigit ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan10 ].
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan13 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan8 ].
	currentCharacter == $_ ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan10 ].
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan14 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan15 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan16 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan16 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan17 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan17 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $7 ] whileTrue.
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan18 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan18 ].
			^ self reportLastMatch ].
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan19 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X1 [
	self recordMatch: #(84).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87 106) ].
	^ self scan1X1X1
]

{ #category : 'generated' }
RubyScanner >> scan1X10 [
	self recordMatch: #(62).
	self step.
	currentCharacter == $&
		ifTrue:
			[ self recordMatch: #(52).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
			^ self reportLastMatch ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X11 [
	self recordMatch: #(82).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	currentCharacter == $>
		ifTrue:
			[ self recordMatch: #(44).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X12 [
	[ self recordMatch: #(85).
	self step.
	currentCharacter == Character tab
		or:
			[ currentCharacter == Character pageUp or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X13 [
	self recordMatch: #(80).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	currentCharacter == $|
		ifTrue:
			[ self recordMatch: #(51).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X14 [
	self recordMatch: #(96 121).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(121) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X15 [
	self recordMatch: #(63).
	self step.
	currentCharacter == $*
		ifTrue:
			[ self recordMatch: #(59).
			self step ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X16 [
	self recordMatch: #(83).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(55) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X17 [
	self recordMatch: #(75).
	self step.
	currentCharacter == $]
		ifTrue:
			[ self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(46) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X18 [
	self recordMatch: #(99).
	self step.
	currentCharacter == $.
		ifTrue:
			[ self recordMatch: #(48).
			self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(47) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X19 [
	[ self recordMatch: #(70).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X1X1 [
	((currentCharacter between: $! and: $/)
		or:
			[ (currentCharacter between: $: and: $<)
				or:
					[ (currentCharacter between: $> and: $@)
						or: [ (currentCharacter between: $[ and: $`) or: [ currentCharacter between: ${ and: $~ ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	(currentCharacter == $I
		or:
			[ (currentCharacter between: $Q and: $S)
				or:
					[ (currentCharacter between: $W and: $X)
						or:
							[ currentCharacter == $i or: [ (currentCharacter between: $q and: $s) or: [ currentCharacter between: $w and: $x ] ] ] ] ])
		ifTrue:
			[ self step.
			((currentCharacter between: $! and: $/)
				or:
					[ (currentCharacter between: $: and: $@)
						or: [ (currentCharacter between: $[ and: $`) or: [ currentCharacter between: ${ and: $~ ] ] ])
				ifTrue: [ ^ self recordAndReportMatch: #(106) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X2 [
	self step.
	currentCharacter == $-
		ifTrue:
			[ self step.
			currentCharacter isAlphaNumeric ifTrue: [ ^ self recordAndReportMatch: #(65) ].
			^ self reportLastMatch ].
	currentCharacter == $0
		ifTrue:
			[ [ self recordMatch: #(65).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(65 88) ].
	currentCharacter isDigit
		ifTrue:
			[ [ self recordMatch: #(65 89).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('&+`' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(88) ].
	((currentCharacter between: $! and: $")
		or:
			[ ('$''*,' includes: currentCharacter)
				or:
					[ (currentCharacter between: $. and: $/) or: [ (currentCharacter between: $: and: $@) or: [ currentCharacter == $~ ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(65) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(65).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X20 [
	self recordMatch: #(93).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X21 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(120) ].
	currentCharacter == Character cr
		ifTrue:
			[ self recordMatch: #(120).
			self step.
			currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(120) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X22 [
	self recordMatch: #(94).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X23 [
	self recordMatch: #(92).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X24 [
	currentCharacter == $_ ifTrue: [ ^ self scan43 ].
	currentCharacter == $` ifTrue: [ ^ self scan1X8 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(77 91) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(95) ].
	currentCharacter isDigit ifTrue: [ ^ self scan37 ].
	currentCharacter isUppercase ifTrue: [ ^ self scan1X19 ].
	(currentCharacter == Character tab
		or:
			[ currentCharacter == Character pageUp or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ])
		ifTrue: [ ^ self scan1X12 ].
	currentCharacter isLowercase ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X25 [
	currentCharacter == $0 ifTrue: [ ^ self scan5 ].
	currentCharacter == $: ifTrue: [ ^ self scan1X22 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(98) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $? ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $@ ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $[ ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $\ ifTrue: [ ^ self scan1X21 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	currentCharacter == $^ ifTrue: [ ^ self scan1X20 ].
	^ self scan1X24
]

{ #category : 'generated' }
RubyScanner >> scan1X26 [
	currentCharacter == $$ ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(72 111) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(73) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X15 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(78) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X5 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X18 ].
	currentCharacter == $/ ifTrue: [ ^ self scan1X23 ].
	^ self scan1X25
]

{ #category : 'generated' }
RubyScanner >> scan1X3 [
	self recordMatch: #(97).
	self step.
	currentCharacter == $\
		ifTrue:
			[ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue:
					[ [ self recordMatch: #(86).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue.
					^ self reportLastMatch ].
			('CM' includes: currentCharacter)
				ifTrue:
					[ self recordMatch: #(86).
					self step.
					currentCharacter == $-
						ifTrue:
							[ self step.
							currentCharacter == $\
								ifTrue:
									[ self step.
									(currentCharacter between: $0 and: $7)
										ifTrue:
											[ [ self recordMatch: #(86).
											self step.
											currentCharacter between: $0 and: $7 ] whileTrue.
											^ self reportLastMatch ].
									('CM' includes: currentCharacter)
										ifTrue:
											[ self recordMatch: #(86).
											self step.
											currentCharacter == $-
												ifTrue:
													[ self step.
													currentCharacter == $\
														ifTrue:
															[ self step.
															(currentCharacter between: $0 and: $7)
																ifTrue:
																	[ [ self recordMatch: #(86).
																	self step.
																	currentCharacter between: $0 and: $7 ] whileTrue.
																	^ self reportLastMatch ].
															^ self recordAndReportMatch: #(86) ].
													(currentCharacter <= Character backspace
														or:
															[ (currentCharacter between: (Character value: 14) and: Character arrowDown)
																or: [ (currentCharacter between: $! and: $[) or: [ currentCharacter >= $] ] ] ])
														ifTrue: [ ^ self recordAndReportMatch: #(86) ] ].
											^ self reportLastMatch ].
									^ self recordAndReportMatch: #(86) ].
							(currentCharacter <= Character backspace
								or:
									[ (currentCharacter between: (Character value: 14) and: Character arrowDown)
										or: [ (currentCharacter between: $! and: $[) or: [ currentCharacter >= $] ] ] ])
								ifTrue: [ ^ self recordAndReportMatch: #(86) ] ].
					^ self reportLastMatch ].
			^ self recordAndReportMatch: #(86) ].
	(currentCharacter <= Character backspace
		or:
			[ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $[) or: [ currentCharacter >= $] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X4 [
	self recordMatch: #(79).
	self step.
	currentCharacter == $=
		ifTrue:
			[ self recordMatch: #(57).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(56) ].
			^ self reportLastMatch ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	currentCharacter == $b
		ifTrue:
			[ (self scanForString: 'egin') ifTrue: [ ^ self recordAndReportMatch: #(119) ].
			^ self reportLastMatch ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X5 [
	self recordMatch: #(1 60 112).
	self step.
	currentCharacter == $0 ifTrue: [ ^ self scan5 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(61) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter isDigit ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X6 [
	self recordMatch: #(81).
	self step.
	currentCharacter == $<
		ifTrue:
			[ self recordMatch: #(45).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(87) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue:
			[ self recordMatch: #(53).
			self step.
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(58) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X7 [
	[ self recordMatch: #(68).
	self step.
	currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan1X8 [
	self recordMatch: #(100).
	self step.
	currentCharacter == $# ifTrue: [ ^ self scan50 ].
	currentCharacter == $\ ifTrue: [ ^ self scan51 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	^ self scan49
]

{ #category : 'generated' }
RubyScanner >> scan1X9 [
	self step.
	currentCharacter == $@
		ifTrue:
			[ self step.
			(currentCharacter isLetter or: [ currentCharacter == $_ ])
				ifTrue:
					[ [ self recordMatch: #(67).
					self step.
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ [ self recordMatch: #(66).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan2 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	currentCharacter == $#
		ifTrue:
			[ [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(101) ].
			currentCharacter == $# ] whileTrue.
			currentCharacter == $\ ifTrue: [ ^ self scan3 ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(102) ].
			^ self scan2 ].
	currentCharacter == $\ ifTrue: [ ^ self scan3 ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan20 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan20 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan34 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan21 [
	self step.
	currentCharacter == $- ifTrue: [ self step ].
	currentCharacter == $0 ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan22 [
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $_ ifTrue: [ ^ self scan29 ].
	^ self scan22X4
]

{ #category : 'generated' }
RubyScanner >> scan22X1 [
	self step.
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan32 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan22X2 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan22X3 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan22X4 [
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan28 ].
	currentCharacter isDigit ifTrue: [ ^ self scan27 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan22X2 ].
	('Dd' includes: currentCharacter) ifTrue: [ ^ self scan22X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan25 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan22X1 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	('Xx' includes: currentCharacter)
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan33 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan23 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan24 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan24 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan25 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan25 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan26 [
	[ self step.
	currentCharacter isDigit ] whileTrue.
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan27 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan28 ].
			currentCharacter isDigit ifTrue: [ ^ self scan27 ].
			^ self reportLastMatch ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan28 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan25 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan28 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $_ ifTrue: [ ^ self scan29 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan25 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan29 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan28 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan3 [
	self step.
	^ self scan2
]

{ #category : 'generated' }
RubyScanner >> scan30 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan30 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan31 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan32 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan32 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $7 ] whileTrue.
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan33 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan33 ].
			^ self reportLastMatch ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan34 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan35 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan36 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan19 ].
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan37 ].
			currentCharacter isDigit ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan37 ].
	currentCharacter isDigit ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan34 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan37 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan19 ].
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_ ifTrue: [ ^ self scan38 ].
	currentCharacter isDigit ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan34 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan38 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan39 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan39 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan4 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			^ self scan4 ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan40 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan40 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan41 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan41 ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $7 ] whileTrue.
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan42 [
	[ self recordMatch: #(113).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan42 ].
			^ self reportLastMatch ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ]
		whileTrue.
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan43 [
	self recordMatch: #(64).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $_ ifTrue: [ ^ self scan45 ].
	('!=?' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(90) ].
	currentCharacter isAlphaNumeric ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan44 [
	[ self recordMatch: #(64).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	('!=?' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(90) ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan45 [
	self recordMatch: #(64).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $E ifTrue: [ ^ self scan46 ].
	('!=?' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(90) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan46 [
	self recordMatch: #(64).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $N ifTrue: [ ^ self scan47 ].
	('!=?' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(90) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan47 [
	self recordMatch: #(64).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $D ifTrue: [ ^ self scan48 ].
	('!=?' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(90) ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ]) ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan48 [
	self recordMatch: #(64).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
	currentCharacter == $_
		ifTrue:
			[ self recordMatch: #(64).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(118) ].
			currentCharacter == $_
				ifTrue:
					[ [ self recordMatch: #(64 68).
					self step.
					currentCharacter == $:
						ifTrue:
							[ self recordMatch: #(68 118).
							self step.
							true
								ifTrue:
									[ [ self recordMatch: #(68).
									self step.
									true ] whileTrue ].
							^ self reportLastMatch ].
					('!=?' includes: currentCharacter)
						ifTrue:
							[ self recordMatch: #(68 90).
							self step.
							true
								ifTrue:
									[ [ self recordMatch: #(68).
									self step.
									true ] whileTrue ].
							^ self reportLastMatch ].
					currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
					true
						ifTrue:
							[ [ self recordMatch: #(68).
							self step.
							true ] whileTrue ].
					^ self reportLastMatch ] ].
	('!=?' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(90) ].
	currentCharacter isAlphaNumeric ifTrue: [ ^ self scan44 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan49 [
	[ self step.
	currentCharacter == $# ifTrue: [ ^ self scan50 ].
	currentCharacter == $\ ifTrue: [ ^ self scan51 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan5 [
	self recordMatch: #(113).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan19 ].
	^ self scan5X5
]

{ #category : 'generated' }
RubyScanner >> scan50 [
	[ self step.
	currentCharacter == $# ] whileTrue.
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(108) ].
	^ self scan49
]

{ #category : 'generated' }
RubyScanner >> scan51 [
	self step.
	^ self scan49
]

{ #category : 'generated' }
RubyScanner >> scan52 [
	[ self step.
	currentCharacter == $#
		ifTrue:
			[ [ self step.
			currentCharacter == $# ] whileTrue.
			currentCharacter == $/
				ifTrue:
					[ [ self recordMatch: #(114).
					self step.
					('ei' includes: currentCharacter)
						or: [ (currentCharacter between: $m and: $o) or: [ 'sux' includes: currentCharacter ] ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(115) ].
			^ self scan52 ].
	currentCharacter == $/
		ifTrue:
			[ [ self recordMatch: #(114).
			self step.
			('ei' includes: currentCharacter) or: [ (currentCharacter between: $m and: $o) or: [ 'sux' includes: currentCharacter ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			^ self scan52 ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan53 [
	[ self step.
	currentCharacter == $#
		ifTrue:
			[ [ self step.
			currentCharacter == $# ] whileTrue.
			currentCharacter == $/
				ifTrue:
					[ [ self recordMatch: #(117).
					self step.
					('ei' includes: currentCharacter)
						or: [ (currentCharacter between: $m and: $o) or: [ 'sux' includes: currentCharacter ] ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(116) ].
			^ self scan53 ].
	currentCharacter == $/
		ifTrue:
			[ [ self recordMatch: #(117).
			self step.
			('ei' includes: currentCharacter) or: [ (currentCharacter between: $m and: $o) or: [ 'sux' includes: currentCharacter ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			^ self scan53 ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan54 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	currentCharacter == $#
		ifTrue:
			[ [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(104) ].
			currentCharacter == $# ] whileTrue.
			currentCharacter == $\ ifTrue: [ ^ self scan55 ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(103) ].
			^ self scan54 ].
	currentCharacter == $\ ifTrue: [ ^ self scan55 ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan55 [
	self step.
	^ self scan54
]

{ #category : 'generated' }
RubyScanner >> scan56 [
	[ self step.
	currentCharacter == $#
		ifTrue:
			[ [ self step.
			currentCharacter == $# ] whileTrue.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(110) ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(109) ].
			^ self scan56 ].
	currentCharacter == $\
		ifTrue:
			[ self step.
			^ self scan56 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(110) ].
	true ] whileTrue
]

{ #category : 'generated' }
RubyScanner >> scan5X1 [
	self step.
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ ^ self scan42 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan5X2 [
	self step.
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan41 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan5X3 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan5X4 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan40 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan5X5 [
	currentCharacter == $/ ifTrue: [ ^ self scan21 ].
	currentCharacter == $_ ifTrue: [ ^ self scan38 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan37 ].
	currentCharacter isDigit ifTrue: [ ^ self scan36 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan5X3 ].
	('Dd' includes: currentCharacter) ifTrue: [ ^ self scan5X4 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan34 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan5X2 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan5X1 ].
	('IRir' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan6 [
	self step.
	currentCharacter == $-
		ifTrue:
			[ self step.
			currentCharacter isDigit ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter == $0 ifTrue: [ ^ self scan6X1 ].
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan6X1 [
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan8 ].
	currentCharacter == $_ ifTrue: [ ^ self scan14 ].
	^ self scan6X1X4
]

{ #category : 'generated' }
RubyScanner >> scan6X1X1 [
	self step.
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan6X1X2 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan6X1X3 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan6X1X4 [
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scan6X1X2 ].
	('Dd' includes: currentCharacter) ifTrue: [ ^ self scan6X1X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan10 ].
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scan6X1X1 ].
	('Xx' includes: currentCharacter)
		ifTrue:
			[ self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ ^ self scan18 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan7 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan8 ].
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan8 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scan9 [
	[ self step.
	currentCharacter == $_
		ifTrue:
			[ [ self step.
			currentCharacter == $_ ] whileTrue.
			currentCharacter isDigit ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan10 ].
	('Ii' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #(113) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
RubyScanner >> scanForToken [
	scope == #interpolatedString
		ifTrue:
			[ self step.
			currentCharacter == $} ifTrue: [ ^ self scan54 ].
			^ self reportLastMatch ].
	scope == #interpolatedRegex
		ifTrue:
			[ self step.
			currentCharacter == $/ ifTrue: [ ^ self scan52 ].
			currentCharacter == $} ifTrue: [ ^ self scan53 ].
			^ self reportLastMatch ].
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #interpolatedXString
		ifTrue:
			[ self step.
			currentCharacter == $} ifTrue: [ ^ self scan56 ] ].
	^ self reportLastMatch
]

{ #category : 'private-scanning' }
RubyScanner >> scanNonInterpolatedPercentStringFor: startChar isRegex: isRegex [
	| different count endChar lastWasBackslash |
	lastWasBackslash := false.
	endChar := self endCharacterFor: startChar.
	count := 0.
	different := startChar ~~ endChar.
	[ stream atEnd
		ifTrue: [ ^ self createPercentToken ].
	self step.
	self recordMatch: matchActions.
	(different
		and: [ lastWasBackslash not and: [ currentCharacter == startChar ] ])
		ifTrue: [ count := count + 1 ].
	(lastWasBackslash not and: [ currentCharacter == endChar ])
		ifTrue: [ count := count - 1 ].
	count >= 0 ]
		whileTrue: [ lastWasBackslash := lastWasBackslash not
				and: [ currentCharacter = $\ ] ].
	isRegex
		ifTrue: [ self scanRegexCharacters ].
	^ self createTokenFor: outputStream contents
]

{ #category : 'private-scanning' }
RubyScanner >> scanPercentStringFor: startChar id: anInteger isRegex: aBoolean [
	| lastChar endChar count |
	endChar := self endCharacterFor: startChar.
	lastChar := nil.
	count := 1.
	[ (stream atEnd
		and: [ anInteger = self interpolatedPercentStringStartId ])
		ifTrue: [ ^ self createPercentToken ].
	self step.
	(currentCharacter == ${ and: [ lastChar == $# ])
		ifTrue: [ ^ self recordAndReportMatch: {anInteger} ].
	self recordMatch: matchActions.
	currentCharacter ~~ endChar
		or: [ count := count - 1.
			count > 0 ] ]
		whileTrue: [ lastChar := currentCharacter.
			currentCharacter == startChar
				ifTrue: [ count := count + 1 ] ].
	aBoolean
		ifTrue: [ self scanRegexCharacters ].
	^ self createTokenFor: outputStream contents
]

{ #category : 'private-scanning' }
RubyScanner >> scanPercentStringFor: startChar isRegex: aBoolean [
	self resetScanner.
	returnMatchBlock := [ :match | ^ match ].
	self step.
	self recordMatch: {self interpolatedPercentStringEndId}.
	^ self
		scanPercentStringFor: startChar
		id: self interpolatedPercentStringMiddleId
		isRegex: aBoolean
]

{ #category : 'private-scanning' }
RubyScanner >> scanRegexCharacters [
	[ stream atEnd not
		and: [ self step.
			'ioxmuesn' includes: currentCharacter ] ]
		whileTrue: [ self recordMatch: matchActions ].
	self resetOutputToLastMatch.
	stream position: matchEnd
]

{ #category : 'generated' }
RubyScanner >> slashId [
	^ 92
]

{ #category : 'generated' }
RubyScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #percentString nil nil nil nil nil nil nil nil nil nil nil nil #beginComment #continuation)
]

{ #category : 'generated' }
RubyScanner >> uplusId [
	^ 121
]
