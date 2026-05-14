Class {
	#name : 'KotlinTypeParameterNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'name',
		'colonToken',
		'type',
		'modifiers',
		'annotations'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeParameterNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTypeParameter: self
]

{ #category : 'generated' }
KotlinTypeParameterNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinTypeParameterNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinTypeParameterNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinTypeParameterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeParameterNode >> compositeNodeVariables [
	^ #(#modifiers #annotations)
]

{ #category : 'generated-initialize-release' }
KotlinTypeParameterNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTypeParameterNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinTypeParameterNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinTypeParameterNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinTypeParameterNode >> tokenVariables [
	^ #(#name #colonToken)
]

{ #category : 'generated' }
KotlinTypeParameterNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinTypeParameterNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
