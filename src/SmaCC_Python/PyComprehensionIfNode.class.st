Class {
	#name : #PyComprehensionIfNode,
	#superclass : #PyRootNode,
	#instVars : [
		'ifToken',
		'condition',
		'iter'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyComprehensionIfNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitComprehensionIf: self
]

{ #category : #generated }
PyComprehensionIfNode >> condition [
	^ condition
]

{ #category : #generated }
PyComprehensionIfNode >> condition: aPyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PyComprehensionIfNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
PyComprehensionIfNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #generated }
PyComprehensionIfNode >> iter [
	^ iter
]

{ #category : #generated }
PyComprehensionIfNode >> iter: aPyRootNode [
	self iter notNil ifTrue: [ self iter parent: nil ].
	iter := aPyRootNode.
	self iter notNil ifTrue: [ self iter parent: self ]
]

{ #category : #generated }
PyComprehensionIfNode >> nodeVariables [
	^ #(#condition #iter)
]

{ #category : #generated }
PyComprehensionIfNode >> tokenVariables [
	^ #(#ifToken)
]
