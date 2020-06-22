Class {
	#name : #VBNetBinaryExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
VBNetBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
VBNetBinaryExpressionNode >> left: aVBNetExpressionNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aVBNetExpressionNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
VBNetBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
VBNetBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
VBNetBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
VBNetBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
VBNetBinaryExpressionNode >> right: aVBNetExpressionNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aVBNetExpressionNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
VBNetBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
