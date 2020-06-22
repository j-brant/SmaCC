Class {
	#name : #VBNetQualifiedTypeNameNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'names',
		'periods',
		'leftParens',
		'ofTokens',
		'rightParens',
		'types',
		'commas',
		'globalToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetQualifiedTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedTypeName: self
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> compositeTokenVariables [
	^ #(#names #periods #leftParens #ofTokens #rightParens #commas)
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetQualifiedTypeNameNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	ofTokens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> names [
	^ names
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> ofTokens [
	^ ofTokens
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> ofTokens: anOrderedCollection [
	ofTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> periods [
	^ periods
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> tokenVariables [
	^ #(#globalToken)
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> types [
	^ types
]

{ #category : #generated }
VBNetQualifiedTypeNameNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
