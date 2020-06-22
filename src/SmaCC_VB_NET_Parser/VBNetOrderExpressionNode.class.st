Class {
	#name : #VBNetOrderExpressionNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'value',
		'order'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetOrderExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOrderExpression: self
]

{ #category : #generated }
VBNetOrderExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetOrderExpressionNode >> order [
	^ order
]

{ #category : #generated }
VBNetOrderExpressionNode >> order: aSmaCCToken [
	order := aSmaCCToken
]

{ #category : #generated }
VBNetOrderExpressionNode >> tokenVariables [
	^ #(#order)
]

{ #category : #generated }
VBNetOrderExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetOrderExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
