Class {
	#name : #VBNetFunctionLambdaExpressionNode,
	#superclass : #VBNetLambdaExpressionNode,
	#instVars : [
		'functionTokens',
		'asToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionLambdaExpression: self
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> compositeTokenVariables [
	^ #(#functionTokens #modifiers #commas #leftParens #rightParens)
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> functionTokens [
	^ functionTokens
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> functionTokens: anOrderedCollection [
	functionTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBNetFunctionLambdaExpressionNode >> initialize [
	super initialize.
	functionTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> tokenVariables [
	^ #(#asToken #endToken)
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetFunctionLambdaExpressionNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
