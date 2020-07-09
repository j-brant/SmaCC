Class {
	#name : #TeradataCreateMacroStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'createToken',
		'macroToken',
		'name',
		'leftParens',
		'parameters',
		'commas',
		'rightParens',
		'asToken',
		'statements',
		'semicolons'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCreateMacroStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateMacroStatement: self
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> compositeNodeVariables [
	^ #(#parameters #statements)
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> compositeTokenVariables [
	^ #(#leftParens #commas #rightParens #semicolons)
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> createToken [
	^ createToken
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> createToken: aSmaCCToken [
	createToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataCreateMacroStatementNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> macroToken [
	^ macroToken
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> macroToken: aSmaCCToken [
	macroToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> name [
	^ name
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> name: aTeradataIdentifierNameNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aTeradataIdentifierNameNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> parameters [
	^ parameters
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> statements [
	^ statements
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
TeradataCreateMacroStatementNode >> tokenVariables [
	^ #(#createToken #macroToken #asToken)
]
