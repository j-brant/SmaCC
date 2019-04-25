Class {
	#name : #JSONScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONScanner >> emptySymbolTokenId [
	^ 20
]

{ #category : #generated }
JSONScanner >> errorTokenId [
	^ 21
]

{ #category : #generated }
JSONScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ ^ self scan1 ] ] ] ].
					^ self reportLastMatch ].
			('"/\bnrt' includes: currentCharacter)
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	(currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ currentCharacter >= $] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scan2 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scan3 [
	self step.
	(currentCharacter between: $0 and: $9)
		ifTrue: [ [ self recordMatch: #(10).
			self step.
			currentCharacter between: $0 and: $9 ] whileTrue.
			('Ee' includes: currentCharacter)
				ifTrue: [ ^ self scan4 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scan4 [
	self step.
	(currentCharacter between: $0 and: $9)
		ifTrue: [ [ self recordMatch: #(10).
			self step.
			currentCharacter between: $0 and: $9 ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $9)
				ifTrue: [ [ self recordMatch: #(10).
					self step.
					currentCharacter between: $0 and: $9 ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scan5 [
	[ self recordMatch: #(10).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan3 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scanForToken [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $0
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self scanForTokenX6
]

{ #category : #generated }
JSONScanner >> scanForTokenX1 [
	[ self recordMatch: #(12).
	self step.
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ] ] whileTrue
]

{ #category : #generated }
JSONScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $0
		ifTrue: [ ^ self scan2 ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scanForTokenX3 [
	(self scanForString: 'rue')
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scanForTokenX4 [
	(self scanForString: 'ull')
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scanForTokenX5 [
	(self scanForString: 'alse')
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> scanForTokenX6 [
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ ^ self scan5 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ])
		ifTrue:
			[ self scanForTokenX1 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSONScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil #whitespace)
]
