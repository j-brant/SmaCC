Class {
	#name : #RustRangePatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'from',
		'operator',
		'to'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustRangePatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRangePattern: self
]

{ #category : #generated }
RustRangePatternNode >> from [
	^ from
]

{ #category : #generated }
RustRangePatternNode >> from: aRustExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aRustExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
RustRangePatternNode >> nodeVariables [
	^ #(#from #to)
]

{ #category : #generated }
RustRangePatternNode >> operator [
	^ operator
]

{ #category : #generated }
RustRangePatternNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RustRangePatternNode >> to [
	^ to
]

{ #category : #generated }
RustRangePatternNode >> to: aRustExpressionNode [
	self to notNil ifTrue: [ self to parent: nil ].
	to := aRustExpressionNode.
	self to notNil ifTrue: [ self to parent: self ]
]

{ #category : #generated }
RustRangePatternNode >> tokenVariables [
	^ #(#operator)
]
