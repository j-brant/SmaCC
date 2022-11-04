Class {
	#name : #GraphQLInlineFragmentNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'ellipsisToken',
		'leftBrace',
		'selections',
		'rightBrace',
		'directives',
		'onToken',
		'type'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLInlineFragmentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInlineFragment: self
]

{ #category : #generated }
GraphQLInlineFragmentNode >> compositeNodeVariables [
	^ #(#selections #directives)
]

{ #category : #generated }
GraphQLInlineFragmentNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLInlineFragmentNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLInlineFragmentNode >> ellipsisToken [
	^ ellipsisToken
]

{ #category : #generated }
GraphQLInlineFragmentNode >> ellipsisToken: aSmaCCToken [
	ellipsisToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLInlineFragmentNode >> initialize [
	super initialize.
	selections := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLInlineFragmentNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLInlineFragmentNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInlineFragmentNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
GraphQLInlineFragmentNode >> onToken [
	^ onToken
]

{ #category : #generated }
GraphQLInlineFragmentNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
GraphQLInlineFragmentNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInlineFragmentNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInlineFragmentNode >> selections [
	^ selections
]

{ #category : #generated }
GraphQLInlineFragmentNode >> selections: anOrderedCollection [
	self setParents: self selections to: nil.
	selections := anOrderedCollection.
	self setParents: self selections to: self
]

{ #category : #generated }
GraphQLInlineFragmentNode >> tokenVariables [
	^ #(#ellipsisToken #leftBrace #rightBrace #onToken)
]

{ #category : #generated }
GraphQLInlineFragmentNode >> type [
	^ type
]

{ #category : #generated }
GraphQLInlineFragmentNode >> type: aGraphQLNamedTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aGraphQLNamedTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
