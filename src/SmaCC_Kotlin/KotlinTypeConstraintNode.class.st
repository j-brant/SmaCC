Class {
	#name : 'KotlinTypeConstraintNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'name',
		'colonToken',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeConstraintNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTypeConstraint: self
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated-initialize-release' }
KotlinTypeConstraintNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> tokenVariables [
	^ #(#name #colonToken)
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinTypeConstraintNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
