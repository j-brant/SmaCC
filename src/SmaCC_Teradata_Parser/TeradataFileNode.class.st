Class {
	#name : #TeradataFileNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'statements',
		'semicolons'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
TeradataFileNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
TeradataFileNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #'generated-initialize-release' }
TeradataFileNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataFileNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
TeradataFileNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
TeradataFileNode >> statements [
	^ statements
]

{ #category : #generated }
TeradataFileNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
