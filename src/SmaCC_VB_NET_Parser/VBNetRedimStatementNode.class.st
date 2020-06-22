Class {
	#name : #VBNetRedimStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'redimToken',
		'redims',
		'commas',
		'preserveToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetRedimStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRedimStatement: self
]

{ #category : #generated }
VBNetRedimStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetRedimStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetRedimStatementNode >> compositeNodeVariables [
	^ #(#redims)
]

{ #category : #generated }
VBNetRedimStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetRedimStatementNode >> initialize [
	super initialize.
	redims := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetRedimStatementNode >> preserveToken [
	^ preserveToken
]

{ #category : #generated }
VBNetRedimStatementNode >> preserveToken: aSmaCCToken [
	preserveToken := aSmaCCToken
]

{ #category : #generated }
VBNetRedimStatementNode >> redimToken [
	^ redimToken
]

{ #category : #generated }
VBNetRedimStatementNode >> redimToken: aSmaCCToken [
	redimToken := aSmaCCToken
]

{ #category : #generated }
VBNetRedimStatementNode >> redims [
	^ redims
]

{ #category : #generated }
VBNetRedimStatementNode >> redims: anOrderedCollection [
	self setParents: self redims to: nil.
	redims := anOrderedCollection.
	self setParents: self redims to: self
]

{ #category : #generated }
VBNetRedimStatementNode >> tokenVariables [
	^ #(#redimToken #preserveToken)
]
