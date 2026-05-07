Class {
	#name : 'KotlinValueArgumentsNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'leftParen',
		'rightParen',
		'args',
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
KotlinValueArgumentsNode >> args [
	^ args
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
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
	^ #(#args)
]

{ #category : 'generated' }
KotlinValueArgumentsNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated-initialize-release' }
KotlinValueArgumentsNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
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
