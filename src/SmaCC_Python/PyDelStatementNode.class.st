Class {
	#name : #PyDelStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'delToken',
		'exprs',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyDelStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDelStatement: self
]

{ #category : #generated }
PyDelStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyDelStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyDelStatementNode >> compositeNodeVariables [
	^ #(#exprs)
]

{ #category : #generated }
PyDelStatementNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyDelStatementNode >> delToken [
	^ delToken
]

{ #category : #generated }
PyDelStatementNode >> delToken: aSmaCCToken [
	delToken := aSmaCCToken
]

{ #category : #generated }
PyDelStatementNode >> exprs [
	^ exprs
]

{ #category : #generated }
PyDelStatementNode >> exprs: anOrderedCollection [
	self setParents: self exprs to: nil.
	exprs := anOrderedCollection.
	self setParents: self exprs to: self
]

{ #category : #'generated-initialize-release' }
PyDelStatementNode >> initialize [
	super initialize.
	exprs := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyDelStatementNode >> tokenVariables [
	^ #(#delToken #semicolonToken)
]
