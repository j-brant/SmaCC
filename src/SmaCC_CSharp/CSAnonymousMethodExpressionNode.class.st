Class {
	#name : #CSAnonymousMethodExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'delegateToken',
		'signature',
		'block',
		'asyncToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSAnonymousMethodExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnonymousMethodExpression: self
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> block [
	^ block
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> block: aCSBlockStatementNode [
	self block notNil
		ifTrue: [ self block parent: nil ].
	block := aCSBlockStatementNode.
	self block notNil
		ifTrue: [ self block parent: self ]
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> delegateToken [
	^ delegateToken
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> delegateToken: aSmaCCToken [
	delegateToken := aSmaCCToken
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> nodeVariables [
	^ #(#block)
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> otherVariables [
	^ #(#signature)
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> signature [
	^ signature
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> signature: anOrderedCollection [
	self setParent: self signature to: nil.
	signature := anOrderedCollection.
	self setParent: self signature to: self
]

{ #category : #generated }
CSAnonymousMethodExpressionNode >> tokenVariables [
	^ #(#delegateToken #asyncToken)
]
