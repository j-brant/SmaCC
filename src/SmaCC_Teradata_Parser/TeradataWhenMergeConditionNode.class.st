Class {
	#name : #TeradataWhenMergeConditionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'whenToken',
		'matchedToken',
		'thenToken',
		'updateToken',
		'setToken',
		'setExpressions',
		'commas',
		'notToken',
		'insertToken',
		'leftParens',
		'values',
		'rightParens',
		'valuesToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataWhenMergeConditionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhenMergeCondition: self
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> compositeNodeVariables [
	^ #(#setExpressions #values)
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataWhenMergeConditionNode >> initialize [
	super initialize.
	setExpressions := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> insertToken [
	^ insertToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> insertToken: aSmaCCToken [
	insertToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> matchedToken [
	^ matchedToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> matchedToken: aSmaCCToken [
	matchedToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> setExpressions [
	^ setExpressions
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> setExpressions: anOrderedCollection [
	self setParents: self setExpressions to: nil.
	setExpressions := anOrderedCollection.
	self setParents: self setExpressions to: self
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> setToken [
	^ setToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> setToken: aSmaCCToken [
	setToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> tokenVariables [
	^ #(#whenToken #matchedToken #thenToken #updateToken #setToken #notToken #insertToken #valuesToken)
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> updateToken [
	^ updateToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> updateToken: aSmaCCToken [
	updateToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> values [
	^ values
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> valuesToken [
	^ valuesToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> valuesToken: aSmaCCToken [
	valuesToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> whenToken [
	^ whenToken
]

{ #category : #generated }
TeradataWhenMergeConditionNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
