Class {
	#name : #CPPNestedNameSpecifierNode,
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
CPPNestedNameSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNestedNameSpecifier: self
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> compositeNodeVariables [
	^ #(#templateIdentifiers)
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> compositeTokenVariables [
	^ #(#colonColons #names #templateTokens)
]

{ #category : #'generated-initialize-release' }
CPPNestedNameSpecifierNode >> initialize [
	super initialize.
	colonColons := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	templateIdentifiers := OrderedCollection new: 2.
	templateTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> names [
	^ names
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> otherVariables [
	^ #(#type)
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> type [
	^ type
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> type: anObject [
	type := anObject
]
