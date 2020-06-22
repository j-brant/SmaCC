Class {
	#name : #VBNetWithStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'withTokens',
		'expression',
		'statements',
		'endToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetWithStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWithStatement: self
]

{ #category : #generated }
VBNetWithStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetWithStatementNode >> compositeTokenVariables [
	^ #(#withTokens)
]

{ #category : #generated }
VBNetWithStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetWithStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetWithStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetWithStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetWithStatementNode >> initialize [
	super initialize.
	withTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetWithStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetWithStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetWithStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetWithStatementNode >> tokenVariables [
	^ #(#endToken)
]

{ #category : #generated }
VBNetWithStatementNode >> withTokens [
	^ withTokens
]

{ #category : #generated }
VBNetWithStatementNode >> withTokens: anOrderedCollection [
	withTokens := anOrderedCollection
]
