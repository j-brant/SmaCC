Class {
	#name : #TeradataTableNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'names',
		'periods',
		'alias',
		'asToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTable: self
]

{ #category : #generated }
TeradataTableNode >> alias [
	^ alias
]

{ #category : #generated }
TeradataTableNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
TeradataTableNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataTableNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataTableNode >> compositeTokenVariables [
	^ #(#names #periods)
]

{ #category : #'generated-initialize-release' }
TeradataTableNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataTableNode >> names [
	^ names
]

{ #category : #generated }
TeradataTableNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
TeradataTableNode >> periods [
	^ periods
]

{ #category : #generated }
TeradataTableNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
TeradataTableNode >> tokenVariables [
	^ #(#alias #asToken)
]
