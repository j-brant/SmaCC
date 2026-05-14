Class {
	#name : 'KotlinTypeArgumentsNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'lt',
		'projections',
		'commaTokens',
		'gt'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeArgumentsNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTypeArguments: self
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> compositeNodeVariables [
	^ #(#projections)
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> gt [
	^ gt
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinTypeArgumentsNode >> initialize [
	super initialize.
	projections := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> lt [
	^ lt
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> projections [
	^ projections
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> projections: anOrderedCollection [
	self setParents: self projections to: nil.
	projections := anOrderedCollection.
	self setParents: self projections to: self
]

{ #category : 'generated' }
KotlinTypeArgumentsNode >> tokenVariables [
	^ #(#lt #gt)
]
