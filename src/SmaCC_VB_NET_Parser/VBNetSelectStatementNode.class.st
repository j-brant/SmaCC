Class {
	#name : #VBNetSelectStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'selectTokens',
		'expression',
		'cases',
		'endToken',
		'else',
		'caseToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetSelectStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectStatement: self
]

{ #category : #generated }
VBNetSelectStatementNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
VBNetSelectStatementNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
VBNetSelectStatementNode >> cases [
	^ cases
]

{ #category : #generated }
VBNetSelectStatementNode >> cases: anOrderedCollection [
	self setParents: self cases to: nil.
	cases := anOrderedCollection.
	self setParents: self cases to: self
]

{ #category : #generated }
VBNetSelectStatementNode >> compositeNodeVariables [
	^ #(#cases)
]

{ #category : #generated }
VBNetSelectStatementNode >> compositeTokenVariables [
	^ #(#selectTokens)
]

{ #category : #generated }
VBNetSelectStatementNode >> else [
	^ else
]

{ #category : #generated }
VBNetSelectStatementNode >> else: aVBNetCaseElseStatementNode [
	self else notNil
		ifTrue: [ self else parent: nil ].
	else := aVBNetCaseElseStatementNode.
	self else notNil
		ifTrue: [ self else parent: self ]
]

{ #category : #generated }
VBNetSelectStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetSelectStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetSelectStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetSelectStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetSelectStatementNode >> initialize [
	super initialize.
	selectTokens := OrderedCollection new: 2.
	cases := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetSelectStatementNode >> nodeVariables [
	^ #(#expression #else)
]

{ #category : #generated }
VBNetSelectStatementNode >> selectTokens [
	^ selectTokens
]

{ #category : #generated }
VBNetSelectStatementNode >> selectTokens: anOrderedCollection [
	selectTokens := anOrderedCollection
]

{ #category : #generated }
VBNetSelectStatementNode >> tokenVariables [
	^ #(#endToken #caseToken)
]
