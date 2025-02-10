Class {
	#name : #CSSwitchExpressionArmNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'pattern',
		'equalGreaterThanToken',
		'expression',
		'whenToken',
		'whenExpression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSwitchExpressionArmNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchExpressionArm: self
]

{ #category : #generated }
CSSwitchExpressionArmNode >> equalGreaterThanToken [
	^ equalGreaterThanToken
]

{ #category : #generated }
CSSwitchExpressionArmNode >> equalGreaterThanToken: aSmaCCToken [
	equalGreaterThanToken := aSmaCCToken
]

{ #category : #generated }
CSSwitchExpressionArmNode >> expression [
	^ expression
]

{ #category : #generated }
CSSwitchExpressionArmNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSSwitchExpressionArmNode >> nodeVariables [
	^ #(#pattern #expression #whenExpression)
]

{ #category : #generated }
CSSwitchExpressionArmNode >> pattern [
	^ pattern
]

{ #category : #generated }
CSSwitchExpressionArmNode >> pattern: aCSExpressionNode [
	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aCSExpressionNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
CSSwitchExpressionArmNode >> tokenVariables [
	^ #(#equalGreaterThanToken #whenToken)
]

{ #category : #generated }
CSSwitchExpressionArmNode >> whenExpression [
	^ whenExpression
]

{ #category : #generated }
CSSwitchExpressionArmNode >> whenExpression: aCSExpressionNode [
	self whenExpression notNil ifTrue: [ self whenExpression parent: nil ].
	whenExpression := aCSExpressionNode.
	self whenExpression notNil ifTrue: [ self whenExpression parent: self ]
]

{ #category : #generated }
CSSwitchExpressionArmNode >> whenToken [
	^ whenToken
]

{ #category : #generated }
CSSwitchExpressionArmNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
