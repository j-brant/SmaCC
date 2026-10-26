Class {
	#name : 'RustRawBorrowExpressionNode',
	#superclass : 'RustExpressionNode',
	#instVars : [
		'amp',
		'rawToken',
		'constToken',
		'expression',
		'mutToken'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustRawBorrowExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRawBorrowExpression: self
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> amp [
	^ amp
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> amp: aSmaCCToken [
	amp := aSmaCCToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> constToken [
	^ constToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> mutToken [
	^ mutToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> rawToken [
	^ rawToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> rawToken: aSmaCCToken [
	rawToken := aSmaCCToken
]

{ #category : 'generated' }
RustRawBorrowExpressionNode >> tokenVariables [
	^ #(#amp #rawToken #constToken #mutToken)
]
