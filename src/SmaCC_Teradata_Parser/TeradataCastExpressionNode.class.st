Class {
	#name : #TeradataCastExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'castToken',
		'value',
		'asToken',
		'formatToken',
		'format',
		'type'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCastExpression: self
]

{ #category : #generated }
TeradataCastExpressionNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataCastExpressionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataCastExpressionNode >> castToken [
	^ castToken
]

{ #category : #generated }
TeradataCastExpressionNode >> castToken: aSmaCCToken [
	castToken := aSmaCCToken
]

{ #category : #generated }
TeradataCastExpressionNode >> format [
	^ format
]

{ #category : #generated }
TeradataCastExpressionNode >> format: aSmaCCToken [
	format := aSmaCCToken
]

{ #category : #generated }
TeradataCastExpressionNode >> formatToken [
	^ formatToken
]

{ #category : #generated }
TeradataCastExpressionNode >> formatToken: aSmaCCToken [
	formatToken := aSmaCCToken
]

{ #category : #generated }
TeradataCastExpressionNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
TeradataCastExpressionNode >> tokenVariables [
	^ #(#castToken #asToken #formatToken #format)
]

{ #category : #generated }
TeradataCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
TeradataCastExpressionNode >> type: aTeradataTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aTeradataTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
TeradataCastExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataCastExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
