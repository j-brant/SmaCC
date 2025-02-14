Class {
	#name : #CSStackallocInitializerNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'leftBrace',
		'initializers',
		'commaTokens',
		'rightBrace'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSStackallocInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStackallocInitializer: self
]

{ #category : #generated }
CSStackallocInitializerNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSStackallocInitializerNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSStackallocInitializerNode >> compositeNodeVariables [
	^ #(#initializers)
]

{ #category : #generated }
CSStackallocInitializerNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens #_leftParens #_rightParens)
]

{ #category : #'generated-initialize-release' }
CSStackallocInitializerNode >> initialize [
	super initialize.
	initializers := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSStackallocInitializerNode >> initializers [
	^ initializers
]

{ #category : #generated }
CSStackallocInitializerNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CSStackallocInitializerNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CSStackallocInitializerNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CSStackallocInitializerNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CSStackallocInitializerNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CSStackallocInitializerNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
