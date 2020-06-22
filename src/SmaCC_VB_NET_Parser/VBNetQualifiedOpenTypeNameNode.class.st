Class {
	#name : #VBNetQualifiedOpenTypeNameNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'names',
		'periods',
		'leftParens',
		'ofTokens',
		'rightParens',
		'commas',
		'globalToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedOpenTypeName: self
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> compositeTokenVariables [
	^ #(#names #periods #leftParens #ofTokens #rightParens #commas)
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetQualifiedOpenTypeNameNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	ofTokens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> names [
	^ names
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> ofTokens [
	^ ofTokens
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> ofTokens: anOrderedCollection [
	ofTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> periods [
	^ periods
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
VBNetQualifiedOpenTypeNameNode >> tokenVariables [
	^ #(#globalToken)
]
