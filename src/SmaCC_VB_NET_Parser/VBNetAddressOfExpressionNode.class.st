Class {
	#name : #VBNetAddressOfExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'addressOfToken',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAddressOfExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAddressOfExpression: self
]

{ #category : #generated }
VBNetAddressOfExpressionNode >> addressOfToken [
	^ addressOfToken
]

{ #category : #generated }
VBNetAddressOfExpressionNode >> addressOfToken: aSmaCCToken [
	addressOfToken := aSmaCCToken
]

{ #category : #generated }
VBNetAddressOfExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetAddressOfExpressionNode >> tokenVariables [
	^ #(#addressOfToken)
]

{ #category : #generated }
VBNetAddressOfExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetAddressOfExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
