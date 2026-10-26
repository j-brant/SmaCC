Class {
	#name : 'JavaScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated-initialization' }
JavaScanner class >> initializeKeywordMap [

	keywordMap := Dictionary new.
	#( #( 121 'abstract' 42 ) #( 121 'assert' 43 ) #( 121 'boolean' 44 ) #( 121 'break' 45 ) #( 121 'byte' 46 ) #( 121 'case' 47 )
	   #( 121 'catch' 48 ) #( 121 'char' 49 ) #( 121 'class' 50 ) #( 121 'continue' 51 ) #( 121 'default' 52 ) #( 121 'do' 53 )
	   #( 121 'double' 54 ) #( 121 'else' 55 ) #( 121 'enum' 56 ) #( 121 'exports' 57 ) #( 121 'extends' 58 ) #( 121 'false' 117 )
	   #( 121 'final' 59 ) #( 121 'finally' 60 ) #( 121 'float' 61 ) #( 121 'for' 62 ) #( 121 'if' 63 ) #( 121 'implements'
	      64 ) #( 121 'import' 65 ) #( 121 'instanceof' 66 ) #( 121 'int' 67 ) #( 121 'interface' 68 ) #( 121 'long' 69 )
	   #( 121 'module' 70 ) #( 121 'native' 71 ) #( 121 'new' 72 ) #( 121 'null' 120 ) #( 121 'open' 74 ) #( 121 'opens' 75 )
	   #( 121 'package' 76 ) #( 121 'permits' 77 ) #( 121 'private' 78 ) #( 121 'protected' 79 ) #( 121 'provides' 80 )
	   #( 121 'public' 81 ) #( 121 'record' 82 ) #( 121 'requires' 83 ) #( 121 'return' 84 ) #( 121 'sealed' 85 )
	   #( 121 'short' 86 ) #( 121 'static' 87 ) #( 121 'strictfp' 88 ) #( 121 'super' 89 ) #( 121 'switch' 90 ) #( 121 'synchronized'
	      91 ) #( 121 'this' 92 ) #( 121 'throw' 93 ) #( 121 'throws' 94 ) #( 121 'to' 95 ) #( 121 'transient' 96 )
	   #( 121 'transitive' 97 ) #( 121 'true' 117 ) #( 121 'try' 98 ) #( 121 'uses' 99 ) #( 121 'void' 100 ) #( 121 'volatile'
	      101 ) #( 121 'when' 102 ) #( 121 'while' 103 ) #( 121 'with' 104 ) #( 121 'yield' 105 ) ) do: [ :each |
		(keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
JavaScanner >> GREATER_THANId [

	^ 112
]

{ #category : 'generated' }
JavaScanner >> SIGNED_RIGHT_SHIFTId [

	^ 113
]

{ #category : 'generated' }
JavaScanner >> UNSIGNED_RIGHT_SHIFTId [

	^ 114
]

{ #category : 'generated' }
JavaScanner >> emptySymbolTokenId [

	^ 342
]

{ #category : 'generated' }
JavaScanner >> errorTokenId [

	^ 343
]

{ #category : 'generated' }
JavaScanner >> scan1 [

	[
		self step.
		currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #( 119 ) ].
		currentCharacter == $\ ifTrue: [ ^ self scan2 ].
		true ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scan10 [

	[
		self step.
		currentCharacter == $* ifTrue: [
				[
					self step.
					currentCharacter == $* ] whileTrue.
				currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #( 123 ) ].
				^ self scan10 ].
		true ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scan11 [

	self recordMatch: #( 116 ).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan12 [

	[
		self recordMatch: #( 115 ).
		self step.
		currentCharacter == $. ifTrue: [ ^ self scan11 ].
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
				currentCharacter isDigit ifTrue: [ ^ self scan12 ].
				^ self reportLastMatch ].
		(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
		currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 115 ) ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan13 [

	[
		self step.
		currentCharacter == $. ifTrue: [ ^ self scan11 ].
		currentCharacter == $_ ifTrue: [ ^ self scan14 ].
		currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan14 [
	[ self step.
	currentCharacter == $_ ] whileTrue.
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan15 [

	[
		self recordMatch: #( 115 ).
		self step.
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
				^ self reportLastMatch ].
		currentCharacter between: $0 and: $1 ] whileTrue.
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 115 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan16 [

	[
		self recordMatch: #( 115 ).
		self step.
		currentCharacter == $. ifTrue: [
				self step.
				(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
					ifTrue: [ ^ self scan17 ].
				^ self reportLastMatch ].
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
					ifTrue: [ ^ self scan16 ].
				^ self reportLastMatch ].
		('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 115 ) ].
		currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan17 [

	[
		self recordMatch: #( 116 ).
		self step.
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
					ifTrue: [ ^ self scan17 ].
				^ self reportLastMatch ].
		('Pp' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
		currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan18 [

	[
		self recordMatch: #( 115 ).
		self step.
		currentCharacter == $. ifTrue: [ ^ self scan11 ].
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				currentCharacter isDigit ifTrue: [ ^ self scan18 ].
				^ self reportLastMatch ].
		currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 115 ) ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan19 [

	[
		self step.
		currentCharacter == $` ifTrue: [
				self recordMatch: #( 124 ).
				self step.
				currentCharacter == $` ifTrue: [ ^ self scan19 ].
				^ self reportLastMatch ].
		true ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scan2 [
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
										ifTrue: [ ^ self scan1 ] ] ] ].
			^ self reportLastMatch ].
	(('"''' includes: currentCharacter)
		or: [ (currentCharacter between: $0 and: $7)
				or: [ '\bfnrt' includes: currentCharacter ] ]) ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan3 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	true ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scan4 [

	(self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #( 119 ) ].
	^ self scan3
]

{ #category : 'generated' }
JavaScanner >> scan5 [

	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #( 118 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan6 [

	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #( 118 ) ].
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan7 [

	[
		self recordMatch: #( 116 ).
		self step.
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				currentCharacter isDigit ifTrue: [ ^ self scan7 ].
				^ self reportLastMatch ].
		currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan8 [
	self step.
	('+-' includes: currentCharacter) ifTrue: [ self step ].
	currentCharacter isDigit ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan9 [

	[
		self recordMatch: #( 116 ).
		self step.
		currentCharacter isDigit ] whileTrue.
	('DFdf' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForToken [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX7 ].
	^ self scanForTokenX22
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX1 [

	self recordMatch: #( 115 ).
	self step.
	^ self scanForTokenX1X3
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX10 [
	self recordMatch: #(20).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(21) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX11 [
	self recordMatch: #(12).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX12 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX13 [

	[
		self recordMatch: #( 122 ).
		self step.
		currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX14 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX15 [
	self recordMatch: #(31).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX16 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX17 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX18 [
	self recordMatch: #(3).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX19 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX1X1 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX1X2 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX1X3 [

	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan14 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X2 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 115 ) ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X1 ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX2 [

	self step.
	currentCharacter == $\ ifTrue: [
			self step.
			currentCharacter == $u ifTrue: [
					self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [
								self step.
								(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
									ifTrue: [
											self step.
											(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [
														self step.
														(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
															ifTrue: [ ^ self scan5 ] ] ] ].
					^ self reportLastMatch ].
			(currentCharacter between: $0 and: $3) ifTrue: [
					self step.
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #( 118 ) ].
					(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan6 ].
					^ self reportLastMatch ].
			(currentCharacter between: $4 and: $7) ifTrue: [ ^ self scan6 ].
			('"''\bfnrt' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	(currentCharacter <= $& or: [ currentCharacter >= $( ]) ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX20 [

	[
		self recordMatch: #( 121 ).
		self step.
		currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX21 [

	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $` ifTrue: [ ^ self scan19 ].
	currentCharacter == $n ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #( 106 ) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #( 110 ) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #( 111 ) ].
	currentCharacter isDigit ifTrue: [ ^ self scan18 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scanForTokenX13 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ]) ifTrue: [ self scanForTokenX20 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX22 [
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	^ self scanForTokenX21
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX3 [

	self recordMatch: #( 22 ).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan10 ].
	currentCharacter == $/ ifTrue: [
			[
				self recordMatch: #( 123 ).
				self step.
				currentCharacter <= Character tab or: [
					(currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 23 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX4 [

	self step.
	currentCharacter == $" ifTrue: [
			self recordMatch: #( 119 ).
			self step.
			currentCharacter == $" ifTrue: [
					[
						self step.
						(currentCharacter == Character lf or: [ currentCharacter == Character cr ]) ifTrue: [
								[
									self step.
									currentCharacter == $" ifTrue: [ ^ self scan4 ].
									currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
								^ self scan3 ].
						currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	^ self scan1
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX5 [

	(self scanForString: 'on-' match: #( 121 )) ifTrue: [
			(self scanForString: 'sealed') ifTrue: [ ^ self recordAndReportMatch: #( 73 ) ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ]) ifTrue: [
			[
				self recordMatch: #( 121 ).
				self step.
				currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX6 [

	self recordMatch: #( 112 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 33 ) ].
	currentCharacter == $> ifTrue: [
			self recordMatch: #( 113 ).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 34 ) ].
			currentCharacter == $> ifTrue: [
					self recordMatch: #( 114 ).
					self step.
					currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 35 ) ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX7 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX8 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(28).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(29) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX9 [

	self recordMatch: #( 107 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 108 ) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #( 109 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> tokenActions [

	^ #( nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
	     nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
	     nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
	     nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace
	     #comment #patternToken )
]
