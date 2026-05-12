Class {
	#name : 'KotlinValueArgumentsNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'leftParen',
		'rightParen',
		'arguments',
		'commaTokens'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinValueArgumentsNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitValueArguments: self
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated-initialize-release' }
KotlinValueArgumentsNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
