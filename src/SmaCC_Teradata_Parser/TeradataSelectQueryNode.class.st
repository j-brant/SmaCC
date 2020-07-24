Class {
	#name : #TeradataSelectQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'selectToken',
		'values',
		'commas',
		'into',
		'wheres',
		'groups',
		'havings',
		'partitions',
		'qualifies',
		'orderBies',
		'fromToken',
		'tables',
		'forToken',
		'cursorToken',
		'count',
		'topToken',
		'top',
		'distinctToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataSelectQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectQuery: self
]

{ #category : #generated }
TeradataSelectQueryNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataSelectQueryNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataSelectQueryNode >> compositeNodeVariables [
	^ #(#values #wheres #groups #havings #partitions #qualifies #orderBies #tables)
]

{ #category : #generated }
TeradataSelectQueryNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataSelectQueryNode >> count [
	^ count
]

{ #category : #generated }
TeradataSelectQueryNode >> count: aSmaCCToken [
	count := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> cursorToken [
	^ cursorToken
]

{ #category : #generated }
TeradataSelectQueryNode >> cursorToken: aSmaCCToken [
	cursorToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> distinctToken [
	^ distinctToken
]

{ #category : #generated }
TeradataSelectQueryNode >> distinctToken: aSmaCCToken [
	distinctToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataSelectQueryNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataSelectQueryNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> groups [
	^ groups
]

{ #category : #generated }
TeradataSelectQueryNode >> groups: anOrderedCollection [
	self setParents: self groups to: nil.
	groups := anOrderedCollection.
	self setParents: self groups to: self
]

{ #category : #generated }
TeradataSelectQueryNode >> havings [
	^ havings
]

{ #category : #generated }
TeradataSelectQueryNode >> havings: anOrderedCollection [
	self setParents: self havings to: nil.
	havings := anOrderedCollection.
	self setParents: self havings to: self
]

{ #category : #'generated-initialize-release' }
TeradataSelectQueryNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	wheres := OrderedCollection new: 2.
	groups := OrderedCollection new: 2.
	havings := OrderedCollection new: 2.
	partitions := OrderedCollection new: 2.
	qualifies := OrderedCollection new: 2.
	orderBies := OrderedCollection new: 2.
	tables := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataSelectQueryNode >> into [
	^ into
]

{ #category : #generated }
TeradataSelectQueryNode >> into: aTeradataIntoExpressionNode [
	self into notNil
		ifTrue: [ self into parent: nil ].
	into := aTeradataIntoExpressionNode.
	self into notNil
		ifTrue: [ self into parent: self ]
]

{ #category : #generated }
TeradataSelectQueryNode >> nodeVariables [
	^ #(#into)
]

{ #category : #generated }
TeradataSelectQueryNode >> orderBies [
	^ orderBies
]

{ #category : #generated }
TeradataSelectQueryNode >> orderBies: anOrderedCollection [
	self setParents: self orderBies to: nil.
	orderBies := anOrderedCollection.
	self setParents: self orderBies to: self
]

{ #category : #generated }
TeradataSelectQueryNode >> partitions [
	^ partitions
]

{ #category : #generated }
TeradataSelectQueryNode >> partitions: anOrderedCollection [
	self setParents: self partitions to: nil.
	partitions := anOrderedCollection.
	self setParents: self partitions to: self
]

{ #category : #generated }
TeradataSelectQueryNode >> qualifies [
	^ qualifies
]

{ #category : #generated }
TeradataSelectQueryNode >> qualifies: anOrderedCollection [
	self setParents: self qualifies to: nil.
	qualifies := anOrderedCollection.
	self setParents: self qualifies to: self
]

{ #category : #generated }
TeradataSelectQueryNode >> selectToken [
	^ selectToken
]

{ #category : #generated }
TeradataSelectQueryNode >> selectToken: aSmaCCToken [
	selectToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> tables [
	^ tables
]

{ #category : #generated }
TeradataSelectQueryNode >> tables: anOrderedCollection [
	self setParents: self tables to: nil.
	tables := anOrderedCollection.
	self setParents: self tables to: self
]

{ #category : #generated }
TeradataSelectQueryNode >> tokenVariables [
	^ #(#selectToken #fromToken #forToken #cursorToken #count #topToken #top #distinctToken)
]

{ #category : #generated }
TeradataSelectQueryNode >> top [
	^ top
]

{ #category : #generated }
TeradataSelectQueryNode >> top: aSmaCCToken [
	top := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> topToken [
	^ topToken
]

{ #category : #generated }
TeradataSelectQueryNode >> topToken: aSmaCCToken [
	topToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> values [
	^ values
]

{ #category : #generated }
TeradataSelectQueryNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
TeradataSelectQueryNode >> wheres [
	^ wheres
]

{ #category : #generated }
TeradataSelectQueryNode >> wheres: anOrderedCollection [
	self setParents: self wheres to: nil.
	wheres := anOrderedCollection.
	self setParents: self wheres to: self
]
