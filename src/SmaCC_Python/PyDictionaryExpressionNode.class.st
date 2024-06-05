Class {
	#name : #PyDictionaryExpressionNode,
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
PyDictionaryExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDictionaryExpression: self
]

{ #category : #generated }
PyDictionaryExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyDictionaryExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyDictionaryExpressionNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyDictionaryExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyDictionaryExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyDictionaryExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyDictionaryExpressionNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyDictionaryExpressionNode >> lcurlyToken [
	^ lcurlyToken
]

{ #category : #generated }
PyDictionaryExpressionNode >> lcurlyToken: aSmaCCToken [
	lcurlyToken := aSmaCCToken
]

{ #category : #generated }
PyDictionaryExpressionNode >> rcurlyToken [
	^ rcurlyToken
]

{ #category : #generated }
PyDictionaryExpressionNode >> rcurlyToken: aSmaCCToken [
	rcurlyToken := aSmaCCToken
]

{ #category : #generated }
PyDictionaryExpressionNode >> tokenVariables [
	^ #(#lcurlyToken #rcurlyToken)
]
