Class {
	#name : #VBNetExitStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'exitToken',
		'exit'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetExitStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExitStatement: self
]

{ #category : #generated }
VBNetExitStatementNode >> exit [
	^ exit
]

{ #category : #generated }
VBNetExitStatementNode >> exit: aSmaCCToken [
	exit := aSmaCCToken
]

{ #category : #generated }
VBNetExitStatementNode >> exitToken [
	^ exitToken
]

{ #category : #generated }
VBNetExitStatementNode >> exitToken: aSmaCCToken [
	exitToken := aSmaCCToken
]

{ #category : #generated }
VBNetExitStatementNode >> tokenVariables [
	^ #(#exitToken #exit)
]
