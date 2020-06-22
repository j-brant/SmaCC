Class {
	#name : #VBNetElseIfStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'elseIfToken',
		'expression',
		'statements',
		'statementSeparator',
		'thenToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetElseIfStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElseIfStatement: self
]

{ #category : #generated }
VBNetElseIfStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetElseIfStatementNode >> elseIfToken [
	^ elseIfToken
]

{ #category : #generated }
VBNetElseIfStatementNode >> elseIfToken: aSmaCCToken [
	elseIfToken := aSmaCCToken
]

{ #category : #generated }
VBNetElseIfStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetElseIfStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetElseIfStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetElseIfStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetElseIfStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetElseIfStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetElseIfStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetElseIfStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetElseIfStatementNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
VBNetElseIfStatementNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
VBNetElseIfStatementNode >> tokenVariables [
	^ #(#elseIfToken #statementSeparator #thenToken)
]
