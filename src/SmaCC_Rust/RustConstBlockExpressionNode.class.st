Class {
	#name : 'RustConstBlockExpressionNode',
	#superclass : 'RustExpressionNode',
	#instVars : [
		'constToken',
		'expression'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustConstBlockExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstBlockExpression: self
]

{ #category : 'generated' }
RustConstBlockExpressionNode >> constToken [
	^ constToken
]

{ #category : 'generated' }
RustConstBlockExpressionNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : 'generated' }
RustConstBlockExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
RustConstBlockExpressionNode >> expression: aRustBlockExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustBlockExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
RustConstBlockExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
RustConstBlockExpressionNode >> tokenVariables [
	^ #(#constToken)
]
