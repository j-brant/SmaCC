Class {
	#name : #VBNetThrowStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'throwToken',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetThrowStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitThrowStatement: self
]

{ #category : #generated }
VBNetThrowStatementNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetThrowStatementNode >> throwToken [
	^ throwToken
]

{ #category : #generated }
VBNetThrowStatementNode >> throwToken: aSmaCCToken [
	throwToken := aSmaCCToken
]

{ #category : #generated }
VBNetThrowStatementNode >> tokenVariables [
	^ #(#throwToken)
]

{ #category : #generated }
VBNetThrowStatementNode >> value [
	^ value
]

{ #category : #generated }
VBNetThrowStatementNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
