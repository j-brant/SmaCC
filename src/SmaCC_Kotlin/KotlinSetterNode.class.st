Class {
	#name : 'KotlinSetterNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'modifiers',
		'setToken',
		'leftParen',
		'parameter',
		'commaToken',
		'rightParen',
		'colonToken',
		'type',
		'body'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinSetterNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitSetter: self
]

{ #category : 'generated' }
KotlinSetterNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinSetterNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinSetterNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinSetterNode >> body: aKotlinMemberNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinMemberNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinSetterNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinSetterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSetterNode >> commaToken [
	^ commaToken
]

{ #category : 'generated' }
KotlinSetterNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSetterNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : 'generated-initialize-release' }
KotlinSetterNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinSetterNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinSetterNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinSetterNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinSetterNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinSetterNode >> nodeVariables [
	^ #(#parameter #type #body)
]

{ #category : 'generated' }
KotlinSetterNode >> parameter [
	^ parameter
]

{ #category : 'generated' }
KotlinSetterNode >> parameter: aKotlinFunctionValueParameterWithOptionalTypeNode [
	self parameter notNil ifTrue: [ self parameter parent: nil ].
	parameter := aKotlinFunctionValueParameterWithOptionalTypeNode.
	self parameter notNil ifTrue: [ self parameter parent: self ]
]

{ #category : 'generated' }
KotlinSetterNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinSetterNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinSetterNode >> setToken [
	^ setToken
]

{ #category : 'generated' }
KotlinSetterNode >> setToken: aSmaCCToken [
	setToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSetterNode >> tokenVariables [
	^ #(#setToken #leftParen #commaToken #rightParen #colonToken)
]

{ #category : 'generated' }
KotlinSetterNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinSetterNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
