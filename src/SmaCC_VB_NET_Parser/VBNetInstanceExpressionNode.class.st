Class {
	#name : #VBNetInstanceExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'meToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetInstanceExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstanceExpression: self
]

{ #category : #generated }
VBNetInstanceExpressionNode >> meToken [
	^ meToken
]

{ #category : #generated }
VBNetInstanceExpressionNode >> meToken: aSmaCCToken [
	meToken := aSmaCCToken
]

{ #category : #generated }
VBNetInstanceExpressionNode >> tokenVariables [
	^ #(#meToken)
]
