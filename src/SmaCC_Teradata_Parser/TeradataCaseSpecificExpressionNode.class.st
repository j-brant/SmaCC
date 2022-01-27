Class {
	#name : #TeradataCaseSpecificExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'caseSpecificToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseSpecificExpression: self
]

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> caseSpecificToken [
	^ caseSpecificToken
]

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> caseSpecificToken: aSmaCCToken [
	caseSpecificToken := aSmaCCToken
]

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> tokenVariables [
	^ #(#caseSpecificToken)
]

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataCaseSpecificExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
