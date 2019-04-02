Class {
	#name : #CPPQualifiedIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'colonColons',
		'type',
		'names',
		'templateIdentifiers',
		'templateTokens'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPQualifiedIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedIdentifier: self
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> compositeNodeVariables [
	^ #(#templateIdentifiers)
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> compositeTokenVariables [
	^ #(#colonColons #names #templateTokens)
]

{ #category : #'generated-initialize-release' }
CPPQualifiedIdentifierNode >> initialize [
	super initialize.
	colonColons := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	templateIdentifiers := OrderedCollection new: 2.
	templateTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> names [
	^ names
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> otherVariables [
	^ #(#type)
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> type [
	^ type
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> type: anObject [
	type := anObject
]
