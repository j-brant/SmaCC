Class {
	#name : #PyReturnTypeAnnotationNode,
	#superclass : #PyRootNode,
	#instVars : [
		'minusGreaterThanToken',
		'typeExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyReturnTypeAnnotationNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitReturnTypeAnnotation: self
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> minusGreaterThanToken [
	^ minusGreaterThanToken
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> minusGreaterThanToken: aSmaCCToken [
	minusGreaterThanToken := aSmaCCToken
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> nodeVariables [
	^ #(#typeExpression)
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> tokenVariables [
	^ #(#minusGreaterThanToken)
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> typeExpression [
	^ typeExpression
]

{ #category : #generated }
PyReturnTypeAnnotationNode >> typeExpression: aPyRootNode [
	self typeExpression notNil ifTrue: [ self typeExpression parent: nil ].
	typeExpression := aPyRootNode.
	self typeExpression notNil ifTrue: [ self typeExpression parent: self ]
]
