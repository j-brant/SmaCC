Class {
	#name : #VBNetGetTypeExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'getTypeToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetGetTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGetTypeExpression: self
]

{ #category : #generated }
VBNetGetTypeExpressionNode >> getTypeToken [
	^ getTypeToken
]

{ #category : #generated }
VBNetGetTypeExpressionNode >> getTypeToken: aSmaCCToken [
	getTypeToken := aSmaCCToken
]

{ #category : #generated }
VBNetGetTypeExpressionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetGetTypeExpressionNode >> tokenVariables [
	^ #(#getTypeToken)
]

{ #category : #generated }
VBNetGetTypeExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetGetTypeExpressionNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
