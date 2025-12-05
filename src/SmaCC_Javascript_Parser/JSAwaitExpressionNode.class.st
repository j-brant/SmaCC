Class {
	#name : 'JSAwaitExpressionNode',
	#superclass : 'JSExpressionNode',
	#instVars : [
		'awaitToken',
		'expression'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSAwaitExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAwaitExpression: self
]

{ #category : 'generated' }
JSAwaitExpressionNode >> awaitToken [
	^ awaitToken
]

{ #category : 'generated' }
JSAwaitExpressionNode >> awaitToken: aSmaCCToken [
	awaitToken := aSmaCCToken
]

{ #category : 'generated' }
JSAwaitExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
JSAwaitExpressionNode >> expression: aJSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aJSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
JSAwaitExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
JSAwaitExpressionNode >> tokenVariables [
	^ #(#awaitToken)
]
