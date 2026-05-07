Class {
	#name : 'KotlinFunctionTypeParametersNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'leftParen',
		'commaTokens',
		'parameters',
		'rightParen'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFunctionTypeParameters: self
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated-initialize-release' }
KotlinFunctionTypeParametersNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionTypeParametersNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
