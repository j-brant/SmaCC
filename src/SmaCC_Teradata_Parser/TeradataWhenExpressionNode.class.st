Class {
	#name : #TeradataWhenExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'whenToken',
		'condition',
		'thenToken',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataWhenExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhenExpression: self
]

{ #category : #generated }
TeradataWhenExpressionNode >> condition [
	^ condition
]

{ #category : #generated }
TeradataWhenExpressionNode >> condition: aTeradataExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aTeradataExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
TeradataWhenExpressionNode >> nodeVariables [
	^ #(#condition #value)
]

{ #category : #generated }
TeradataWhenExpressionNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
TeradataWhenExpressionNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
TeradataWhenExpressionNode >> tokenVariables [
	^ #(#whenToken #thenToken)
]

{ #category : #generated }
TeradataWhenExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataWhenExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]

{ #category : #generated }
TeradataWhenExpressionNode >> whenToken [
	^ whenToken
]

{ #category : #generated }
TeradataWhenExpressionNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
