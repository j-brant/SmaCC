Class {
	#name : #VBNetIfStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'ifTokens',
		'expression',
		'statements',
		'elseIfs',
		'endToken',
		'else',
		'statementSeparator',
		'thenToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetIfStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfStatement: self
]

{ #category : #generated }
VBNetIfStatementNode >> compositeNodeVariables [
	^ #(#statements #elseIfs)
]

{ #category : #generated }
VBNetIfStatementNode >> compositeTokenVariables [
	^ #(#ifTokens)
]

{ #category : #generated }
VBNetIfStatementNode >> else [
	^ else
]

{ #category : #generated }
VBNetIfStatementNode >> else: aVBNetElseStatementNode [
	self else notNil
		ifTrue: [ self else parent: nil ].
	else := aVBNetElseStatementNode.
	self else notNil
		ifTrue: [ self else parent: self ]
]

{ #category : #generated }
VBNetIfStatementNode >> elseIfs [
	^ elseIfs
]

{ #category : #generated }
VBNetIfStatementNode >> elseIfs: anOrderedCollection [
	self setParents: self elseIfs to: nil.
	elseIfs := anOrderedCollection.
	self setParents: self elseIfs to: self
]

{ #category : #generated }
VBNetIfStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetIfStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetIfStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetIfStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
VBNetIfStatementNode >> ifTokens [
	^ ifTokens
]

{ #category : #generated }
VBNetIfStatementNode >> ifTokens: anOrderedCollection [
	ifTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBNetIfStatementNode >> initialize [
	super initialize.
	ifTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	elseIfs := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetIfStatementNode >> nodeVariables [
	^ #(#expression #else)
]

{ #category : #generated }
VBNetIfStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetIfStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetIfStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetIfStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetIfStatementNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
VBNetIfStatementNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
VBNetIfStatementNode >> tokenVariables [
	^ #(#endToken #statementSeparator #thenToken)
]
