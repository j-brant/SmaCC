Class {
	#name : #CSInterpolationNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'expression',
		'format',
		'colon',
		'commaToken',
		'constant'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSInterpolationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterpolation: self
]

{ #category : #generated }
CSInterpolationNode >> colon [
	^ colon
]

{ #category : #generated }
CSInterpolationNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CSInterpolationNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
CSInterpolationNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
CSInterpolationNode >> constant [
	^ constant
]

{ #category : #generated }
CSInterpolationNode >> constant: aCSExpressionNode [
	self constant notNil ifTrue: [ self constant parent: nil ].
	constant := aCSExpressionNode.
	self constant notNil ifTrue: [ self constant parent: self ]
]

{ #category : #generated }
CSInterpolationNode >> expression [
	^ expression
]

{ #category : #generated }
CSInterpolationNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSInterpolationNode >> format [
	^ format
]

{ #category : #generated }
CSInterpolationNode >> format: anObject [
	self setParent: self format to: nil.
	format := anObject.
	self setParent: self format to: self
]

{ #category : #generated }
CSInterpolationNode >> ignoredTokenVariables [
	^ #(#commaToken)
]

{ #category : #generated }
CSInterpolationNode >> nodeVariables [
	^ #(#expression #constant)
]

{ #category : #generated }
CSInterpolationNode >> otherVariables [
	^ #(#format)
]

{ #category : #generated }
CSInterpolationNode >> tokenVariables [
	^ #(#colon)
]
