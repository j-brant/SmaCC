Class {
	#name : #VBNetForEachStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'forToken',
		'eachToken',
		'variable',
		'inToken',
		'expression',
		'statements',
		'nextToken',
		'nexts',
		'commas'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetForEachStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForEachStatement: self
]

{ #category : #generated }
VBNetForEachStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetForEachStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetForEachStatementNode >> compositeNodeVariables [
	^ #(#statements #nexts)
]

{ #category : #generated }
VBNetForEachStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetForEachStatementNode >> eachToken [
	^ eachToken
]

{ #category : #generated }
VBNetForEachStatementNode >> eachToken: aSmaCCToken [
	eachToken := aSmaCCToken
]

{ #category : #generated }
VBNetForEachStatementNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetForEachStatementNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
VBNetForEachStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
VBNetForEachStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
VBNetForEachStatementNode >> inToken [
	^ inToken
]

{ #category : #generated }
VBNetForEachStatementNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetForEachStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	nexts := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetForEachStatementNode >> nextToken [
	^ nextToken
]

{ #category : #generated }
VBNetForEachStatementNode >> nextToken: aSmaCCToken [
	nextToken := aSmaCCToken
]

{ #category : #generated }
VBNetForEachStatementNode >> nexts [
	^ nexts
]

{ #category : #generated }
VBNetForEachStatementNode >> nexts: anOrderedCollection [
	self setParents: self nexts to: nil.
	nexts := anOrderedCollection.
	self setParents: self nexts to: self
]

{ #category : #generated }
VBNetForEachStatementNode >> nodeVariables [
	^ #(#variable #expression)
]

{ #category : #generated }
VBNetForEachStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetForEachStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetForEachStatementNode >> tokenVariables [
	^ #(#forToken #eachToken #inToken #nextToken)
]

{ #category : #generated }
VBNetForEachStatementNode >> variable [
	^ variable
]

{ #category : #generated }
VBNetForEachStatementNode >> variable: aVBNetProgramNode [
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aVBNetProgramNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]
]
