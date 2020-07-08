Class {
	#name : #TeradataOverExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'overToken',
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
TeradataOverExpressionNode >> nodeVariables [
	^ #(#value #orderBy #partition)
]

{ #category : #generated }
TeradataOverExpressionNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataOverExpressionNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil
		ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil
		ifTrue: [ self orderBy parent: self ]
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
	self partition notNil
		ifTrue: [ self partition parent: nil ].
	partition := aTeradataPartitionByExpressionNode.
	self partition notNil
		ifTrue: [ self partition parent: self ]
]

{ #category : #generated }
TeradataOverExpressionNode >> tokenVariables [
	^ #(#overToken)
]

{ #category : #generated }
TeradataOverExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataOverExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
