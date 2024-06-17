Class {
	#name : #CSSwitchLabelNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'caseToken',
		'expression',
		'colonToken',
		'whenToken',
		'whenExpression',
		'defaultToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSwitchLabelNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchLabel: self
]

{ #category : #generated }
CSSwitchLabelNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
CSSwitchLabelNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
CSSwitchLabelNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
CSSwitchLabelNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
CSSwitchLabelNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
CSSwitchLabelNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
CSSwitchLabelNode >> expression [
	^ expression
]

{ #category : #generated }
CSSwitchLabelNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSSwitchLabelNode >> nodeVariables [
	^ #(#expression #whenExpression)
]

{ #category : #generated }
CSSwitchLabelNode >> tokenVariables [
	^ #(#caseToken #colonToken #whenToken #defaultToken)
]

{ #category : #generated }
CSSwitchLabelNode >> whenExpression [
	^ whenExpression
]

{ #category : #generated }
CSSwitchLabelNode >> whenExpression: aCSExpressionNode [
	self whenExpression notNil ifTrue: [ self whenExpression parent: nil ].
	whenExpression := aCSExpressionNode.
	self whenExpression notNil ifTrue: [ self whenExpression parent: self ]
]

{ #category : #generated }
CSSwitchLabelNode >> whenToken [
	^ whenToken
]

{ #category : #generated }
CSSwitchLabelNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
