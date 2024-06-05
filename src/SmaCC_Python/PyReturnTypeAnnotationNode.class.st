Class {
	#name : #PyReturnTypeAnnotationNode,
	#superclass : #PyRootNode,
	#instVars : [
		'arrowToken',
		'typeExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyReturnTypeAnnotationNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitReturnTypeAnnotation: self
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> arrowToken [
	^ arrowToken
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> nodeVariables [
	^ #(#typeExpression)
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> tokenVariables [
	^ #(#arrowToken)
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> typeExpression [
	^ typeExpression
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> typeExpression: aPyExpressionNode [
	self typeExpression notNil ifTrue: [ self typeExpression parent: nil ].
	typeExpression := aPyExpressionNode.
	self typeExpression notNil ifTrue: [ self typeExpression parent: self ]
]
