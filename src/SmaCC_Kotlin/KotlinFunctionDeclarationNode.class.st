Class {
	#name : 'KotlinFunctionDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'annotations',
		'modifiers',
		'funToken',
		'lt',
		'parameters',
		'commaTokens',
		'gt',
		'name',
		'leftParen',
		'rightParen',
		'colonToken',
		'types',
		'whereToken',
		'constraints',
		'body',
		'dot'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFunctionDeclaration: self
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> body: aKotlinMemberNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinMemberNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #parameters #types #constraints)
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> constraints [
	^ constraints
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> dot [
	^ dot
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> funToken [
	^ funToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> funToken: aSmaCCToken [
	funToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> gt [
	^ gt
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinFunctionDeclarationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	constraints := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> lt [
	^ lt
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> nodeVariables [
	^ #(#body)
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> tokenVariables [
	^ #(#funToken #lt #gt #name #leftParen #rightParen #colonToken #whereToken #dot)
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> types [
	^ types
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> whereToken [
	^ whereToken
]

{ #category : 'generated' }
KotlinFunctionDeclarationNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
