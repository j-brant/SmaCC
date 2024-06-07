Class {
	#name : #PyParameterNode,
	#superclass : #PyRootNode,
	#instVars : [
		'name',
		'initializer',
		'colonToken',
		'typeExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyParameterNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitParameter: self
]

{ #category : #generated }
PyParameterNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyParameterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyParameterNode >> initializer [
	^ initializer
]

{ #category : #generated }
PyParameterNode >> initializer: aPyInitNode [
	self initializer notNil ifTrue: [ self initializer parent: nil ].
	initializer := aPyInitNode.
	self initializer notNil ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
PyParameterNode >> name [
	^ name
]

{ #category : #generated }
PyParameterNode >> name: aPyRootNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPyRootNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PyParameterNode >> nodeVariables [
	^ #(#name #initializer #typeExpression)
]

{ #category : #generated }
PyParameterNode >> tokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
PyParameterNode >> typeExpression [
	^ typeExpression
]

{ #category : #generated }
PyParameterNode >> typeExpression: aPyExpressionNode [
	self typeExpression notNil ifTrue: [ self typeExpression parent: nil ].
	typeExpression := aPyExpressionNode.
	self typeExpression notNil ifTrue: [ self typeExpression parent: self ]
]
