Class {
	#name : #PyAssertStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'assertToken',
		'values',
		'commaToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAssertStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAssertStatement: self
]

{ #category : #generated }
PyAssertStatementNode >> assertToken [
	^ assertToken
]

{ #category : #generated }
PyAssertStatementNode >> assertToken: aSmaCCToken [
	assertToken := aSmaCCToken
]

{ #category : #generated }
PyAssertStatementNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
PyAssertStatementNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
PyAssertStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #'generated-initialize-release' }
PyAssertStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PyAssertStatementNode >> tokenVariables [
	^ #(#assertToken #commaToken #semicolonToken)
]

{ #category : #generated }
PyAssertStatementNode >> values [
	^ values
]

{ #category : #generated }
PyAssertStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
