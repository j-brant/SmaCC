Class {
	#name : #DOTScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_DOT'
}

{ #category : #'generated-initialization' }
DOTScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(28 'digraph' 9) #(28 'edge' 11) #(28 'graph' 12) #(28 'ne' 14) #(28 'node' 15) #(28 'nw' 16) #(28 'se' 18) #(28 'strict' 19) #(28 'subgraph' 20) #(28 'sw' 21))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
DOTScanner >> HTMLStringId [
	^ 52
]

{ #category : #generated }
DOTScanner >> emptySymbolTokenId [
	^ 53
]

{ #category : #generated }
DOTScanner >> errorTokenId [
	^ 54
]

{ #category : #generated }
DOTScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan1 ].
	true ] whileTrue
]

{ #category : #generated }
DOTScanner >> scan2 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scan3 [
	[ self recordMatch: #(28).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scan4 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			^ self scan4 ].
	true ] whileTrue
]

{ #category : #generated }
DOTScanner >> scanForToken [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $<
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self scanForTokenX11
]

{ #category : #generated }
DOTScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(25).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX10 [
	[ self recordMatch: #(28).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue
]

{ #category : #generated }
DOTScanner >> scanForTokenX11 [
	currentCharacter == $_
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan3 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter isLetter
		ifTrue:
			[ self scanForTokenX10 ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan3 ].
	('->' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX3 [
	self recordMatch: #(22 28).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX4 [
	self recordMatch: #(17 28).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX5 [
	self recordMatch: #(13 28).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX6 [
	self recordMatch: #(10 28).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX7 [
	self recordMatch: #(8 28).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX8 [
	self recordMatch: #(7 28).
	self step.
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(28).
			self step.
			currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
DOTScanner >> scanForTokenX9 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #accessing }
DOTScanner >> startHTMLString [
	| code |
	code := '<'.
	[ code := code , (stream upTo: $>) , '>'.
	(code occurrencesOf: $<) = (code occurrencesOf: $>) ]
		whileFalse: [ stream atEnd
				ifTrue: [ ^ self scannerError ] ].
	matchActions := Array with: self HTMLStringId.
	^ self createTokenFor: code
]

{ #category : #generated }
DOTScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment #whitespace #startHTMLString)
]
