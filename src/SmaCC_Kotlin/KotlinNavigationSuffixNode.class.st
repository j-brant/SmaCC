Class {
	#name : 'KotlinNavigationSuffixNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'operators',
		'member'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinNavigationSuffixNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitNavigationSuffix: self
]

{ #category : 'generated' }
KotlinNavigationSuffixNode >> compositeTokenVariables [
	^ #(#operators)
]

{ #category : 'generated-initialize-release' }
KotlinNavigationSuffixNode >> initialize [
	super initialize.
	operators := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinNavigationSuffixNode >> member [
	^ member
]

{ #category : 'generated' }
KotlinNavigationSuffixNode >> member: anObject [
	self setParent: self member to: nil.
	member := anObject.
	self setParent: self member to: self
]

{ #category : 'generated' }
KotlinNavigationSuffixNode >> operators [
	^ operators
]

{ #category : 'generated' }
KotlinNavigationSuffixNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : 'generated' }
KotlinNavigationSuffixNode >> otherVariables [
	^ #(#member)
]
