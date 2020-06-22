Class {
	#name : #VBNetBoundExpressionNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'from',
		'toToken',
		'to'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetBoundExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBoundExpression: self
]

{ #category : #generated }
VBNetBoundExpressionNode >> from [
	^ from
]

{ #category : #generated }
VBNetBoundExpressionNode >> from: aSmaCCToken [
	from := aSmaCCToken
]

{ #category : #generated }
VBNetBoundExpressionNode >> nodeVariables [
	^ #(#to)
]

{ #category : #generated }
VBNetBoundExpressionNode >> to [
	^ to
]

{ #category : #generated }
VBNetBoundExpressionNode >> to: aVBNetExpressionNode [
	self to notNil
		ifTrue: [ self to parent: nil ].
	to := aVBNetExpressionNode.
	self to notNil
		ifTrue: [ self to parent: self ]
]

{ #category : #generated }
VBNetBoundExpressionNode >> toToken [
	^ toToken
]

{ #category : #generated }
VBNetBoundExpressionNode >> toToken: aSmaCCToken [
	toToken := aSmaCCToken
]

{ #category : #generated }
VBNetBoundExpressionNode >> tokenVariables [
	^ #(#from #toToken)
]
