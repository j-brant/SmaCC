Class {
	#name : 'KotlinMultiVariableDeclarationNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'leftParen',
		'variables',
		'commaTokens',
		'rightParen',
		'colonToken',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitMultiVariableDeclaration: self
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> compositeNodeVariables [
	^ #(#variables)
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated-initialize-release' }
KotlinMultiVariableDeclarationNode >> initialize [
	super initialize.
	variables := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> tokenVariables [
	^ #(#leftParen #rightParen #colonToken)
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> variables [
	^ variables
]

{ #category : 'generated' }
KotlinMultiVariableDeclarationNode >> variables: anOrderedCollection [
	self setParents: self variables to: nil.
	variables := anOrderedCollection.
	self setParents: self variables to: self
]
