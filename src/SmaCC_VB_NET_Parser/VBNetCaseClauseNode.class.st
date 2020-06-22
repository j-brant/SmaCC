Class {
	#name : #VBNetCaseClauseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'operators',
		'value',
		'toToken',
		'to'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCaseClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseClause: self
]

{ #category : #generated }
VBNetCaseClauseNode >> compositeTokenVariables [
	^ #(#operators)
]

{ #category : #'generated-initialize-release' }
VBNetCaseClauseNode >> initialize [
	super initialize.
	operators := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetCaseClauseNode >> nodeVariables [
	^ #(#value #to)
]

{ #category : #generated }
VBNetCaseClauseNode >> operators [
	^ operators
]

{ #category : #generated }
VBNetCaseClauseNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : #generated }
VBNetCaseClauseNode >> to [
	^ to
]

{ #category : #generated }
VBNetCaseClauseNode >> to: aVBNetExpressionNode [
	self to notNil
		ifTrue: [ self to parent: nil ].
	to := aVBNetExpressionNode.
	self to notNil
		ifTrue: [ self to parent: self ]
]

{ #category : #generated }
VBNetCaseClauseNode >> toToken [
	^ toToken
]

{ #category : #generated }
VBNetCaseClauseNode >> toToken: aSmaCCToken [
	toToken := aSmaCCToken
]

{ #category : #generated }
VBNetCaseClauseNode >> tokenVariables [
	^ #(#toToken)
]

{ #category : #generated }
VBNetCaseClauseNode >> value [
	^ value
]

{ #category : #generated }
VBNetCaseClauseNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
