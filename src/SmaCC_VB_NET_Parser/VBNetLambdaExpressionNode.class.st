Class {
	#name : #VBNetLambdaExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'modifiers',
		'statements',
		'parameters',
		'commas',
		'endToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetLambdaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLambdaExpression: self
]

{ #category : #generated }
VBNetLambdaExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetLambdaExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetLambdaExpressionNode >> compositeNodeVariables [
	^ #(#statements #parameters)
]

{ #category : #generated }
VBNetLambdaExpressionNode >> compositeTokenVariables [
	^ #(#modifiers #commas #leftParens #rightParens)
]

{ #category : #generated }
VBNetLambdaExpressionNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetLambdaExpressionNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetLambdaExpressionNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetLambdaExpressionNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetLambdaExpressionNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetLambdaExpressionNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetLambdaExpressionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetLambdaExpressionNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetLambdaExpressionNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetLambdaExpressionNode >> tokenVariables [
	^ #(#endToken)
]
