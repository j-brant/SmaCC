Class {
	#name : #VBNetReturnStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'returnToken',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetReturnStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReturnStatement: self
]

{ #category : #generated }
VBNetReturnStatementNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetReturnStatementNode >> returnToken [
	^ returnToken
]

{ #category : #generated }
VBNetReturnStatementNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : #generated }
VBNetReturnStatementNode >> tokenVariables [
	^ #(#returnToken)
]

{ #category : #generated }
VBNetReturnStatementNode >> value [
	^ value
]

{ #category : #generated }
VBNetReturnStatementNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
