Class {
	#name : 'KotlinGetterNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'modifiers',
		'getToken',
		'leftParen',
		'rightParen',
		'colonToken',
		'type',
		'body'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinGetterNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitGetter: self
]

{ #category : 'generated' }
KotlinGetterNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinGetterNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinGetterNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinGetterNode >> body: aKotlinMemberNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinMemberNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinGetterNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinGetterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinGetterNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : 'generated' }
KotlinGetterNode >> getToken [
	^ getToken
]

{ #category : 'generated' }
KotlinGetterNode >> getToken: aSmaCCToken [
	getToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinGetterNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinGetterNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinGetterNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinGetterNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinGetterNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinGetterNode >> nodeVariables [
	^ #(#type #body)
]

{ #category : 'generated' }
KotlinGetterNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinGetterNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinGetterNode >> tokenVariables [
	^ #(#getToken #leftParen #rightParen #colonToken)
]

{ #category : 'generated' }
KotlinGetterNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinGetterNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
