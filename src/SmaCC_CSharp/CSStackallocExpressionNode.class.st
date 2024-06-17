Class {
	#name : #CSStackallocExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'stackallocToken',
		'type',
		'leftBracket',
		'expression',
		'rightBracket',
		'leftBrace',
		'commaTokens',
		'initializers',
		'rightBrace'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSStackallocExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStackallocExpression: self
]

{ #category : #generated }
CSStackallocExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSStackallocExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSStackallocExpressionNode >> compositeNodeVariables [
	^ #(#initializers)
]

{ #category : #generated }
CSStackallocExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CSStackallocExpressionNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSStackallocExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens #_leftParens #_rightParens)
]

{ #category : #'generated-initialize-release' }
CSStackallocExpressionNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
	initializers := OrderedCollection new: 2.
]

{ #category : #generated }
CSStackallocExpressionNode >> initializers [
	^ initializers
]

{ #category : #generated }
CSStackallocExpressionNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CSStackallocExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CSStackallocExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CSStackallocExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CSStackallocExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CSStackallocExpressionNode >> nodeVariables [
	^ #(#type #expression)
]

{ #category : #generated }
CSStackallocExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CSStackallocExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CSStackallocExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CSStackallocExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CSStackallocExpressionNode >> stackallocToken [
	^ stackallocToken
]

{ #category : #generated }
CSStackallocExpressionNode >> stackallocToken: aSmaCCToken [
	stackallocToken := aSmaCCToken
]

{ #category : #generated }
CSStackallocExpressionNode >> tokenVariables [
	^ #(#stackallocToken #leftBracket #rightBracket #leftBrace #rightBrace)
]

{ #category : #generated }
CSStackallocExpressionNode >> type [
	^ type
]

{ #category : #generated }
CSStackallocExpressionNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
