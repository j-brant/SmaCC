Class {
	#name : #CSSlicePatternNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'operator',
		'pattern'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSlicePatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSlicePattern: self
]

{ #category : #generated }
CSSlicePatternNode >> nodeVariables [
	^ #(#pattern)
]

{ #category : #generated }
CSSlicePatternNode >> operator [
	^ operator
]

{ #category : #generated }
CSSlicePatternNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CSSlicePatternNode >> pattern [
	^ pattern
]

{ #category : #generated }
CSSlicePatternNode >> pattern: aCSExpressionNode [
	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aCSExpressionNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
CSSlicePatternNode >> tokenVariables [
	^ #(#operator)
]
