Class {
	#name : #TeradataCreateViewNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'createToken',
		'viewToken',
		'view',
		'leftParen',
		'columns',
		'commas',
		'rightParen',
		'asToken',
		'query',
		'lockingToken',
		'rowToken',
		'forToken',
		'accessToken',
		'modeToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCreateViewNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateView: self
]

{ #category : #generated }
TeradataCreateViewNode >> accessToken [
	^ accessToken
]

{ #category : #generated }
TeradataCreateViewNode >> accessToken: aSmaCCToken [
	accessToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataCreateViewNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> columns [
	^ columns
]

{ #category : #generated }
TeradataCreateViewNode >> columns: anOrderedCollection [
	columns := anOrderedCollection
]

{ #category : #generated }
TeradataCreateViewNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataCreateViewNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataCreateViewNode >> compositeTokenVariables [
	^ #(#columns #commas)
]

{ #category : #generated }
TeradataCreateViewNode >> createToken [
	^ createToken
]

{ #category : #generated }
TeradataCreateViewNode >> createToken: aSmaCCToken [
	createToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataCreateViewNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataCreateViewNode >> initialize [
	super initialize.
	columns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataCreateViewNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataCreateViewNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> lockingToken [
	^ lockingToken
]

{ #category : #generated }
TeradataCreateViewNode >> lockingToken: aSmaCCToken [
	lockingToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> modeToken [
	^ modeToken
]

{ #category : #generated }
TeradataCreateViewNode >> modeToken: aSmaCCToken [
	modeToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> nodeVariables [
	^ #(#view #query)
]

{ #category : #generated }
TeradataCreateViewNode >> query [
	^ query
]

{ #category : #generated }
TeradataCreateViewNode >> query: aTeradataProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataCreateViewNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataCreateViewNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> rowToken [
	^ rowToken
]

{ #category : #generated }
TeradataCreateViewNode >> rowToken: aSmaCCToken [
	rowToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateViewNode >> tokenVariables [
	^ #(#createToken #viewToken #leftParen #rightParen #asToken #lockingToken #rowToken #forToken #accessToken #modeToken)
]

{ #category : #generated }
TeradataCreateViewNode >> view [
	^ view
]

{ #category : #generated }
TeradataCreateViewNode >> view: aTeradataTableNode [
	self view notNil ifTrue: [ self view parent: nil ].
	view := aTeradataTableNode.
	self view notNil ifTrue: [ self view parent: self ]
]

{ #category : #generated }
TeradataCreateViewNode >> viewToken [
	^ viewToken
]

{ #category : #generated }
TeradataCreateViewNode >> viewToken: aSmaCCToken [
	viewToken := aSmaCCToken
]
