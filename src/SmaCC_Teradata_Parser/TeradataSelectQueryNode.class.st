Class {
	#name : #TeradataSelectQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'selectToken',
		'values',
		'commas',
		'into',
		'partition',
		'qualify',
		'orderBy',
		'group',
		'having',
		'whereToken',
		'where',
		'fromToken',
		'tables',
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
	^ #(#values #tables)
]

{ #category : #generated }
TeradataSelectQueryNode >> compositeTokenVariables [
	^ #(#commas)
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
TeradataSelectQueryNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataSelectQueryNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectQueryNode >> group [
	^ group
]

{ #category : #generated }
TeradataSelectQueryNode >> group: aTeradataGroupByNode [
	self group notNil
		ifTrue: [ self group parent: nil ].
	group := aTeradataGroupByNode.
	self group notNil
		ifTrue: [ self group parent: self ]
]

{ #category : #generated }
TeradataSelectQueryNode >> having [
	^ having
]

{ #category : #generated }
TeradataSelectQueryNode >> having: aTeradataHavingNode [
	self having notNil
		ifTrue: [ self having parent: nil ].
	having := aTeradataHavingNode.
	self having notNil
		ifTrue: [ self having parent: self ]
]

{ #category : #'generated-initialize-release' }
TeradataSelectQueryNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
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
	^ #(#into #partition #qualify #orderBy #group #having #where)
]

{ #category : #generated }
TeradataSelectQueryNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataSelectQueryNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil
		ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil
		ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataSelectQueryNode >> partition [
	^ partition
]

{ #category : #generated }
TeradataSelectQueryNode >> partition: aTeradataPartitionByExpressionNode [
	self partition notNil
		ifTrue: [ self partition parent: nil ].
	partition := aTeradataPartitionByExpressionNode.
	self partition notNil
		ifTrue: [ self partition parent: self ]
]

{ #category : #generated }
TeradataSelectQueryNode >> qualify [
	^ qualify
]

{ #category : #generated }
TeradataSelectQueryNode >> qualify: aTeradataQualifyExpressionNode [
	self qualify notNil
		ifTrue: [ self qualify parent: nil ].
	qualify := aTeradataQualifyExpressionNode.
	self qualify notNil
		ifTrue: [ self qualify parent: self ]
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
	^ #(#selectToken #whereToken #fromToken #topToken #top #distinctToken)
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
TeradataSelectQueryNode >> where [
	^ where
]

{ #category : #generated }
TeradataSelectQueryNode >> where: aTeradataExpressionNode [
	self where notNil
		ifTrue: [ self where parent: nil ].
	where := aTeradataExpressionNode.
	self where notNil
		ifTrue: [ self where parent: self ]
]

{ #category : #generated }
TeradataSelectQueryNode >> whereToken [
	^ whereToken
]

{ #category : #generated }
TeradataSelectQueryNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
