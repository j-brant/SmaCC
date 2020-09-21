Class {
	#name : #JSDecoratorExpressionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'decorator'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSDecoratorExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDecoratorExpression: self
]

{ #category : #generated }
JSDecoratorExpressionNode >> decorator [
	^ decorator
]

{ #category : #generated }
JSDecoratorExpressionNode >> decorator: aJSExpressionNode [
	self decorator notNil
		ifTrue: [ self decorator parent: nil ].
	decorator := aJSExpressionNode.
	self decorator notNil
		ifTrue: [ self decorator parent: self ]
]

{ #category : #generated }
JSDecoratorExpressionNode >> nodeVariables [
	^ #(#decorator)
]
