Class {
	#name : #PyWithItemNode,
	#superclass : #PyRootNode,
	#instVars : [
		'expression',
		'asToken',
		'name'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyWithItemNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitWithItem: self
]

{ #category : #generated }
PyWithItemNode >> asToken [
	^ asToken
]

{ #category : #generated }
PyWithItemNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
PyWithItemNode >> expression [
	^ expression
]

{ #category : #generated }
PyWithItemNode >> expression: aPyExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPyExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PyWithItemNode >> name [
	^ name
]

{ #category : #generated }
PyWithItemNode >> name: aPyExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPyExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PyWithItemNode >> nodeVariables [
	^ #(#expression #name)
]

{ #category : #generated }
PyWithItemNode >> tokenVariables [
	^ #(#asToken)
]
