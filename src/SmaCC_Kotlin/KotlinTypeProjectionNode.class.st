Class {
	#name : 'KotlinTypeProjectionNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'type',
		'modifiers',
		'annotations',
		'starToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeProjectionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTypeProjection: self
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> compositeNodeVariables [
	^ #(#modifiers #annotations)
]

{ #category : 'generated-initialize-release' }
KotlinTypeProjectionNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> starToken [
	^ starToken
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> starToken: aSmaCCToken [
	starToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> tokenVariables [
	^ #(#starToken)
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinTypeProjectionNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
