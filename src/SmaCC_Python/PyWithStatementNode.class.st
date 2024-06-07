Class {
	#name : #PyWithStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'withToken',
		'commaTokens',
		'withItems',
		'colonToken',
		'statements'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyWithStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitWithStatement: self
]

{ #category : #generated }
PyWithStatementNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyWithStatementNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyWithStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyWithStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyWithStatementNode >> compositeNodeVariables [
	^ #(#withItems #statements)
]

{ #category : #generated }
PyWithStatementNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
PyWithStatementNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
	withItems := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyWithStatementNode >> statements [
	^ statements
]

{ #category : #generated }
PyWithStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyWithStatementNode >> tokenVariables [
	^ #(#withToken #colonToken #semicolonToken)
]

{ #category : #generated }
PyWithStatementNode >> withItems [
	^ withItems
]

{ #category : #generated }
PyWithStatementNode >> withItems: anOrderedCollection [
	self setParents: self withItems to: nil.
	withItems := anOrderedCollection.
	self setParents: self withItems to: self
]

{ #category : #generated }
PyWithStatementNode >> withToken [
	^ withToken
]

{ #category : #generated }
PyWithStatementNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
