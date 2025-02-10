Class {
	#name : #CSTupleDesignationNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'designations',
		'commas'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSTupleDesignationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleDesignation: self
]

{ #category : #generated }
CSTupleDesignationNode >> commas [
	^ commas
]

{ #category : #generated }
CSTupleDesignationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSTupleDesignationNode >> compositeNodeVariables [
	^ #(#designations)
]

{ #category : #generated }
CSTupleDesignationNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CSTupleDesignationNode >> designations [
	^ designations
]

{ #category : #generated }
CSTupleDesignationNode >> designations: anOrderedCollection [
	self setParents: self designations to: nil.
	designations := anOrderedCollection.
	self setParents: self designations to: self
]

{ #category : #'generated-initialize-release' }
CSTupleDesignationNode >> initialize [
	super initialize.
	designations := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSTupleDesignationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSTupleDesignationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSTupleDesignationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSTupleDesignationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSTupleDesignationNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
