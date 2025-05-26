Class {
	#name : #PyIfExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'condition',
		'ifToken',
		'if',
		'elseToken',
		'else'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyIfExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitIfExpression: self
]

{ #category : #generated }
PyIfExpressionNode >> condition [
	^ condition
]

{ #category : #generated }
PyIfExpressionNode >> condition: aPyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PyIfExpressionNode >> else [
	^ else
]

{ #category : #generated }
PyIfExpressionNode >> else: aPyExpressionNode [
	self else notNil ifTrue: [ self else parent: nil ].
	else := aPyExpressionNode.
	self else notNil ifTrue: [ self else parent: self ]
]

{ #category : #generated }
PyIfExpressionNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
PyIfExpressionNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #generated }
PyIfExpressionNode >> if [
	^ if
]

{ #category : #generated }
PyIfExpressionNode >> if: aPyExpressionNode [
	self if notNil ifTrue: [ self if parent: nil ].
	if := aPyExpressionNode.
	self if notNil ifTrue: [ self if parent: self ]
]

{ #category : #generated }
PyIfExpressionNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
PyIfExpressionNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #generated }
PyIfExpressionNode >> nodeVariables [
	^ #(#if #condition #else)
]

{ #category : #generated }
PyIfExpressionNode >> tokenVariables [
	^ #(#ifToken #elseToken)
]
