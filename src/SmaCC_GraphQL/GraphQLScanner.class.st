Class {
	#name : #GraphQLScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_GraphQL'
}

{ #category : #'generated-initialization' }
GraphQLScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(53 'ARGUMENT_DEFINITION' 10) #(53 'ENUM' 11) #(53 'ENUM_VALUE' 12) #(53 'FIELD' 13) #(53 'FIELD_DEFINITION' 14) #(53 'FRAGMENT_DEFINITION' 15) #(53 'FRAGMENT_SPREAD' 16) #(53 'INLINE_FRAGMENT' 17) #(53 'INPUT_FIELD_DEFINITION' 18) #(53 'INPUT_OBJECT' 19) #(53 'INTERFACE' 20) #(53 'MUTATION' 21) #(53 'OBJECT' 22) #(53 'QUERY' 23) #(53 'SCALAR' 24) #(53 'SCHEMA' 25) #(53 'SUBSCRIPTION' 26) #(53 'UNION' 27) #(53 'VARIABLE_DEFINITION' 28) #(53 'directive' 31) #(53 'enum' 32) #(53 'extend' 33) #(53 'false' 34) #(53 'fragment' 35) #(53 'implements' 36) #(53 'input' 37) #(53 'interface' 38) #(53 'mutation' 39) #(53 'null' 40) #(53 'on' 41) #(53 'query' 42) #(53 'repeatable' 43) #(53 'scalar' 44) #(53 'schema' 45) #(53 'subscription' 46) #(53 'true' 47) #(53 'type' 48) #(53 'union' 49))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
GraphQLScanner >> emptySymbolTokenId [
	^ 150
]

{ #category : #generated }
GraphQLScanner >> errorTokenId [
	^ 151
]

{ #category : #generated }
GraphQLScanner >> scan1 [
	self step.
	currentCharacter == $F ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scan2 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	currentCharacter == $\ ifTrue: [ ^ self scan3 ].
	true ] whileTrue
]

{ #category : #generated }
GraphQLScanner >> scan3 [
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
										ifTrue: [ ^ self scan2 ] ] ] ].
			^ self reportLastMatch ].
	('"/\bfnrt' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scan4 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(55) ].
			currentCharacter == $\ ifTrue: [ ^ self scan5 ].
			^ self scan4 ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	true ] whileTrue
]

{ #category : #generated }
GraphQLScanner >> scan5 [
	self step.
	^ self scan4
]

{ #category : #generated }
GraphQLScanner >> scan6 [
	self recordMatch: #(57).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scan7 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(56).
			self step.
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scan8 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(56).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(56).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scan9 [
	[ self recordMatch: #(57).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan7 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForToken [
	self step.
	currentCharacter == Character null ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $! ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $# ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self scanForTokenX10
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX1 [
	[ self recordMatch: #(53).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX10 [
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(59) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $0 ifTrue: [ ^ self scan6 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self scanForTokenX9
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX2 [
	[ self recordMatch: #(59).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX3 [
	[ self recordMatch: #(58).
	self step.
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX4 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(54).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan3 ].
	^ self scan2
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX5 [
	self step.
	currentCharacter == $0 ifTrue: [ ^ self scan6 ].
	currentCharacter isDigit ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX6 [
	self step.
	currentCharacter == $B ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX7 [
	(self scanForString: '..') ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX8 [
	(self scanForString: 'FEF') ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> scanForTokenX9 [
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	currentCharacter = (Character value: 61371) ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter = (Character value: 65279)
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter isDigit ifTrue: [ ^ self scan9 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ])
		ifTrue: [ ^ self scanForTokenX3 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ self scanForTokenX1 ].
	^ self reportLastMatch
]

{ #category : #generated }
GraphQLScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]
