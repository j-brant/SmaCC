Class {
	#name : #TeradataTypeExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'type'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeExpression: self
]

{ #category : #generated }
TeradataTypeExpressionNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
TeradataTypeExpressionNode >> type [
	^ type
]

{ #category : #generated }
TeradataTypeExpressionNode >> type: aTeradataTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aTeradataTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
TeradataTypeExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataTypeExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
