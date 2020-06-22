Class {
	#name : #VBNetEndStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'endToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetEndStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndStatement: self
]

{ #category : #generated }
VBNetEndStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetEndStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetEndStatementNode >> tokenVariables [
	^ #(#endToken)
]
