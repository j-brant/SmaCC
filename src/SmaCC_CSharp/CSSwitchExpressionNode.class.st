Class {
	#name : #CSSwitchExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'value',
		'switchToken',
		'leftBrace',
		'rightBrace',
		'leftBraceToken',
		'arms',
		'commas'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSwitchExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchExpression: self
]

{ #category : #generated }
CSSwitchExpressionNode >> arms [
	^ arms
]

{ #category : #generated }
CSSwitchExpressionNode >> arms: anOrderedCollection [
	self setParents: self arms to: nil.
	arms := anOrderedCollection.
	self setParents: self arms to: self
]

{ #category : #generated }
CSSwitchExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CSSwitchExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSSwitchExpressionNode >> compositeNodeVariables [
	^ #(#arms)
]

{ #category : #generated }
CSSwitchExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
CSSwitchExpressionNode >> initialize [
	super initialize.
	arms := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSSwitchExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CSSwitchExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CSSwitchExpressionNode >> leftBraceToken [
	^ leftBraceToken
]

{ #category : #generated }
CSSwitchExpressionNode >> leftBraceToken: aSmaCCToken [
	leftBraceToken := aSmaCCToken
]

{ #category : #generated }
CSSwitchExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CSSwitchExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CSSwitchExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CSSwitchExpressionNode >> switchToken [
	^ switchToken
]

{ #category : #generated }
CSSwitchExpressionNode >> switchToken: aSmaCCToken [
	switchToken := aSmaCCToken
]

{ #category : #generated }
CSSwitchExpressionNode >> tokenVariables [
	^ #(#switchToken #leftBrace #rightBrace #leftBraceToken)
]

{ #category : #generated }
CSSwitchExpressionNode >> value [
	^ value
]

{ #category : #generated }
CSSwitchExpressionNode >> value: aCSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
