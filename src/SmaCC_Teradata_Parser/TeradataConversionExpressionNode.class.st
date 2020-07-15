Class {
	#name : #TeradataConversionExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'formatToken',
		'format',
		'type',
		'comma'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataConversionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConversionExpression: self
]

{ #category : #generated }
TeradataConversionExpressionNode >> comma [
	^ comma
]

{ #category : #generated }
TeradataConversionExpressionNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
TeradataConversionExpressionNode >> format [
	^ format
]

{ #category : #generated }
TeradataConversionExpressionNode >> format: aSmaCCToken [
	format := aSmaCCToken
]

{ #category : #generated }
TeradataConversionExpressionNode >> formatToken [
	^ formatToken
]

{ #category : #generated }
TeradataConversionExpressionNode >> formatToken: aSmaCCToken [
	formatToken := aSmaCCToken
]

{ #category : #generated }
TeradataConversionExpressionNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
TeradataConversionExpressionNode >> tokenVariables [
	^ #(#formatToken #format #comma)
]

{ #category : #generated }
TeradataConversionExpressionNode >> type [
	^ type
]

{ #category : #generated }
TeradataConversionExpressionNode >> type: aTeradataTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aTeradataTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
TeradataConversionExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataConversionExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
