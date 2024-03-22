Class {
	#name : #JavaInstanceofPatternExpressionNode,
	#superclass : #JavaExpressionNode,
	#instVars : [
		'leftExpression',
		'op',
		'rightExpression',
		'variable'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstanceofPatternExpression: self
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> leftExpression [
	^ leftExpression
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> leftExpression: aJavaExpressionNode [
	self leftExpression notNil ifTrue: [ self leftExpression parent: nil ].
	leftExpression := aJavaExpressionNode.
	self leftExpression notNil ifTrue: [ self leftExpression parent: self ]
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> nodeVariables [
	^ #(#leftExpression #rightExpression #variable)
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> op [
	^ op
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> rightExpression [
	^ rightExpression
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> rightExpression: aJavaTypeNode [
	self rightExpression notNil ifTrue: [ self rightExpression parent: nil ].
	rightExpression := aJavaTypeNode.
	self rightExpression notNil ifTrue: [ self rightExpression parent: self ]
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> tokenVariables [
	^ #(#op)
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> variable [
	^ variable
]

{ #category : #generated }
JavaInstanceofPatternExpressionNode >> variable: aJavaProgramNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJavaProgramNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
