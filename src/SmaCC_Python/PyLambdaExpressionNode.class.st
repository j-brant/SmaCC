Class {
	#name : #PyLambdaExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'lambdaToken',
		'parameters',
		'commaTokens',
		'colonToken',
		'body'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyLambdaExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitLambdaExpression: self
]

{ #category : #generated }
PyLambdaExpressionNode >> body [
	^ body
]

{ #category : #generated }
PyLambdaExpressionNode >> body: aPyExpressionNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aPyExpressionNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : #generated }
PyLambdaExpressionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyLambdaExpressionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyLambdaExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyLambdaExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyLambdaExpressionNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
PyLambdaExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
PyLambdaExpressionNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyLambdaExpressionNode >> lambdaToken [
	^ lambdaToken
]

{ #category : #generated }
PyLambdaExpressionNode >> lambdaToken: aSmaCCToken [
	lambdaToken := aSmaCCToken
]

{ #category : #generated }
PyLambdaExpressionNode >> nodeVariables [
	^ #(#body)
]

{ #category : #generated }
PyLambdaExpressionNode >> parameters [
	^ parameters
]

{ #category : #generated }
PyLambdaExpressionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
PyLambdaExpressionNode >> tokenVariables [
	^ #(#lambdaToken #colonToken)
]
