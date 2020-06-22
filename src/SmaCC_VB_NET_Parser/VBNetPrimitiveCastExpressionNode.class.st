Class {
	#name : #VBNetPrimitiveCastExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'type',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrimitiveCastExpression: self
]

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> tokenVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> type: aSmaCCToken [
	type := aSmaCCToken
]

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetPrimitiveCastExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
