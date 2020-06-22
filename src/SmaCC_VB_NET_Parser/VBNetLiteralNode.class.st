Class {
	#name : #VBNetLiteralNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteral: self
]

{ #category : #generated }
VBNetLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetLiteralNode >> value [
	^ value
]

{ #category : #generated }
VBNetLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
