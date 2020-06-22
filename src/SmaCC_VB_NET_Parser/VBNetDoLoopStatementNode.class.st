Class {
	#name : #VBNetDoLoopStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'doToken',
		'statements',
		'loopTokens',
		'expression'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetDoLoopStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoLoopStatement: self
]

{ #category : #generated }
VBNetDoLoopStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetDoLoopStatementNode >> compositeTokenVariables [
	^ #(#loopTokens)
]

{ #category : #generated }
VBNetDoLoopStatementNode >> doToken [
	^ doToken
]

{ #category : #generated }
VBNetDoLoopStatementNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : #generated }
VBNetDoLoopStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetDoLoopStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetDoLoopStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	loopTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetDoLoopStatementNode >> loopTokens [
	^ loopTokens
]

{ #category : #generated }
VBNetDoLoopStatementNode >> loopTokens: anOrderedCollection [
	loopTokens := anOrderedCollection
]

{ #category : #generated }
VBNetDoLoopStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetDoLoopStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetDoLoopStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetDoLoopStatementNode >> tokenVariables [
	^ #(#doToken)
]
