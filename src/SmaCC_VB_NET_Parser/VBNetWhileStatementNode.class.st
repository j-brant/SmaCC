Class {
	#name : #VBNetWhileStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'whileTokens',
		'expression',
		'statements',
		'endToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetWhileStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhileStatement: self
]

{ #category : #generated }
VBNetWhileStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetWhileStatementNode >> compositeTokenVariables [
	^ #(#whileTokens)
]

{ #category : #generated }
VBNetWhileStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetWhileStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetWhileStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetWhileStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetWhileStatementNode >> initialize [
	super initialize.
	whileTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetWhileStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetWhileStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetWhileStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetWhileStatementNode >> tokenVariables [
	^ #(#endToken)
]

{ #category : #generated }
VBNetWhileStatementNode >> whileTokens [
	^ whileTokens
]

{ #category : #generated }
VBNetWhileStatementNode >> whileTokens: anOrderedCollection [
	whileTokens := anOrderedCollection
]
