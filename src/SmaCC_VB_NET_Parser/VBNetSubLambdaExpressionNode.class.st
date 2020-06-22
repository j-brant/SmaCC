Class {
	#name : #VBNetSubLambdaExpressionNode,
	#superclass : #VBNetLambdaExpressionNode,
	#instVars : [
		'subTokens'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetSubLambdaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubLambdaExpression: self
]

{ #category : #generated }
VBNetSubLambdaExpressionNode >> compositeTokenVariables [
	^ #(#subTokens #modifiers #commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetSubLambdaExpressionNode >> initialize [
	super initialize.
	subTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetSubLambdaExpressionNode >> subTokens [
	^ subTokens
]

{ #category : #generated }
VBNetSubLambdaExpressionNode >> subTokens: anOrderedCollection [
	subTokens := anOrderedCollection
]
