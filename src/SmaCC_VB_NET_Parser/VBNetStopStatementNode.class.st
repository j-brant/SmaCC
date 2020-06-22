Class {
	#name : #VBNetStopStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'stopToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetStopStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStopStatement: self
]

{ #category : #generated }
VBNetStopStatementNode >> stopToken [
	^ stopToken
]

{ #category : #generated }
VBNetStopStatementNode >> stopToken: aSmaCCToken [
	stopToken := aSmaCCToken
]

{ #category : #generated }
VBNetStopStatementNode >> tokenVariables [
	^ #(#stopToken)
]
