Class {
	#name : #PyDecoratorNode,
	#superclass : #PyRootNode,
	#instVars : [
		'_Token',
		'dotted_name',
		'lparenToken',
		'arguments',
		'commaTokens',
		'timesTokens',
		'timesTimesToken',
		'rparenToken',
		'nEWLINEToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyDecoratorNode >> _Token [
	^ _Token
]

{ #category : #generated }
PyDecoratorNode >> _Token: aSmaCCToken [
	_Token := aSmaCCToken
]

{ #category : #generated }
PyDecoratorNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDecorator: self
]

{ #category : #generated }
PyDecoratorNode >> arguments [
	^ arguments
]

{ #category : #generated }
PyDecoratorNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
PyDecoratorNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyDecoratorNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyDecoratorNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
PyDecoratorNode >> compositeTokenVariables [
	^ #(#commaTokens #timesTokens)
]

{ #category : #generated }
PyDecoratorNode >> dotted_name [
	^ dotted_name
]

{ #category : #generated }
PyDecoratorNode >> dotted_name: aPyRootNode [
	self dotted_name notNil ifTrue: [ self dotted_name parent: nil ].
	dotted_name := aPyRootNode.
	self dotted_name notNil ifTrue: [ self dotted_name parent: self ]
]

{ #category : #'generated-initialize-release' }
PyDecoratorNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	timesTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyDecoratorNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyDecoratorNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyDecoratorNode >> nEWLINEToken [
	^ nEWLINEToken
]

{ #category : #generated }
PyDecoratorNode >> nEWLINEToken: aSmaCCToken [
	nEWLINEToken := aSmaCCToken
]

{ #category : #generated }
PyDecoratorNode >> nodeVariables [
	^ #(#dotted_name)
]

{ #category : #generated }
PyDecoratorNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyDecoratorNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyDecoratorNode >> timesTimesToken [
	^ timesTimesToken
]

{ #category : #generated }
PyDecoratorNode >> timesTimesToken: aSmaCCToken [
	timesTimesToken := aSmaCCToken
]

{ #category : #generated }
PyDecoratorNode >> timesTokens [
	^ timesTokens
]

{ #category : #generated }
PyDecoratorNode >> timesTokens: anOrderedCollection [
	timesTokens := anOrderedCollection
]

{ #category : #generated }
PyDecoratorNode >> tokenVariables [
	^ #(#_Token #lparenToken #timesTimesToken #rparenToken #nEWLINEToken)
]
