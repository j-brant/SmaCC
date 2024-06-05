Class {
	#name : #PyListExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'expressions',
		'commaTokens',
		'lbrackToken',
		'rbrackToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyListExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitListExpression: self
]

{ #category : #generated }
PyListExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyListExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyListExpressionNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyListExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyListExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyListExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyListExpressionNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyListExpressionNode >> lbrackToken [
	^ lbrackToken
]

{ #category : #generated }
PyListExpressionNode >> lbrackToken: aSmaCCToken [
	lbrackToken := aSmaCCToken
]

{ #category : #generated }
PyListExpressionNode >> rbrackToken [
	^ rbrackToken
]

{ #category : #generated }
PyListExpressionNode >> rbrackToken: aSmaCCToken [
	rbrackToken := aSmaCCToken
]

{ #category : #generated }
PyListExpressionNode >> tokenVariables [
	^ #(#lbrackToken #rbrackToken)
]
