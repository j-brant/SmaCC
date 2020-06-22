Class {
	#name : #VBNetAwaitExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'awaitToken',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAwaitExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAwaitExpression: self
]

{ #category : #generated }
VBNetAwaitExpressionNode >> awaitToken [
	^ awaitToken
]

{ #category : #generated }
VBNetAwaitExpressionNode >> awaitToken: aSmaCCToken [
	awaitToken := aSmaCCToken
]

{ #category : #generated }
VBNetAwaitExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetAwaitExpressionNode >> tokenVariables [
	^ #(#awaitToken)
]

{ #category : #generated }
VBNetAwaitExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetAwaitExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
