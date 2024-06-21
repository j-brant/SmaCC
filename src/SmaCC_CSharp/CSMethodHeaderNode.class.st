Class {
	#name : #CSMethodHeaderNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'modifiers',
		'returnType',
		'name',
		'leftParen',
		'parameters',
		'commas',
		'rightParen',
		'typeParameters',
		'constraintClauses',
		'_attributes',
		'refToken',
		'readonlyToken',
		'interface',
		'periodToken',
		'leftParenToken',
		'rightParenToken',
		'partialToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSMethodHeaderNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CSMethodHeaderNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CSMethodHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodHeader: self
]

{ #category : #generated }
CSMethodHeaderNode >> commas [
	^ commas
]

{ #category : #generated }
CSMethodHeaderNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSMethodHeaderNode >> compositeNodeVariables [
	^ #(#parameters #constraintClauses #_attributes)
]

{ #category : #generated }
CSMethodHeaderNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
CSMethodHeaderNode >> constraintClauses [
	^ constraintClauses
]

{ #category : #generated }
CSMethodHeaderNode >> constraintClauses: anOrderedCollection [
	self setParents: self constraintClauses to: nil.
	constraintClauses := anOrderedCollection.
	self setParents: self constraintClauses to: self
]

{ #category : #'generated-initialize-release' }
CSMethodHeaderNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	constraintClauses := OrderedCollection new: 2.
	_attributes := OrderedCollection new: 2.
]

{ #category : #generated }
CSMethodHeaderNode >> interface [
	^ interface
]

{ #category : #generated }
CSMethodHeaderNode >> interface: aCSTypeNode [
	self interface notNil
		ifTrue: [ self interface parent: nil ].
	interface := aCSTypeNode.
	self interface notNil
		ifTrue: [ self interface parent: self ]
]

{ #category : #generated }
CSMethodHeaderNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSMethodHeaderNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
CSMethodHeaderNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSMethodHeaderNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSMethodHeaderNode >> name [
	^ name
]

{ #category : #generated }
CSMethodHeaderNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> nodeVariables [
	^ #(#returnType #typeParameters #interface)
]

{ #category : #generated }
CSMethodHeaderNode >> parameters [
	^ parameters
]

{ #category : #generated }
CSMethodHeaderNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CSMethodHeaderNode >> partialToken [
	^ partialToken
]

{ #category : #generated }
CSMethodHeaderNode >> partialToken: aSmaCCToken [
	partialToken := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> periodToken [
	^ periodToken
]

{ #category : #generated }
CSMethodHeaderNode >> periodToken: aSmaCCToken [
	periodToken := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> readonlyToken [
	^ readonlyToken
]

{ #category : #generated }
CSMethodHeaderNode >> readonlyToken: aSmaCCToken [
	readonlyToken := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSMethodHeaderNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> returnType [
	^ returnType
]

{ #category : #generated }
CSMethodHeaderNode >> returnType: aCSTypeNode [
	self returnType notNil
		ifTrue: [ self returnType parent: nil ].
	returnType := aCSTypeNode.
	self returnType notNil
		ifTrue: [ self returnType parent: self ]
]

{ #category : #generated }
CSMethodHeaderNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSMethodHeaderNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
CSMethodHeaderNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
CSMethodHeaderNode >> tokenVariables [
	^ #(#refToken #readonlyToken #name #leftParen #rightParen #periodToken #leftParenToken #rightParenToken #partialToken)
]

{ #category : #generated }
CSMethodHeaderNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
CSMethodHeaderNode >> typeParameters: aCSTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aCSTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
