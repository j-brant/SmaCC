Class {
	#name : #CPPConditionalExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'booleanExpression',
		'questionMark',
		'trueExpression',
		'colon',
		'falseExpression'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPConditionalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConditionalExpression: self
]

{ #category : #generated }
CPPConditionalExpressionNode >> booleanExpression [
	^ booleanExpression
]

{ #category : #generated }
CPPConditionalExpressionNode >> booleanExpression: aCPPExpressionNode [
	self booleanExpression notNil
		ifTrue: [ self booleanExpression parent: nil ].
	booleanExpression := aCPPExpressionNode.
	self booleanExpression notNil
		ifTrue: [ self booleanExpression parent: self ]
]

{ #category : #generated }
CPPConditionalExpressionNode >> colon [
	^ colon
]

{ #category : #generated }
CPPConditionalExpressionNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPConditionalExpressionNode >> falseExpression [
	^ falseExpression
]

{ #category : #generated }
CPPConditionalExpressionNode >> falseExpression: aCPPExpressionNode [
	self falseExpression notNil
		ifTrue: [ self falseExpression parent: nil ].
	falseExpression := aCPPExpressionNode.
	self falseExpression notNil
		ifTrue: [ self falseExpression parent: self ]
]

{ #category : #generated }
CPPConditionalExpressionNode >> nodeVariables [
	^ #(#booleanExpression #trueExpression #falseExpression)
]

{ #category : #generated }
CPPConditionalExpressionNode >> questionMark [
	^ questionMark
]

{ #category : #generated }
CPPConditionalExpressionNode >> questionMark: aSmaCCToken [
	questionMark := aSmaCCToken
]

{ #category : #generated }
CPPConditionalExpressionNode >> tokenVariables [
	^ #(#questionMark #colon)
]

{ #category : #generated }
CPPConditionalExpressionNode >> trueExpression [
	^ trueExpression
]

{ #category : #generated }
CPPConditionalExpressionNode >> trueExpression: aCPPExpressionNode [
	self trueExpression notNil
		ifTrue: [ self trueExpression parent: nil ].
	trueExpression := aCPPExpressionNode.
	self trueExpression notNil
		ifTrue: [ self trueExpression parent: self ]
]
