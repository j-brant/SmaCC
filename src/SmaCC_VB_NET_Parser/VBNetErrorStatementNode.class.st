Class {
	#name : #VBNetErrorStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'errorToken',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetErrorStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitErrorStatement: self
]

{ #category : #generated }
VBNetErrorStatementNode >> errorToken [
	^ errorToken
]

{ #category : #generated }
VBNetErrorStatementNode >> errorToken: aSmaCCToken [
	errorToken := aSmaCCToken
]

{ #category : #generated }
VBNetErrorStatementNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetErrorStatementNode >> tokenVariables [
	^ #(#errorToken)
]

{ #category : #generated }
VBNetErrorStatementNode >> value [
	^ value
]

{ #category : #generated }
VBNetErrorStatementNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
