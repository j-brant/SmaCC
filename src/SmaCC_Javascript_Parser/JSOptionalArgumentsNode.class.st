Class {
	#name : #JSOptionalArgumentsNode,
	#superclass : #JSOptionalNode,
	#instVars : [
		'left',
		'right',
		'arguments',
		'ellipsises',
		'varArguments',
		'commas',
		'typeArguments'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSOptionalArgumentsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptionalArguments: self
]

{ #category : #generated }
JSOptionalArgumentsNode >> arguments [
	^ arguments
]

{ #category : #generated }
JSOptionalArgumentsNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
JSOptionalArgumentsNode >> commas [
	^ commas
]

{ #category : #generated }
JSOptionalArgumentsNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSOptionalArgumentsNode >> compositeNodeVariables [
	^ #(#arguments #varArguments)
]

{ #category : #generated }
JSOptionalArgumentsNode >> compositeTokenVariables [
	^ #(#ellipsises)
]

{ #category : #generated }
JSOptionalArgumentsNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
JSOptionalArgumentsNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
JSOptionalArgumentsNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSOptionalArgumentsNode >> ignoredTokenVariables [
	^ #(#left #right)
]

{ #category : #'generated-initialize-release' }
JSOptionalArgumentsNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	varArguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSOptionalArgumentsNode >> left [
	^ left
]

{ #category : #generated }
JSOptionalArgumentsNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
JSOptionalArgumentsNode >> nodeVariables [
	^ #(#typeArguments)
]

{ #category : #generated }
JSOptionalArgumentsNode >> right [
	^ right
]

{ #category : #generated }
JSOptionalArgumentsNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
JSOptionalArgumentsNode >> typeArguments [
	^ typeArguments
]

{ #category : #generated }
JSOptionalArgumentsNode >> typeArguments: aJSTypeArgumentsNode [
	self typeArguments notNil
		ifTrue: [ self typeArguments parent: nil ].
	typeArguments := aJSTypeArgumentsNode.
	self typeArguments notNil
		ifTrue: [ self typeArguments parent: self ]
]

{ #category : #generated }
JSOptionalArgumentsNode >> varArguments [
	^ varArguments
]

{ #category : #generated }
JSOptionalArgumentsNode >> varArguments: anOrderedCollection [
	self setParents: self varArguments to: nil.
	varArguments := anOrderedCollection.
	self setParents: self varArguments to: self
]
