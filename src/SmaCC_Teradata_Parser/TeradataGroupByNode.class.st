Class {
	#name : #TeradataGroupByNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'groupToken',
		'byToken',
		'values',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataGroupByNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGroupBy: self
]

{ #category : #generated }
TeradataGroupByNode >> byToken [
	^ byToken
]

{ #category : #generated }
TeradataGroupByNode >> byToken: aSmaCCToken [
	byToken := aSmaCCToken
]

{ #category : #generated }
TeradataGroupByNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataGroupByNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataGroupByNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataGroupByNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataGroupByNode >> groupToken [
	^ groupToken
]

{ #category : #generated }
TeradataGroupByNode >> groupToken: aSmaCCToken [
	groupToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataGroupByNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataGroupByNode >> tokenVariables [
	^ #(#groupToken #byToken)
]

{ #category : #generated }
TeradataGroupByNode >> values [
	^ values
]

{ #category : #generated }
TeradataGroupByNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
