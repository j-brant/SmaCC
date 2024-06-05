Class {
	#name : #PyFunctionCallExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'receiver',
		'lparenToken',
		'rparenToken',
		'arguments',
		'commaTokens',
		'starTokens',
		'starStarToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyFunctionCallExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitFunctionCallExpression: self
]

{ #category : #generated }
PyFunctionCallExpressionNode >> arguments [
	^ arguments
]

{ #category : #generated }
PyFunctionCallExpressionNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
PyFunctionCallExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyFunctionCallExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyFunctionCallExpressionNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
PyFunctionCallExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens #starTokens)
]

{ #category : #'generated-initialize-release' }
PyFunctionCallExpressionNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	starTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyFunctionCallExpressionNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyFunctionCallExpressionNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionCallExpressionNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : #generated }
PyFunctionCallExpressionNode >> receiver [
	^ receiver
]

{ #category : #generated }
PyFunctionCallExpressionNode >> receiver: aPyExpressionNode [
	self receiver notNil ifTrue: [ self receiver parent: nil ].
	receiver := aPyExpressionNode.
	self receiver notNil ifTrue: [ self receiver parent: self ]
]

{ #category : #generated }
PyFunctionCallExpressionNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyFunctionCallExpressionNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionCallExpressionNode >> starStarToken [
	^ starStarToken
]

{ #category : #generated }
PyFunctionCallExpressionNode >> starStarToken: aSmaCCToken [
	starStarToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionCallExpressionNode >> starTokens [
	^ starTokens
]

{ #category : #generated }
PyFunctionCallExpressionNode >> starTokens: anOrderedCollection [
	starTokens := anOrderedCollection
]

{ #category : #generated }
PyFunctionCallExpressionNode >> tokenVariables [
	^ #(#lparenToken #rparenToken #starStarToken)
]
