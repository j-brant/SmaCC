Class {
	#name : 'KotlinUserTypeNode',
	#superclass : 'KotlinTypeNode',
	#instVars : [
		'segments',
		'dots'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinUserTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitUserType: self
]

{ #category : 'generated' }
KotlinUserTypeNode >> compositeTokenVariables [
	^ #(#dots #leftParens #rightParens)
]

{ #category : 'generated' }
KotlinUserTypeNode >> dots [
	^ dots
]

{ #category : 'generated' }
KotlinUserTypeNode >> dots: anOrderedCollection [
	dots := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
KotlinUserTypeNode >> initialize [
	super initialize.
	segments := OrderedCollection new: 2.
	dots := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinUserTypeNode >> otherVariables [
	^ #(#segments)
]

{ #category : 'generated' }
KotlinUserTypeNode >> segments [
	^ segments
]

{ #category : 'generated' }
KotlinUserTypeNode >> segments: anOrderedCollection [
	self setParent: self segments to: nil.
	segments := anOrderedCollection.
	self setParent: self segments to: self
]
