Class {
	#name : #TeradataXmlAggExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'xmlaggToken',
		'value',
		'orderBy'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataXmlAggExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitXmlAggExpression: self
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> nodeVariables [
	^ #(#value #orderBy)
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> tokenVariables [
	^ #(#xmlaggToken)
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> xmlaggToken [
	^ xmlaggToken
]

{ #category : #generated }
TeradataXmlAggExpressionNode >> xmlaggToken: aSmaCCToken [
	xmlaggToken := aSmaCCToken
]
