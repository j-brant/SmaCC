Class {
	#name : 'KotlinAnonymousFunctionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'funToken',
		'parameters',
		'commaTokens',
		'colonToken',
		'types',
		'whereToken',
		'constraints',
		'body',
		'dot',
		'suspendToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnonymousFunction: self
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> body: aKotlinMemberNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinMemberNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> compositeNodeVariables [
	^ #(#parameters #types #constraints)
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> compositeTokenVariables [
	^ #(#commaTokens #leftParens #rightParens)
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> constraints [
	^ constraints
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> dot [
	^ dot
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> funToken [
	^ funToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> funToken: aSmaCCToken [
	funToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinAnonymousFunctionNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	constraints := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> nodeVariables [
	^ #(#body)
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> suspendToken [
	^ suspendToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> suspendToken: aSmaCCToken [
	suspendToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> tokenVariables [
	^ #(#funToken #colonToken #whereToken #dot #suspendToken)
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> types [
	^ types
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> whereToken [
	^ whereToken
]

{ #category : 'generated' }
KotlinAnonymousFunctionNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
