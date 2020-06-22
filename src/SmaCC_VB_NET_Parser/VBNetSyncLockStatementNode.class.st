Class {
	#name : #VBNetSyncLockStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'syncLockTokens',
		'expression',
		'statements',
		'endToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetSyncLockStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSyncLockStatement: self
]

{ #category : #generated }
VBNetSyncLockStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetSyncLockStatementNode >> compositeTokenVariables [
	^ #(#syncLockTokens)
]

{ #category : #generated }
VBNetSyncLockStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetSyncLockStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetSyncLockStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetSyncLockStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetSyncLockStatementNode >> initialize [
	super initialize.
	syncLockTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetSyncLockStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetSyncLockStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetSyncLockStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetSyncLockStatementNode >> syncLockTokens [
	^ syncLockTokens
]

{ #category : #generated }
VBNetSyncLockStatementNode >> syncLockTokens: anOrderedCollection [
	syncLockTokens := anOrderedCollection
]

{ #category : #generated }
VBNetSyncLockStatementNode >> tokenVariables [
	^ #(#endToken)
]
