Class {
	#name : #VBNetYieldStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'yieldToken',
		'yield'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetYieldStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitYieldStatement: self
]

{ #category : #generated }
VBNetYieldStatementNode >> nodeVariables [
	^ #(#yield)
]

{ #category : #generated }
VBNetYieldStatementNode >> tokenVariables [
	^ #(#yieldToken)
]

{ #category : #generated }
VBNetYieldStatementNode >> yield [
	^ yield
]

{ #category : #generated }
VBNetYieldStatementNode >> yield: aVBNetExpressionNode [
	self yield notNil
		ifTrue: [ self yield parent: nil ].
	yield := aVBNetExpressionNode.
	self yield notNil
		ifTrue: [ self yield parent: self ]
]

{ #category : #generated }
VBNetYieldStatementNode >> yieldToken [
	^ yieldToken
]

{ #category : #generated }
VBNetYieldStatementNode >> yieldToken: aSmaCCToken [
	yieldToken := aSmaCCToken
]
