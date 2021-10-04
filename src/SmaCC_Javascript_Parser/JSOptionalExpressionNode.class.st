Class {
	#name : #JSOptionalExpressionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'expression',
		'questionDotToken',
		'options'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSOptionalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptionalExpression: self
]

{ #category : #generated }
JSOptionalExpressionNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
JSOptionalExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
JSOptionalExpressionNode >> expression: aJSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aJSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
JSOptionalExpressionNode >> initialize [
	super initialize.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
JSOptionalExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
JSOptionalExpressionNode >> options [
	^ options
]

{ #category : #generated }
JSOptionalExpressionNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
JSOptionalExpressionNode >> questionDotToken [
	^ questionDotToken
]

{ #category : #generated }
JSOptionalExpressionNode >> questionDotToken: aSmaCCToken [
	questionDotToken := aSmaCCToken
]

{ #category : #generated }
JSOptionalExpressionNode >> tokenVariables [
	^ #(#questionDotToken)
]
