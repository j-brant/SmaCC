Class {
	#name : #PySetExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'lcurlyToken',
		'expressions',
		'commaTokens',
		'rcurlyToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PySetExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitSetExpression: self
]

{ #category : #generated }
PySetExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PySetExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PySetExpressionNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PySetExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PySetExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
PySetExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PySetExpressionNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PySetExpressionNode >> lcurlyToken [
	^ lcurlyToken
]

{ #category : #generated }
PySetExpressionNode >> lcurlyToken: aSmaCCToken [
	lcurlyToken := aSmaCCToken
]

{ #category : #generated }
PySetExpressionNode >> rcurlyToken [
	^ rcurlyToken
]

{ #category : #generated }
PySetExpressionNode >> rcurlyToken: aSmaCCToken [
	rcurlyToken := aSmaCCToken
]

{ #category : #generated }
PySetExpressionNode >> tokenVariables [
	^ #(#lcurlyToken #rcurlyToken)
]
