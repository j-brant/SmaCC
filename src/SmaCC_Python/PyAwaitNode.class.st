Class {
	#name : #PyAwaitNode,
	#superclass : #PyRootNode,
	#instVars : [
		'awaitToken',
		'expression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAwaitNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAwait: self
]

{ #category : #generated }
PyAwaitNode >> awaitToken [
	^ awaitToken
]

{ #category : #generated }
PyAwaitNode >> awaitToken: aSmaCCToken [
	awaitToken := aSmaCCToken
]

{ #category : #generated }
PyAwaitNode >> expression [
	^ expression
]

{ #category : #generated }
PyAwaitNode >> expression: aPyRootNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPyRootNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PyAwaitNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
PyAwaitNode >> tokenVariables [
	^ #(#awaitToken)
]
