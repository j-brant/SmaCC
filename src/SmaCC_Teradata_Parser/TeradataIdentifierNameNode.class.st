Class {
	#name : #TeradataIdentifierNameNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'names',
		'periods'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIdentifierNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifierName: self
]

{ #category : #generated }
TeradataIdentifierNameNode >> compositeTokenVariables [
	^ #(#names #periods)
]

{ #category : #'generated-initialize-release' }
TeradataIdentifierNameNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataIdentifierNameNode >> names [
	^ names
]

{ #category : #generated }
TeradataIdentifierNameNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
TeradataIdentifierNameNode >> periods [
	^ periods
]

{ #category : #generated }
TeradataIdentifierNameNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]
