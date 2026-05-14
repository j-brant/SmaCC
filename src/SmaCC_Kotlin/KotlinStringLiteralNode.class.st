Class {
	#name : 'KotlinStringLiteralNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'parts',
		'expressions'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinStringLiteralNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitStringLiteral: self
]

{ #category : 'generated' }
KotlinStringLiteralNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : 'generated' }
KotlinStringLiteralNode >> compositeTokenVariables [
	^ #(#parts #leftParens #rightParens)
]

{ #category : 'generated' }
KotlinStringLiteralNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
KotlinStringLiteralNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated-initialize-release' }
KotlinStringLiteralNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinStringLiteralNode >> parts [
	^ parts
]

{ #category : 'generated' }
KotlinStringLiteralNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
