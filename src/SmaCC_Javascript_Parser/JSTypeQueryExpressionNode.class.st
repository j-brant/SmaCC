Class {
	#name : #JSTypeQueryExpressionNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'names',
		'periodTokens'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeQueryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeQueryExpression: self
]

{ #category : #generated }
JSTypeQueryExpressionNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
JSTypeQueryExpressionNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #'generated-initialize-release' }
JSTypeQueryExpressionNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periodTokens := OrderedCollection new: 2.
]

{ #category : #generated }
JSTypeQueryExpressionNode >> names [
	^ names
]

{ #category : #generated }
JSTypeQueryExpressionNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
JSTypeQueryExpressionNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
JSTypeQueryExpressionNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]
