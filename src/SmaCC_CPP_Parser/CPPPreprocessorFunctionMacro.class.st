Class {
	#name : #CPPPreprocessorFunctionMacro,
	#superclass : #CPPPreprocessorMacro,
	#instVars : [
		'arguments'
	],
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #'instance creation' }
CPPPreprocessorFunctionMacro class >> replacement: aString interval: anInterval parameters: args [
	^ (self replacement: aString interval: anInterval)
		arguments: args;
		yourself
]

{ #category : #'instance creation' }
CPPPreprocessorFunctionMacro class >> replacement: aString parameters: args [
	^ (self replacement: aString)
		arguments: args;
		yourself
]

{ #category : #accessing }
CPPPreprocessorFunctionMacro >> arguments [
	^ arguments
]

{ #category : #accessing }
CPPPreprocessorFunctionMacro >> arguments: aCollection [
	arguments := aCollection
]

{ #category : #processing }
CPPPreprocessorFunctionMacro >> parseArgOn: aPreprocessor using: aParser isVarArgs: aBoolean [
	| parenCount token first |
	parenCount := 0.
	[ aParser getNextToken.
	token := aParser currentToken.
	token value isEmpty
		or: [ (token value = ',' and: [ parenCount = 0 and: [ aBoolean not ] ])
				or: [ token value = ')' and: [ parenCount = 0 ] ] ] ]
		whileFalse: [ first isNil
				ifTrue: [ first := token startPosition ].
			token value = '('
				ifTrue: [ parenCount := parenCount + 1 ].
			token value = ')'
				ifTrue: [ parenCount := parenCount - 1 ].
			aParser dismissToken ].
	token value = ','
		ifTrue: [ aParser dismissToken ].
	(token value isEmpty or: [ first isNil ])
		ifTrue: [ ^ CPPPreprocessorMacro replacement: '' ].
	^ CPPPreprocessorMacro
		replacement: aPreprocessor currentFileSource
		interval: (first to: token startPosition - 1)
]

{ #category : #processing }
CPPPreprocessorFunctionMacro >> parseArgsOn: aPreprocessor using: aParser [
	| values |
	aParser getNextToken.
	aParser currentToken value = '('
		ifFalse: [ ^ false ].
	aParser dismissToken.
	values := arguments
		collect:
			[ :each | self parseArgOn: aPreprocessor using: aParser isVarArgs: each = '...' ].
	aParser getNextToken.
	aParser currentToken value = ')'
		ifFalse: [ ^ nil ].
	^ values
]

{ #category : #processing }
CPPPreprocessorFunctionMacro >> process: aToken on: aPreprocessor using: aParser [
	| position argValues originalMacros rParen |
	position := aParser position.
	argValues := self parseArgsOn: aPreprocessor using: aParser.
	aParser getNextToken.
	rParen := aParser currentToken.
	(argValues isNil or: [ rParen source ~= ')' ])
		ifTrue: [ aParser position: position.
			^ aToken startPosition ].
	originalMacros := arguments
		collect: [ :each | aPreprocessor macroNamed: each ].
	arguments
		with: argValues
		do: [ :name :each | aPreprocessor addMacro: each named: name ].
	aPreprocessor
		removeMacro: aToken source
		around: [ aPreprocessor
				processSource: source
				inInterval: interval
				isMacro: true ].
	arguments
		with: originalMacros
		do: [ :name :macro | aPreprocessor addMacro: macro named: name ].
	aParser dismissToken.
	^ rParen stopPosition + 1
]
