Class {
	#name : #JSCastExpressionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'leftAngle',
		'type',
		'rightAngle',
		'expression'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCastExpression: self
]

{ #category : #generated }
JSCastExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
JSCastExpressionNode >> expression: aJSExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aJSExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
JSCastExpressionNode >> leftAngle [
	^ leftAngle
]

{ #category : #generated }
JSCastExpressionNode >> leftAngle: aSmaCCToken [
	leftAngle := aSmaCCToken
]

{ #category : #generated }
JSCastExpressionNode >> nodeVariables [
	^ #(#type #expression)
]

{ #category : #generated }
JSCastExpressionNode >> rightAngle [
	^ rightAngle
]

{ #category : #generated }
JSCastExpressionNode >> rightAngle: aSmaCCToken [
	rightAngle := aSmaCCToken
]

{ #category : #generated }
JSCastExpressionNode >> tokenVariables [
	^ #(#leftAngle #rightAngle)
]

{ #category : #generated }
JSCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
JSCastExpressionNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
