Class {
	#name : #VBNetAnonymousCreationExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'newToken',
		'expression'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnonymousCreationExpression: self
]

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> expression: aVBNetObjectMemberInitializerNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetObjectMemberInitializerNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> newToken [
	^ newToken
]

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
VBNetAnonymousCreationExpressionNode >> tokenVariables [
	^ #(#newToken)
]
