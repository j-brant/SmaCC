Class {
	#name : #JSTypeQueryNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'operator',
		'expression'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeQuery: self
]

{ #category : #generated }
JSTypeQueryNode >> expression [
	^ expression
]

{ #category : #generated }
JSTypeQueryNode >> expression: aJSTypeQueryExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aJSTypeQueryExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
JSTypeQueryNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
JSTypeQueryNode >> operator [
	^ operator
]

{ #category : #generated }
JSTypeQueryNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
JSTypeQueryNode >> tokenVariables [
	^ #(#operator)
]
