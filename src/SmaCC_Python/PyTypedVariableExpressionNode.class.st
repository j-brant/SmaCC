Class {
	#name : #PyTypedVariableExpressionNode,
	#superclass : #PyVariableExpressionNode,
	#instVars : [
		'colonToken',
		'typeExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyTypedVariableExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitTypedVariableExpression: self
]

{ #category : #generated }
PyTypedVariableExpressionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyTypedVariableExpressionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyTypedVariableExpressionNode >> nodeVariables [
	^ #(#typeExpression)
]

{ #category : #generated }
PyTypedVariableExpressionNode >> tokenVariables [
	^ #(#colonToken #nameToken)
]

{ #category : #generated }
PyTypedVariableExpressionNode >> typeExpression [
	^ typeExpression
]

{ #category : #generated }
PyTypedVariableExpressionNode >> typeExpression: aPyExpressionNode [
	self typeExpression notNil ifTrue: [ self typeExpression parent: nil ].
	typeExpression := aPyExpressionNode.
	self typeExpression notNil ifTrue: [ self typeExpression parent: self ]
]
