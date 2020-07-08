Class {
	#name : #TeradataSetExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'equals',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataSetExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetExpression: self
]

{ #category : #generated }
TeradataSetExpressionNode >> equals [
	^ equals
]

{ #category : #generated }
TeradataSetExpressionNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
TeradataSetExpressionNode >> name [
	^ name
]

{ #category : #generated }
TeradataSetExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataSetExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataSetExpressionNode >> tokenVariables [
	^ #(#name #equals)
]

{ #category : #generated }
TeradataSetExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataSetExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
