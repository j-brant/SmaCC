Class {
	#name : #RustUnaryExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'operator',
		'value'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustUnaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnaryExpression: self
]

{ #category : #generated }
RustUnaryExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustUnaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
RustUnaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RustUnaryExpressionNode >> tokenVariables [
	^ #(#operator)
]

{ #category : #generated }
RustUnaryExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustUnaryExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
