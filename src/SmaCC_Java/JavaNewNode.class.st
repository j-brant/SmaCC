Class {
	#name : 'JavaNewNode',
	#superclass : 'JavaExpressionNode',
	#instVars : [
		'newToken',
		'creationTypeArgLeft',
		'creationTypeArguments',
		'creationTypeArgCommas',
		'creationTypeArgRight',
		'type',
		'leftParen',
		'rightParen',
		'expressions',
		'commas',
		'primary',
		'period',
		'name',
		'typeArgLeft',
		'arguments',
		'typeArgRight'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaNewNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNew: self
]

{ #category : 'generated' }
JavaNewNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
JavaNewNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
JavaNewNode >> commas [
	^ commas
]

{ #category : 'generated' }
JavaNewNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaNewNode >> compositeNodeVariables [

	^ #( #creationTypeArguments #expressions #arguments )
]

{ #category : 'generated' }
JavaNewNode >> compositeTokenVariables [

	^ #( #creationTypeArgCommas )
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArgCommas [

	^ creationTypeArgCommas
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArgCommas: anOrderedCollection [

	creationTypeArgCommas := anOrderedCollection
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArgLeft [

	^ creationTypeArgLeft
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArgLeft: aSmaCCToken [

	creationTypeArgLeft := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArgRight [

	^ creationTypeArgRight
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArgRight: aSmaCCToken [

	creationTypeArgRight := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArguments [

	^ creationTypeArguments
]

{ #category : 'generated' }
JavaNewNode >> creationTypeArguments: anOrderedCollection [

	self setParents: self creationTypeArguments to: nil.
	creationTypeArguments := anOrderedCollection.
	self setParents: self creationTypeArguments to: self
]

{ #category : 'generated' }
JavaNewNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
JavaNewNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'deprecated' }
JavaNewNode >> gt [

	self deprecated: 'Use creationTypeArgRight instead'.
	^ creationTypeArgRight
]

{ #category : 'generated' }
JavaNewNode >> ignoredCompositeTokenVariables [
	^ #(#commas #_leftParens #_rightParens)
]

{ #category : 'generated' }
JavaNewNode >> ignoredTokenVariables [

	^ #( #leftParen #rightParen )
]

{ #category : 'generated-initialize-release' }
JavaNewNode >> initialize [
	super initialize.
	creationTypeArguments := OrderedCollection new: 2.
	creationTypeArgCommas := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaNewNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
JavaNewNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'deprecated' }
JavaNewNode >> lt [

	self deprecated: 'Use creationTypeArgLeft instead'.
	^ creationTypeArgLeft
]

{ #category : 'generated' }
JavaNewNode >> name [
	^ name
]

{ #category : 'generated' }
JavaNewNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> newToken [
	^ newToken
]

{ #category : 'generated' }
JavaNewNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> nodeVariables [
	^ #(#type #primary)
]

{ #category : 'generated' }
JavaNewNode >> period [
	^ period
]

{ #category : 'generated' }
JavaNewNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> primary [
	^ primary
]

{ #category : 'generated' }
JavaNewNode >> primary: aJavaExpressionNode [
	self primary notNil
		ifTrue: [ self primary parent: nil ].
	primary := aJavaExpressionNode.
	self primary notNil
		ifTrue: [ self primary parent: self ]
]

{ #category : 'generated' }
JavaNewNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
JavaNewNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> tokenVariables [

	^ #( #newToken #creationTypeArgLeft #creationTypeArgRight #period #name #typeArgLeft #typeArgRight )
]

{ #category : 'generated' }
JavaNewNode >> type [
	^ type
]

{ #category : 'generated' }
JavaNewNode >> type: aJavaClassTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJavaClassTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JavaNewNode >> typeArgLeft [
	^ typeArgLeft
]

{ #category : 'generated' }
JavaNewNode >> typeArgLeft: aSmaCCToken [
	typeArgLeft := aSmaCCToken
]

{ #category : 'generated' }
JavaNewNode >> typeArgRight [
	^ typeArgRight
]

{ #category : 'generated' }
JavaNewNode >> typeArgRight: aSmaCCToken [
	typeArgRight := aSmaCCToken
]
