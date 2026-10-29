Class {
	#name : 'JavaScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated-initialization' }
JavaScanner class >> initializeKeywordMap [

	keywordMap := Dictionary new.
	#( #( 122 'abstract' 43 ) #( 122 'assert' 44 ) #( 122 'boolean' 45 ) #( 122 'break' 46 ) #( 122 'byte' 47 ) #( 122 'case' 48 )
	   #( 122 'catch' 49 ) #( 122 'char' 50 ) #( 122 'class' 51 ) #( 122 'continue' 52 ) #( 122 'default' 53 ) #( 122 'do' 54 )
	   #( 122 'double' 55 ) #( 122 'else' 56 ) #( 122 'enum' 57 ) #( 122 'exports' 58 ) #( 122 'extends' 59 ) #( 122 'false' 118 )
	   #( 122 'final' 60 ) #( 122 'finally' 61 ) #( 122 'float' 62 ) #( 122 'for' 63 ) #( 122 'if' 64 ) #( 122 'implements'
	      65 ) #( 122 'import' 66 ) #( 122 'instanceof' 67 ) #( 122 'int' 68 ) #( 122 'interface' 69 ) #( 122 'long' 70 )
	   #( 122 'module' 71 ) #( 122 'native' 72 ) #( 122 'new' 73 ) #( 122 'null' 121 ) #( 122 'open' 75 ) #( 122 'opens' 76 )
	   #( 122 'package' 77 ) #( 122 'permits' 78 ) #( 122 'private' 79 ) #( 122 'protected' 80 ) #( 122 'provides' 81 )
	   #( 122 'public' 82 ) #( 122 'record' 83 ) #( 122 'requires' 84 ) #( 122 'return' 85 ) #( 122 'sealed' 86 )
	   #( 122 'short' 87 ) #( 122 'static' 88 ) #( 122 'strictfp' 89 ) #( 122 'super' 90 ) #( 122 'switch' 91 ) #( 122 'synchronized'
	      92 ) #( 122 'this' 93 ) #( 122 'throw' 94 ) #( 122 'throws' 95 ) #( 122 'to' 96 ) #( 122 'transient' 97 )
	   #( 122 'transitive' 98 ) #( 122 'true' 118 ) #( 122 'try' 99 ) #( 122 'uses' 100 ) #( 122 'void' 101 ) #( 122 'volatile'
	      102 ) #( 122 'when' 103 ) #( 122 'while' 104 ) #( 122 'with' 105 ) #( 122 'yield' 106 ) ) do: [ :each |
		(keywordMap at: each first ifAbsentPut: [ Dictionary new ]) at: (each at: 2) put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
JavaScanner >> GREATER_THANId [

	^ 113
]

{ #category : 'generated' }
JavaScanner >> SIGNED_RIGHT_SHIFTId [

	^ 114
]

{ #category : 'generated' }
JavaScanner >> UNSIGNED_RIGHT_SHIFTId [

	^ 115
]

{ #category : 'generated' }
JavaScanner >> emptySymbolTokenId [

	^ 368
]

{ #category : 'generated' }
JavaScanner >> errorTokenId [

	^ 369
]

{ #category : 'generated' }
JavaScanner >> scan1 [

	[
		self step.
		currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #( 120 ) ].
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
				currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #( 124 ) ].
				^ self scan10 ].
		true ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scan11 [

	self recordMatch: #( 117 ).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 117 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan12 [

	[
		self recordMatch: #( 116 ).
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
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 116 ) ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 117 ) ].
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
		^ self recordAndReportMatch: #( 117 ) ].
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
		self recordMatch: #( 116 ).
		self step.
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan15 ].
				^ self reportLastMatch ].
		currentCharacter between: $0 and: $1 ] whileTrue.
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 116 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan16 [

	[
		self step.
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
					ifTrue: [ ^ self scan16 ].
				^ self reportLastMatch ].
		('Pp' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
		currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan17 [

	[
		self recordMatch: #( 116 ).
		self step.
		currentCharacter == $. ifTrue: [
				self step.
				('Pp' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
				(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
					ifTrue: [ ^ self scan16 ].
				^ self reportLastMatch ].
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
					ifTrue: [ ^ self scan17 ].
				^ self reportLastMatch ].
		('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 116 ) ].
		('Pp' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
		currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan18 [

	[
		self recordMatch: #( 116 ).
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
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 116 ) ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 117 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan19 [

	[
		self step.
		currentCharacter == $` ifTrue: [
				self recordMatch: #( 125 ).
				self step.
				currentCharacter == $` ifTrue: [ ^ self scan19 ].
				^ self reportLastMatch ].
		true ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scan2 [

	self step.
	currentCharacter == $u ifTrue: [
			self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [
					self step.
					(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [
								self step.
								(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
									ifTrue: [
											self step.
											(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ ^ self scan1 ] ] ] ].
			^ self reportLastMatch ].
	(('"''' includes: currentCharacter) or: [
		 (currentCharacter between: $0 and: $7) or: [ ('\bfn' includes: currentCharacter) or: [ currentCharacter between: $r and: $t ] ] ])
		ifTrue: [ ^ self scan1 ].
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

	(self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #( 120 ) ].
	^ self scan3
]

{ #category : 'generated' }
JavaScanner >> scan5 [

	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #( 119 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan6 [

	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #( 119 ) ].
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scan7 [

	[
		self recordMatch: #( 117 ).
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
		^ self recordAndReportMatch: #( 117 ) ].
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
		self recordMatch: #( 117 ).
		self step.
		currentCharacter == $_ ifTrue: [
				[
					self step.
					currentCharacter == $_ ] whileTrue.
				currentCharacter isDigit ifTrue: [ ^ self scan9 ].
				^ self reportLastMatch ].
		currentCharacter isDigit ] whileTrue.
	('DFdf' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 117 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForToken [

	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX20 ].
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $% ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #( 8 ) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #( 9 ) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #( 15 ) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX7 ].
	^ self scanForTokenX23
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX1 [

	self recordMatch: #( 116 ).
	self step.
	^ self scanForTokenX1X3
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX10 [

	self recordMatch: #( 42 122 ).
	self step.
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ]) ifTrue: [
			[
				self recordMatch: #( 122 ).
				self step.
				currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX11 [

	self recordMatch: #( 20 ).
	self step.
	currentCharacter == $. ifTrue: [
			self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #( 21 ) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX12 [

	self recordMatch: #( 12 ).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #( 13 ) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 14 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX13 [

	self recordMatch: #( 5 ).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #( 6 ) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 7 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX14 [

	[
		self recordMatch: #( 123 ).
		self step.
		currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX15 [

	self recordMatch: #( 40 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 41 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX16 [

	self recordMatch: #( 31 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 32 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX17 [

	self recordMatch: #( 24 ).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #( 25 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX18 [

	self recordMatch: #( 10 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 11 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX19 [

	self recordMatch: #( 3 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 4 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX1X1 [

	self step.
	currentCharacter == $. ifTrue: [
			self step.
			(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [
				^ self scan16 ].
			^ self reportLastMatch ].
	(currentCharacter isDigit or: [ (currentCharacter between: $A and: $F) or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [
		^ self scan17 ].
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
	('Ll' includes: currentCharacter) ifTrue: [ ^ self recordAndReportMatch: #( 116 ) ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X1 ].
	((currentCharacter between: $D and: $F) or: [ currentCharacter between: $d and: $f ]) ifTrue: [
		^ self recordAndReportMatch: #( 117 ) ].
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
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #( 119 ) ].
					(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan6 ].
					^ self reportLastMatch ].
			(currentCharacter between: $4 and: $7) ifTrue: [ ^ self scan6 ].
			(('"''\bfn' includes: currentCharacter) or: [ currentCharacter between: $r and: $t ]) ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	(currentCharacter <= $& or: [ currentCharacter >= $( ]) ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX20 [

	self recordMatch: #( 1 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 2 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX21 [

	[
		self recordMatch: #( 122 ).
		self step.
		currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX22 [

	currentCharacter == $^ ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $_ ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $` ifTrue: [ ^ self scan19 ].
	currentCharacter == $n ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #( 107 ) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #( 111 ) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #( 112 ) ].
	currentCharacter isDigit ifTrue: [ ^ self scan18 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ]) ifTrue: [ ^ self scanForTokenX14 ].
	(currentCharacter isLetter or: [ currentCharacter == $$ ]) ifTrue: [ self scanForTokenX21 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX23 [

	currentCharacter == $. ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #( 26 ) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #( 36 ) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #( 37 ) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #( 38 ) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #( 39 ) ].
	^ self scanForTokenX22
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX3 [

	self recordMatch: #( 22 ).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan10 ].
	currentCharacter == $/ ifTrue: [
			[
				self recordMatch: #( 124 ).
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
			self recordMatch: #( 120 ).
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

	(self scanForString: 'on-' match: #( 122 )) ifTrue: [
			(self scanForString: 'sealed') ifTrue: [ ^ self recordAndReportMatch: #( 74 ) ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ]) ifTrue: [
			[
				self recordMatch: #( 122 ).
				self step.
				currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> scanForTokenX6 [

	self recordMatch: #( 113 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 33 ) ].
	currentCharacter == $> ifTrue: [
			self recordMatch: #( 114 ).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 34 ) ].
			currentCharacter == $> ifTrue: [
					self recordMatch: #( 115 ).
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

	self recordMatch: #( 108 ).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 109 ) ].
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #( 110 ) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JavaScanner >> tokenActions [

	^ #( nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
	     nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
	     nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
	     nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace
	     #comment #patternToken )
]
