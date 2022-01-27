Class {
	#name : #TeradataTranslateExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'translateToken',
		'value',
		'usingToken',
		'operation',
		'withToken',
		'errorToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTranslateExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTranslateExpression: self
]

{ #category : #generated }
TeradataTranslateExpressionNode >> errorToken [
	^ errorToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> errorToken: aSmaCCToken [
	errorToken := aSmaCCToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataTranslateExpressionNode >> operation [
	^ operation
]

{ #category : #generated }
TeradataTranslateExpressionNode >> operation: aSmaCCToken [
	operation := aSmaCCToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> tokenVariables [
	^ #(#translateToken #usingToken #operation #withToken #errorToken)
]

{ #category : #generated }
TeradataTranslateExpressionNode >> translateToken [
	^ translateToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> translateToken: aSmaCCToken [
	translateToken := aSmaCCToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataTranslateExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
TeradataTranslateExpressionNode >> withToken [
	^ withToken
]

{ #category : #generated }
TeradataTranslateExpressionNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
