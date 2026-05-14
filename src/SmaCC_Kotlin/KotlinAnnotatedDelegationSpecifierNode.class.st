Class {
	#name : 'KotlinAnnotatedDelegationSpecifierNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'annotations',
		'specifier'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnnotatedDelegationSpecifier: self
]

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated-initialize-release' }
KotlinAnnotatedDelegationSpecifierNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> nodeVariables [
	^ #(#specifier)
]

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> specifier [
	^ specifier
]

{ #category : 'generated' }
KotlinAnnotatedDelegationSpecifierNode >> specifier: aKotlinNodeNode [
	self specifier notNil ifTrue: [ self specifier parent: nil ].
	specifier := aKotlinNodeNode.
	self specifier notNil ifTrue: [ self specifier parent: self ]
]
