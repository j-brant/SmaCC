Class {
	#name : #PyFieldAccessExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'receiver',
		'periodToken',
		'nameToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyFieldAccessExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitFieldAccessExpression: self
]

{ #category : #generated }
PyFieldAccessExpressionNode >> nameToken [
	^ nameToken
]

{ #category : #generated }
PyFieldAccessExpressionNode >> nameToken: aSmaCCToken [
	nameToken := aSmaCCToken
]

{ #category : #generated }
PyFieldAccessExpressionNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : #generated }
PyFieldAccessExpressionNode >> periodToken [
	^ periodToken
]

{ #category : #generated }
PyFieldAccessExpressionNode >> periodToken: aSmaCCToken [
	periodToken := aSmaCCToken
]

{ #category : #generated }
PyFieldAccessExpressionNode >> receiver [
	^ receiver
]

{ #category : #generated }
PyFieldAccessExpressionNode >> receiver: aPyExpressionNode [
	self receiver notNil ifTrue: [ self receiver parent: nil ].
	receiver := aPyExpressionNode.
	self receiver notNil ifTrue: [ self receiver parent: self ]
]

{ #category : #generated }
PyFieldAccessExpressionNode >> tokenVariables [
	^ #(#periodToken #nameToken)
]
