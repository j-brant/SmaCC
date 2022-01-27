Class {
	#name : #TeradataOverExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'overToken',
		'rows',
		'betweenToken',
		'from',
		'precedingTokens',
		'andToken',
		'to',
		'currentToToken',
		'rowToToken',
		'currentFromToken',
		'rowFromToken',
		'orderBy',
		'partition'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataOverExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOverExpression: self
]

{ #category : #generated }
TeradataOverExpressionNode >> andToken [
	^ andToken
]

{ #category : #generated }
TeradataOverExpressionNode >> andToken: aSmaCCToken [
	andToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> betweenToken [
	^ betweenToken
]

{ #category : #generated }
TeradataOverExpressionNode >> betweenToken: aSmaCCToken [
	betweenToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> compositeTokenVariables [
	^ #(#precedingTokens #leftParens #rightParens)
]

{ #category : #generated }
TeradataOverExpressionNode >> currentFromToken [
	^ currentFromToken
]

{ #category : #generated }
TeradataOverExpressionNode >> currentFromToken: aSmaCCToken [
	currentFromToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> currentToToken [
	^ currentToToken
]

{ #category : #generated }
TeradataOverExpressionNode >> currentToToken: aSmaCCToken [
	currentToToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> from [
	^ from
]

{ #category : #generated }
TeradataOverExpressionNode >> from: aSmaCCToken [
	from := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataOverExpressionNode >> initialize [
	super initialize.
	precedingTokens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataOverExpressionNode >> nodeVariables [
	^ #(#value #orderBy #partition)
]

{ #category : #generated }
TeradataOverExpressionNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataOverExpressionNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataOverExpressionNode >> overToken [
	^ overToken
]

{ #category : #generated }
TeradataOverExpressionNode >> overToken: aSmaCCToken [
	overToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> partition [
	^ partition
]

{ #category : #generated }
TeradataOverExpressionNode >> partition: aTeradataPartitionByExpressionNode [
	self partition notNil ifTrue: [ self partition parent: nil ].
	partition := aTeradataPartitionByExpressionNode.
	self partition notNil ifTrue: [ self partition parent: self ]
]

{ #category : #generated }
TeradataOverExpressionNode >> precedingTokens [
	^ precedingTokens
]

{ #category : #generated }
TeradataOverExpressionNode >> precedingTokens: anOrderedCollection [
	precedingTokens := anOrderedCollection
]

{ #category : #generated }
TeradataOverExpressionNode >> rowFromToken [
	^ rowFromToken
]

{ #category : #generated }
TeradataOverExpressionNode >> rowFromToken: aSmaCCToken [
	rowFromToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> rowToToken [
	^ rowToToken
]

{ #category : #generated }
TeradataOverExpressionNode >> rowToToken: aSmaCCToken [
	rowToToken := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> rows [
	^ rows
]

{ #category : #generated }
TeradataOverExpressionNode >> rows: aSmaCCToken [
	rows := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> to [
	^ to
]

{ #category : #generated }
TeradataOverExpressionNode >> to: aSmaCCToken [
	to := aSmaCCToken
]

{ #category : #generated }
TeradataOverExpressionNode >> tokenVariables [
	^ #(#overToken #rows #betweenToken #from #andToken #to #currentToToken #rowToToken #currentFromToken #rowFromToken)
]

{ #category : #generated }
TeradataOverExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataOverExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
