Class {
	#name : #TeradataUnaryExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'operator',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUnaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnaryExpression: self
]

{ #category : #generated }
TeradataUnaryExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataUnaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
TeradataUnaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
TeradataUnaryExpressionNode >> tokenVariables [
	^ #(#operator)
]

{ #category : #generated }
TeradataUnaryExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataUnaryExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
