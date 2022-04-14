Class {
	#name : #RustRangeExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'from',
		'operator',
		'to'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustRangeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRangeExpression: self
]

{ #category : #generated }
RustRangeExpressionNode >> from [
	^ from
]

{ #category : #generated }
RustRangeExpressionNode >> from: aRustExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aRustExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
RustRangeExpressionNode >> nodeVariables [
	^ #(#from #to)
]

{ #category : #generated }
RustRangeExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
RustRangeExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RustRangeExpressionNode >> to [
	^ to
]

{ #category : #generated }
RustRangeExpressionNode >> to: aRustExpressionNode [
	self to notNil ifTrue: [ self to parent: nil ].
	to := aRustExpressionNode.
	self to notNil ifTrue: [ self to parent: self ]
]

{ #category : #generated }
RustRangeExpressionNode >> tokenVariables [
	^ #(#operator)
]
