Class {
	#name : #PyRaiseStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'raiseToken',
		'args',
		'fromToken',
		'from',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyRaiseStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitRaiseStatement: self
]

{ #category : #generated }
PyRaiseStatementNode >> args [
	^ args
]

{ #category : #generated }
PyRaiseStatementNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PyRaiseStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyRaiseStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyRaiseStatementNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
PyRaiseStatementNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyRaiseStatementNode >> from [
	^ from
]

{ #category : #generated }
PyRaiseStatementNode >> from: aPyExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aPyExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
PyRaiseStatementNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
PyRaiseStatementNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyRaiseStatementNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyRaiseStatementNode >> nodeVariables [
	^ #(#from)
]

{ #category : #generated }
PyRaiseStatementNode >> raiseToken [
	^ raiseToken
]

{ #category : #generated }
PyRaiseStatementNode >> raiseToken: aSmaCCToken [
	raiseToken := aSmaCCToken
]

{ #category : #generated }
PyRaiseStatementNode >> tokenVariables [
	^ #(#raiseToken #fromToken #semicolonToken)
]
