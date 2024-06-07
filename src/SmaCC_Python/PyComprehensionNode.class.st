Class {
	#name : #PyComprehensionNode,
	#superclass : #PyRootNode,
	#instVars : [
		'object',
		'for'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyComprehensionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitComprehension: self
]

{ #category : #generated }
PyComprehensionNode >> for [
	^ for
]

{ #category : #generated }
PyComprehensionNode >> for: aPyRootNode [
	self for notNil ifTrue: [ self for parent: nil ].
	for := aPyRootNode.
	self for notNil ifTrue: [ self for parent: self ]
]

{ #category : #generated }
PyComprehensionNode >> nodeVariables [
	^ #(#object #for)
]

{ #category : #generated }
PyComprehensionNode >> object [
	^ object
]

{ #category : #generated }
PyComprehensionNode >> object: aPyExpressionNode [
	self object notNil ifTrue: [ self object parent: nil ].
	object := aPyExpressionNode.
	self object notNil ifTrue: [ self object parent: self ]
]
