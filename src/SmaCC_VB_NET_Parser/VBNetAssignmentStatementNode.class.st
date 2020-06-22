Class {
	#name : #VBNetAssignmentStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'lhs',
		'equals',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAssignmentStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignmentStatement: self
]

{ #category : #generated }
VBNetAssignmentStatementNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetAssignmentStatementNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetAssignmentStatementNode >> lhs [
	^ lhs
]

{ #category : #generated }
VBNetAssignmentStatementNode >> lhs: aVBNetExpressionNode [
	self lhs notNil
		ifTrue: [ self lhs parent: nil ].
	lhs := aVBNetExpressionNode.
	self lhs notNil
		ifTrue: [ self lhs parent: self ]
]

{ #category : #generated }
VBNetAssignmentStatementNode >> nodeVariables [
	^ #(#lhs #value)
]

{ #category : #generated }
VBNetAssignmentStatementNode >> tokenVariables [
	^ #(#equals)
]

{ #category : #generated }
VBNetAssignmentStatementNode >> value [
	^ value
]

{ #category : #generated }
VBNetAssignmentStatementNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
