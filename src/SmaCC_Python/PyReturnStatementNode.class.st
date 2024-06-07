Class {
	#name : #PyReturnStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'returnToken',
		'expressions',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyReturnStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitReturnStatement: self
]

{ #category : #generated }
PyReturnStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyReturnStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyReturnStatementNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyReturnStatementNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyReturnStatementNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyReturnStatementNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyReturnStatementNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyReturnStatementNode >> returnToken [
	^ returnToken
]

{ #category : #generated }
PyReturnStatementNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : #generated }
PyReturnStatementNode >> tokenVariables [
	^ #(#returnToken #semicolonToken)
]
