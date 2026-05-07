Class {
	#name : 'KotlinIdentifierNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'names',
		'dots'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinIdentifierNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitIdentifier: self
]

{ #category : 'generated' }
KotlinIdentifierNode >> compositeTokenVariables [
	^ #(#names #dots)
]

{ #category : 'generated' }
KotlinIdentifierNode >> dots [
	^ dots
]

{ #category : 'generated' }
KotlinIdentifierNode >> dots: anOrderedCollection [
	dots := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
KotlinIdentifierNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	dots := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinIdentifierNode >> names [
	^ names
]

{ #category : 'generated' }
KotlinIdentifierNode >> names: anOrderedCollection [
	names := anOrderedCollection
]
