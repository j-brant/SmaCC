Class {
	#name : 'JavaSuperConstructorInvocationNode',
	#superclass : 'JavaStatementNode',
	#instVars : [
		'lt',
		'arguments',
		'commas',
		'gt',
		'superToken',
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
JavaSuperConstructorInvocationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSuperConstructorInvocation: self
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> arguments [

	^ arguments
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> arguments: anOrderedCollection [

	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> commas [
	^ commas
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> compositeNodeVariables [

	^ #( #arguments #expressions )
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> gt [

	^ gt
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> gt: aSmaCCToken [

	gt := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> ignoredTokenVariables [

	^ #( #lt #gt #leftParen #rightParen #semicolon )
]

{ #category : 'generated-initialize-release' }
JavaSuperConstructorInvocationNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> lt [

	^ lt
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> lt: aSmaCCToken [

	lt := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> nodeVariables [
	^ #(#primary)
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> period [
	^ period
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> primary [
	^ primary
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> primary: aJavaExpressionNode [
	self primary notNil
		ifTrue: [ self primary parent: nil ].
	primary := aJavaExpressionNode.
	self primary notNil
		ifTrue: [ self primary parent: self ]
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> superToken [
	^ superToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> superToken: aSmaCCToken [
	superToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSuperConstructorInvocationNode >> tokenVariables [
	^ #(#superToken #period)
]
