Class {
	#name : #TeradataExecuteStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'executeToken',
		'name',
		'leftParen',
		'values',
		'commas',
		'rightParen'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExecuteStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecuteStatement: self
]

{ #category : #generated }
TeradataExecuteStatementNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataExecuteStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataExecuteStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataExecuteStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataExecuteStatementNode >> executeToken [
	^ executeToken
]

{ #category : #generated }
TeradataExecuteStatementNode >> executeToken: aSmaCCToken [
	executeToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataExecuteStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataExecuteStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataExecuteStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataExecuteStatementNode >> name [
	^ name
]

{ #category : #generated }
TeradataExecuteStatementNode >> name: aTeradataIdentifierNameNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aTeradataIdentifierNameNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
TeradataExecuteStatementNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
TeradataExecuteStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataExecuteStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataExecuteStatementNode >> tokenVariables [
	^ #(#executeToken #leftParen #rightParen)
]

{ #category : #generated }
TeradataExecuteStatementNode >> values [
	^ values
]

{ #category : #generated }
TeradataExecuteStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
