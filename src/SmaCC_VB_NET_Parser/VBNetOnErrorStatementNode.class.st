Class {
	#name : #VBNetOnErrorStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'onToken',
		'errorToken',
		'clause'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetOnErrorStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOnErrorStatement: self
]

{ #category : #generated }
VBNetOnErrorStatementNode >> clause [
	^ clause
]

{ #category : #generated }
VBNetOnErrorStatementNode >> clause: aVBNetProgramNode [
	self clause notNil
		ifTrue: [ self clause parent: nil ].
	clause := aVBNetProgramNode.
	self clause notNil
		ifTrue: [ self clause parent: self ]
]

{ #category : #generated }
VBNetOnErrorStatementNode >> errorToken [
	^ errorToken
]

{ #category : #generated }
VBNetOnErrorStatementNode >> errorToken: aSmaCCToken [
	errorToken := aSmaCCToken
]

{ #category : #generated }
VBNetOnErrorStatementNode >> nodeVariables [
	^ #(#clause)
]

{ #category : #generated }
VBNetOnErrorStatementNode >> onToken [
	^ onToken
]

{ #category : #generated }
VBNetOnErrorStatementNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
VBNetOnErrorStatementNode >> tokenVariables [
	^ #(#onToken #errorToken)
]
