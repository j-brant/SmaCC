Class {
	#name : #TeradataTypeNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'names',
		'options',
		'leftParen',
		'precision',
		'rightParen',
		'comma',
		'scale'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]

{ #category : #generated }
TeradataTypeNode >> comma [
	^ comma
]

{ #category : #generated }
TeradataTypeNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
TeradataTypeNode >> compositeTokenVariables [
	^ #(#names)
]

{ #category : #'generated-initialize-release' }
TeradataTypeNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> names [
	^ names
]

{ #category : #generated }
TeradataTypeNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
TeradataTypeNode >> options [
	^ options
]

{ #category : #generated }
TeradataTypeNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
TeradataTypeNode >> precision [
	^ precision
]

{ #category : #generated }
TeradataTypeNode >> precision: aSmaCCToken [
	precision := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> scale [
	^ scale
]

{ #category : #generated }
TeradataTypeNode >> scale: aSmaCCToken [
	scale := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> tokenVariables [
	^ #(#leftParen #precision #rightParen #comma #scale)
]
