Class {
	#name : #VBNetContinueStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'continueToken',
		'continue'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetContinueStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContinueStatement: self
]

{ #category : #generated }
VBNetContinueStatementNode >> continue [
	^ continue
]

{ #category : #generated }
VBNetContinueStatementNode >> continue: aSmaCCToken [
	continue := aSmaCCToken
]

{ #category : #generated }
VBNetContinueStatementNode >> continueToken [
	^ continueToken
]

{ #category : #generated }
VBNetContinueStatementNode >> continueToken: aSmaCCToken [
	continueToken := aSmaCCToken
]

{ #category : #generated }
VBNetContinueStatementNode >> tokenVariables [
	^ #(#continueToken #continue)
]
