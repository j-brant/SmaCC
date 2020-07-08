Class {
	#name : #TeradataElseExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'elseToken',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataElseExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElseExpression: self
]

{ #category : #generated }
TeradataElseExpressionNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
TeradataElseExpressionNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #generated }
TeradataElseExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataElseExpressionNode >> tokenVariables [
	^ #(#elseToken)
]

{ #category : #generated }
TeradataElseExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataElseExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
