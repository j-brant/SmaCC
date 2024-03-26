Class {
	#name : #JavaSwitchExpressionNode,
	#superclass : #JavaExpressionNode,
	#instVars : [
		'switchToken',
		'leftParen',
		'expression',
		'rightParen',
		'leftBrace',
		'statementGroups',
		'rightBrace'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaSwitchExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchExpression: self
]

{ #category : #generated }
JavaSwitchExpressionNode >> compositeNodeVariables [
	^ #(#statementGroups)
]

{ #category : #generated }
JavaSwitchExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
JavaSwitchExpressionNode >> expression: aJavaExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aJavaExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
JavaSwitchExpressionNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen #leftBrace #rightBrace)
]

{ #category : #'generated-initialize-release' }
JavaSwitchExpressionNode >> initialize [
	super initialize.
	statementGroups := OrderedCollection new: 2.
]

{ #category : #generated }
JavaSwitchExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JavaSwitchExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JavaSwitchExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
JavaSwitchExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
JavaSwitchExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
JavaSwitchExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JavaSwitchExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JavaSwitchExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
JavaSwitchExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
JavaSwitchExpressionNode >> statementGroups [
	^ statementGroups
]

{ #category : #generated }
JavaSwitchExpressionNode >> statementGroups: anOrderedCollection [
	self setParents: self statementGroups to: nil.
	statementGroups := anOrderedCollection.
	self setParents: self statementGroups to: self
]

{ #category : #generated }
JavaSwitchExpressionNode >> switchToken [
	^ switchToken
]

{ #category : #generated }
JavaSwitchExpressionNode >> switchToken: aSmaCCToken [
	switchToken := aSmaCCToken
]

{ #category : #generated }
JavaSwitchExpressionNode >> tokenVariables [
	^ #(#switchToken)
]
