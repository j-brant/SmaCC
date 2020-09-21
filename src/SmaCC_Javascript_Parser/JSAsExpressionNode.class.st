Class {
	#name : #JSAsExpressionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'expression',
		'asToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAsExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsExpression: self
]

{ #category : #generated }
JSAsExpressionNode >> asToken [
	^ asToken
]

{ #category : #generated }
JSAsExpressionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
JSAsExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
JSAsExpressionNode >> expression: aJSExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aJSExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
JSAsExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : #generated }
JSAsExpressionNode >> tokenVariables [
	^ #(#asToken)
]

{ #category : #generated }
JSAsExpressionNode >> type [
	^ type
]

{ #category : #generated }
JSAsExpressionNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
