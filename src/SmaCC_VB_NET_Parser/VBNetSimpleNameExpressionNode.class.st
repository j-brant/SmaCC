Class {
	#name : #VBNetSimpleNameExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'name',
		'ofToken',
		'types',
		'commas'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetSimpleNameExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSimpleNameExpression: self
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetSimpleNameExpressionNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> name [
	^ name
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> ofToken [
	^ ofToken
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> ofToken: aSmaCCToken [
	ofToken := aSmaCCToken
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> tokenVariables [
	^ #(#name #ofToken)
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> types [
	^ types
]

{ #category : #generated }
VBNetSimpleNameExpressionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
