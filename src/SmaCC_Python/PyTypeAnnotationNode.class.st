Class {
	#name : #PyTypeAnnotationNode,
	#superclass : #PyRootNode,
	#instVars : [
		'colonToken',
		'typeExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyTypeAnnotationNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitTypeAnnotation: self
]

{ #category : #generated }
PyTypeAnnotationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyTypeAnnotationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyTypeAnnotationNode >> nodeVariables [
	^ #(#typeExpression)
]

{ #category : #generated }
PyTypeAnnotationNode >> tokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
PyTypeAnnotationNode >> typeExpression [
	^ typeExpression
]

{ #category : #generated }
PyTypeAnnotationNode >> typeExpression: aPyRootNode [
	self typeExpression notNil ifTrue: [ self typeExpression parent: nil ].
	typeExpression := aPyRootNode.
	self typeExpression notNil ifTrue: [ self typeExpression parent: self ]
]
