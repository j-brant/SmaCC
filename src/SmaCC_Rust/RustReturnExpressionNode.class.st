Class {
	#name : #RustReturnExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'returnToken',
		'value'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustReturnExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReturnExpression: self
]

{ #category : #generated }
RustReturnExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustReturnExpressionNode >> returnToken [
	^ returnToken
]

{ #category : #generated }
RustReturnExpressionNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : #generated }
RustReturnExpressionNode >> tokenVariables [
	^ #(#returnToken)
]

{ #category : #generated }
RustReturnExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustReturnExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
