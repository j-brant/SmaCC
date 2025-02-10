Class {
	#name : #CSRelationalPatternNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'operator',
		'expression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSRelationalPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRelationalPattern: self
]

{ #category : #generated }
CSRelationalPatternNode >> expression [
	^ expression
]

{ #category : #generated }
CSRelationalPatternNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSRelationalPatternNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CSRelationalPatternNode >> operator [
	^ operator
]

{ #category : #generated }
CSRelationalPatternNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CSRelationalPatternNode >> tokenVariables [
	^ #(#operator)
]
