Class {
	#name : #PyYieldStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'yieldExpression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyYieldStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitYieldStatement: self
]

{ #category : #generated }
PyYieldStatementNode >> nodeVariables [
	^ #(#yieldExpression)
]

{ #category : #generated }
PyYieldStatementNode >> yieldExpression [
	^ yieldExpression
]

{ #category : #generated }
PyYieldStatementNode >> yieldExpression: aPyYieldExpressionNode [
	self yieldExpression notNil ifTrue: [ self yieldExpression parent: nil ].
	yieldExpression := aPyYieldExpressionNode.
	self yieldExpression notNil ifTrue: [ self yieldExpression parent: self ]
]
