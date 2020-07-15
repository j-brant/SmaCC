Class {
	#name : #TeradataWithTableDefinitionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'asToken',
		'leftParens',
		'query',
		'rightParens',
		'values',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataWithTableDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWithTableDefinition: self
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens #commas)
]

{ #category : #'generated-initialize-release' }
TeradataWithTableDefinitionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> name [
	^ name
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> name: aTeradataIdentifierNameNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aTeradataIdentifierNameNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> nodeVariables [
	^ #(#name #query)
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> query [
	^ query
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> query: aTeradataProgramNode [
	self query notNil
		ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil
		ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> tokenVariables [
	^ #(#asToken)
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> values [
	^ values
]

{ #category : #generated }
TeradataWithTableDefinitionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
