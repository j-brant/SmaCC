Class {
	#name : #TeradataUpdateQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'updateToken',
		'tables',
		'setToken',
		'setExpressions',
		'commas',
		'elseToken',
		'else',
		'whereToken',
		'where',
		'fromToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUpdateQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUpdateQuery: self
]

{ #category : #generated }
TeradataUpdateQueryNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataUpdateQueryNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataUpdateQueryNode >> compositeNodeVariables [
	^ #(#tables #setExpressions)
]

{ #category : #generated }
TeradataUpdateQueryNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataUpdateQueryNode >> else [
	^ else
]

{ #category : #generated }
TeradataUpdateQueryNode >> else: aTeradataProgramNode [
	self else notNil
		ifTrue: [ self else parent: nil ].
	else := aTeradataProgramNode.
	self else notNil
		ifTrue: [ self else parent: self ]
]

{ #category : #generated }
TeradataUpdateQueryNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataUpdateQueryNode >> initialize [
	super initialize.
	tables := OrderedCollection new: 2.
	setExpressions := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataUpdateQueryNode >> nodeVariables [
	^ #(#else #where)
]

{ #category : #generated }
TeradataUpdateQueryNode >> setExpressions [
	^ setExpressions
]

{ #category : #generated }
TeradataUpdateQueryNode >> setExpressions: anOrderedCollection [
	self setParents: self setExpressions to: nil.
	setExpressions := anOrderedCollection.
	self setParents: self setExpressions to: self
]

{ #category : #generated }
TeradataUpdateQueryNode >> setToken [
	^ setToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> setToken: aSmaCCToken [
	setToken := aSmaCCToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> tables [
	^ tables
]

{ #category : #generated }
TeradataUpdateQueryNode >> tables: anOrderedCollection [
	self setParents: self tables to: nil.
	tables := anOrderedCollection.
	self setParents: self tables to: self
]

{ #category : #generated }
TeradataUpdateQueryNode >> tokenVariables [
	^ #(#updateToken #setToken #elseToken #whereToken #fromToken)
]

{ #category : #generated }
TeradataUpdateQueryNode >> updateToken [
	^ updateToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> updateToken: aSmaCCToken [
	updateToken := aSmaCCToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> where [
	^ where
]

{ #category : #generated }
TeradataUpdateQueryNode >> where: aTeradataExpressionNode [
	self where notNil
		ifTrue: [ self where parent: nil ].
	where := aTeradataExpressionNode.
	self where notNil
		ifTrue: [ self where parent: self ]
]

{ #category : #generated }
TeradataUpdateQueryNode >> whereToken [
	^ whereToken
]

{ #category : #generated }
TeradataUpdateQueryNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
