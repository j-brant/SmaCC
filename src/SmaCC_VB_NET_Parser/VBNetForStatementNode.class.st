Class {
	#name : #VBNetForStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'forToken',
		'variable',
		'equals',
		'from',
		'toToken',
		'to',
		'statements',
		'nextToken',
		'nexts',
		'commas',
		'stepToken',
		'step'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetForStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForStatement: self
]

{ #category : #generated }
VBNetForStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetForStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetForStatementNode >> compositeNodeVariables [
	^ #(#statements #nexts)
]

{ #category : #generated }
VBNetForStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetForStatementNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetForStatementNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetForStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
VBNetForStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
VBNetForStatementNode >> from [
	^ from
]

{ #category : #generated }
VBNetForStatementNode >> from: aVBNetExpressionNode [
	self from notNil
		ifTrue: [ self from parent: nil ].
	from := aVBNetExpressionNode.
	self from notNil
		ifTrue: [ self from parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetForStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	nexts := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetForStatementNode >> nextToken [
	^ nextToken
]

{ #category : #generated }
VBNetForStatementNode >> nextToken: aSmaCCToken [
	nextToken := aSmaCCToken
]

{ #category : #generated }
VBNetForStatementNode >> nexts [
	^ nexts
]

{ #category : #generated }
VBNetForStatementNode >> nexts: anOrderedCollection [
	self setParents: self nexts to: nil.
	nexts := anOrderedCollection.
	self setParents: self nexts to: self
]

{ #category : #generated }
VBNetForStatementNode >> nodeVariables [
	^ #(#variable #from #to #step)
]

{ #category : #generated }
VBNetForStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetForStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetForStatementNode >> step [
	^ step
]

{ #category : #generated }
VBNetForStatementNode >> step: aVBNetExpressionNode [
	self step notNil
		ifTrue: [ self step parent: nil ].
	step := aVBNetExpressionNode.
	self step notNil
		ifTrue: [ self step parent: self ]
]

{ #category : #generated }
VBNetForStatementNode >> stepToken [
	^ stepToken
]

{ #category : #generated }
VBNetForStatementNode >> stepToken: aSmaCCToken [
	stepToken := aSmaCCToken
]

{ #category : #generated }
VBNetForStatementNode >> to [
	^ to
]

{ #category : #generated }
VBNetForStatementNode >> to: aVBNetExpressionNode [
	self to notNil
		ifTrue: [ self to parent: nil ].
	to := aVBNetExpressionNode.
	self to notNil
		ifTrue: [ self to parent: self ]
]

{ #category : #generated }
VBNetForStatementNode >> toToken [
	^ toToken
]

{ #category : #generated }
VBNetForStatementNode >> toToken: aSmaCCToken [
	toToken := aSmaCCToken
]

{ #category : #generated }
VBNetForStatementNode >> tokenVariables [
	^ #(#forToken #equals #toToken #nextToken #stepToken)
]

{ #category : #generated }
VBNetForStatementNode >> variable [
	^ variable
]

{ #category : #generated }
VBNetForStatementNode >> variable: aVBNetProgramNode [
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aVBNetProgramNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]
]
