Class {
	#name : 'KotlinSecondaryConstructorNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'modifiers',
		'constructorToken',
		'leftParen',
		'rightParen',
		'parameters',
		'commaTokens',
		'block',
		'colonToken',
		'constructorCall'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitSecondaryConstructor: self
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> block [
	^ block
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> block: aKotlinBlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aKotlinBlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #parameters)
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> constructorCall [
	^ constructorCall
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> constructorCall: aKotlinConstructorDelegationCallNode [
	self constructorCall notNil ifTrue: [ self constructorCall parent: nil ].
	constructorCall := aKotlinConstructorDelegationCallNode.
	self constructorCall notNil ifTrue: [ self constructorCall parent: self ]
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> constructorToken [
	^ constructorToken
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> constructorToken: aSmaCCToken [
	constructorToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinSecondaryConstructorNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> nodeVariables [
	^ #(#block #constructorCall)
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinSecondaryConstructorNode >> tokenVariables [
	^ #(#constructorToken #leftParen #rightParen #colonToken)
]
