Class {
	#name : #TeradataTitleExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'titleToken',
		'title'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTitleExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTitleExpression: self
]

{ #category : #generated }
TeradataTitleExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataTitleExpressionNode >> title [
	^ title
]

{ #category : #generated }
TeradataTitleExpressionNode >> title: aSmaCCToken [
	title := aSmaCCToken
]

{ #category : #generated }
TeradataTitleExpressionNode >> titleToken [
	^ titleToken
]

{ #category : #generated }
TeradataTitleExpressionNode >> titleToken: aSmaCCToken [
	titleToken := aSmaCCToken
]

{ #category : #generated }
TeradataTitleExpressionNode >> tokenVariables [
	^ #(#titleToken #title)
]

{ #category : #generated }
TeradataTitleExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataTitleExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
