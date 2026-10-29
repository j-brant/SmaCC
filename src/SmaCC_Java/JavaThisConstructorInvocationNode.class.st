Class {
	#name : 'JavaThisConstructorInvocationNode',
	#superclass : 'JavaStatementNode',
	#instVars : [
		'lt',
		'arguments',
		'commas',
		'gt',
		'thisToken',
		'leftParen',
		'rightParen',
		'semicolon',
		'expressions',
		'primary',
		'period'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitThisConstructorInvocation: self
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> arguments [

	^ arguments
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> arguments: anOrderedCollection [

	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> commas [
	^ commas
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> compositeNodeVariables [

	^ #( #arguments #expressions )
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> gt [

	^ gt
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> gt: aSmaCCToken [

	gt := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> ignoredTokenVariables [

	^ #( #lt #gt #leftParen #rightParen #semicolon )
]

{ #category : 'generated-initialize-release' }
JavaThisConstructorInvocationNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> lt [

	^ lt
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> lt: aSmaCCToken [

	lt := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> nodeVariables [
	^ #(#primary)
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> period [
	^ period
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> primary [
	^ primary
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> primary: aJavaExpressionNode [
	self primary notNil
		ifTrue: [ self primary parent: nil ].
	primary := aJavaExpressionNode.
	self primary notNil
		ifTrue: [ self primary parent: self ]
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> thisToken [
	^ thisToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> thisToken: aSmaCCToken [
	thisToken := aSmaCCToken
]

{ #category : 'generated' }
JavaThisConstructorInvocationNode >> tokenVariables [
	^ #(#thisToken #period)
]
