Class {
	#name : #VBNetGoToStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'gotoToken',
		'goto'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetGoToStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGoToStatement: self
]

{ #category : #generated }
VBNetGoToStatementNode >> goto [
	^ goto
]

{ #category : #generated }
VBNetGoToStatementNode >> goto: aSmaCCToken [
	goto := aSmaCCToken
]

{ #category : #generated }
VBNetGoToStatementNode >> gotoToken [
	^ gotoToken
]

{ #category : #generated }
VBNetGoToStatementNode >> gotoToken: aSmaCCToken [
	gotoToken := aSmaCCToken
]

{ #category : #generated }
VBNetGoToStatementNode >> tokenVariables [
	^ #(#gotoToken #goto)
]
