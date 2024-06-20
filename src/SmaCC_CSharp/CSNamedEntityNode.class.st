Class {
	#name : #CSNamedEntityNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'target',
		'periodTokens',
		'identifierTokens',
		'typeArgumentses'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSNamedEntityNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNamedEntity: self
]

{ #category : #generated }
CSNamedEntityNode >> compositeNodeVariables [
	^ #(#typeArgumentses)
]

{ #category : #generated }
CSNamedEntityNode >> compositeTokenVariables [
	^ #(#periodTokens #identifierTokens)
]

{ #category : #generated }
CSNamedEntityNode >> identifierTokens [
	^ identifierTokens
]

{ #category : #generated }
CSNamedEntityNode >> identifierTokens: anOrderedCollection [
	identifierTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CSNamedEntityNode >> initialize [
	super initialize.
	periodTokens := OrderedCollection new: 2.
	identifierTokens := OrderedCollection new: 2.
	typeArgumentses := OrderedCollection new: 2.
]

{ #category : #generated }
CSNamedEntityNode >> nodeVariables [
	^ #(#target)
]

{ #category : #generated }
CSNamedEntityNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
CSNamedEntityNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]

{ #category : #generated }
CSNamedEntityNode >> target [
	^ target
]

{ #category : #generated }
CSNamedEntityNode >> target: aCSExpressionNode [
	self target notNil
		ifTrue: [ self target parent: nil ].
	target := aCSExpressionNode.
	self target notNil
		ifTrue: [ self target parent: self ]
]

{ #category : #generated }
CSNamedEntityNode >> typeArgumentses [
	^ typeArgumentses
]

{ #category : #generated }
CSNamedEntityNode >> typeArgumentses: anOrderedCollection [
	self setParents: self typeArgumentses to: nil.
	typeArgumentses := anOrderedCollection.
	self setParents: self typeArgumentses to: self
]
