Class {
	#name : #TeradataIsNullExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'_isToken',
		'nullToken',
		'notToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIsNullExpressionNode >> _isToken [
	^ _isToken
]

{ #category : #generated }
TeradataIsNullExpressionNode >> _isToken: aSmaCCToken [
	_isToken := aSmaCCToken
]

{ #category : #generated }
TeradataIsNullExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIsNullExpression: self
]

{ #category : #generated }
TeradataIsNullExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataIsNullExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataIsNullExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataIsNullExpressionNode >> nullToken [
	^ nullToken
]

{ #category : #generated }
TeradataIsNullExpressionNode >> nullToken: aSmaCCToken [
	nullToken := aSmaCCToken
]

{ #category : #generated }
TeradataIsNullExpressionNode >> tokenVariables [
	^ #(#_isToken #nullToken #notToken)
]

{ #category : #generated }
TeradataIsNullExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataIsNullExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
