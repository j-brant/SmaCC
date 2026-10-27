Class {
	#name : 'JavaCastExpressionNode',
	#superclass : 'JavaUnaryExpressionNode',
	#instVars : [
		'leftParen',
		'type',
		'rightParen',
		'ampTokens',
		'interfaceTypes'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCastExpression: self
]

{ #category : 'generated' }
JavaCastExpressionNode >> ampTokens [

	^ ampTokens
]

{ #category : 'generated' }
JavaCastExpressionNode >> ampTokens: anOrderedCollection [

	ampTokens := anOrderedCollection
]

{ #category : 'generated' }
JavaCastExpressionNode >> compositeNodeVariables [

	^ #( #interfaceTypes )
]

{ #category : 'generated' }
JavaCastExpressionNode >> compositeTokenVariables [

	^ #( #ampTokens )
]

{ #category : 'generated' }
JavaCastExpressionNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : 'generated-initialize-release' }
JavaCastExpressionNode >> initialize [
	super initialize.
	ampTokens := OrderedCollection new: 2.
	interfaceTypes := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaCastExpressionNode >> interfaceTypes [

	^ interfaceTypes
]

{ #category : 'generated' }
JavaCastExpressionNode >> interfaceTypes: anOrderedCollection [

	self setParents: self interfaceTypes to: nil.
	interfaceTypes := anOrderedCollection.
	self setParents: self interfaceTypes to: self
]

{ #category : 'generated' }
JavaCastExpressionNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
JavaCastExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
JavaCastExpressionNode >> nodeVariables [

	^ #( #type #expression )
]

{ #category : 'generated' }
JavaCastExpressionNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
JavaCastExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JavaCastExpressionNode >> type [
	^ type
]

{ #category : 'generated' }
JavaCastExpressionNode >> type: aJavaTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
