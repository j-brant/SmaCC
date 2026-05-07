Class {
	#name : 'KotlinNullableTypeNode',
	#superclass : 'KotlinTypeNode',
	#instVars : [
		'baseType',
		'questionTokens'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinNullableTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitNullableType: self
]

{ #category : 'generated' }
KotlinNullableTypeNode >> baseType [
	^ baseType
]

{ #category : 'generated' }
KotlinNullableTypeNode >> baseType: aKotlinTypeNode [
	self baseType notNil ifTrue: [ self baseType parent: nil ].
	baseType := aKotlinTypeNode.
	self baseType notNil ifTrue: [ self baseType parent: self ]
]

{ #category : 'generated' }
KotlinNullableTypeNode >> compositeTokenVariables [
	^ #(#questionTokens #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinNullableTypeNode >> initialize [
	super initialize.
	questionTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinNullableTypeNode >> nodeVariables [
	^ #(#baseType)
]

{ #category : 'generated' }
KotlinNullableTypeNode >> questionTokens [
	^ questionTokens
]

{ #category : 'generated' }
KotlinNullableTypeNode >> questionTokens: anOrderedCollection [
	questionTokens := anOrderedCollection
]
