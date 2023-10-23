Class {
	#name : #PyVariableAnnotationNode,
	#superclass : #PyRootNode,
	#instVars : [
		'colonToken',
		'typeExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyVariableAnnotationNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitVariableAnnotation: self
]

{ #category : #generated }
PyVariableAnnotationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyVariableAnnotationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyVariableAnnotationNode >> nodeVariables [
	^ #(#typeExpression)
]

{ #category : #generated }
PyVariableAnnotationNode >> tokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
PyVariableAnnotationNode >> typeExpression [
	^ typeExpression
]

{ #category : #generated }
PyVariableAnnotationNode >> typeExpression: aPyRootNode [
	self typeExpression notNil ifTrue: [ self typeExpression parent: nil ].
	typeExpression := aPyRootNode.
	self typeExpression notNil ifTrue: [ self typeExpression parent: self ]
]
