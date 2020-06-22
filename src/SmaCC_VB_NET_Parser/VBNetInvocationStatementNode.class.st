Class {
	#name : #VBNetInvocationStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'expression',
		'callToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetInvocationStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInvocationStatement: self
]

{ #category : #generated }
VBNetInvocationStatementNode >> callToken [
	^ callToken
]

{ #category : #generated }
VBNetInvocationStatementNode >> callToken: aSmaCCToken [
	callToken := aSmaCCToken
]

{ #category : #generated }
VBNetInvocationStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetInvocationStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
VBNetInvocationStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetInvocationStatementNode >> tokenVariables [
	^ #(#callToken)
]
