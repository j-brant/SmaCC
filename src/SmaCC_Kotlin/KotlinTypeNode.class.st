Class {
	#name : 'KotlinTypeNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'leftParens',
		'rightParens',
		'annotations',
		'modifiers'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitType: self
]

{ #category : 'generated' }
KotlinTypeNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinTypeNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinTypeNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : 'generated' }
KotlinTypeNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinTypeNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTypeNode >> leftParens [
	^ leftParens
]

{ #category : 'generated' }
KotlinTypeNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : 'generated' }
KotlinTypeNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinTypeNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinTypeNode >> rightParens [
	^ rightParens
]

{ #category : 'generated' }
KotlinTypeNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
