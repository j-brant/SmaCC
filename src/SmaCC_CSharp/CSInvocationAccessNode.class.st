Class {
	#name : #CSInvocationAccessNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'leftParen',
		'arguments',
		'commaTokens',
		'rightParen'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSInvocationAccessNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInvocationAccess: self
]

{ #category : #generated }
CSInvocationAccessNode >> arguments [
	^ arguments
]

{ #category : #generated }
CSInvocationAccessNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CSInvocationAccessNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSInvocationAccessNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSInvocationAccessNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
CSInvocationAccessNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSInvocationAccessNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSInvocationAccessNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSInvocationAccessNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSInvocationAccessNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSInvocationAccessNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSInvocationAccessNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
