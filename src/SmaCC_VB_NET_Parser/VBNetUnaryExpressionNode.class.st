Class {
	#name : #VBNetUnaryExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'operator',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetUnaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnaryExpression: self
]

{ #category : #generated }
VBNetUnaryExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetUnaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
VBNetUnaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
VBNetUnaryExpressionNode >> tokenVariables [
	^ #(#operator)
]

{ #category : #generated }
VBNetUnaryExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetUnaryExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
