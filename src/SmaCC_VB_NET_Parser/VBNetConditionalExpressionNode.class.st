Class {
	#name : #VBNetConditionalExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'ifToken',
		'booleanValue',
		'commas',
		'trueValue',
		'falseValue'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetConditionalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConditionalExpression: self
]

{ #category : #generated }
VBNetConditionalExpressionNode >> booleanValue [
	^ booleanValue
]

{ #category : #generated }
VBNetConditionalExpressionNode >> booleanValue: aVBNetExpressionNode [
	self booleanValue notNil
		ifTrue: [ self booleanValue parent: nil ].
	booleanValue := aVBNetExpressionNode.
	self booleanValue notNil
		ifTrue: [ self booleanValue parent: self ]
]

{ #category : #generated }
VBNetConditionalExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetConditionalExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetConditionalExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
VBNetConditionalExpressionNode >> falseValue [
	^ falseValue
]

{ #category : #generated }
VBNetConditionalExpressionNode >> falseValue: aVBNetExpressionNode [
	self falseValue notNil
		ifTrue: [ self falseValue parent: nil ].
	falseValue := aVBNetExpressionNode.
	self falseValue notNil
		ifTrue: [ self falseValue parent: self ]
]

{ #category : #generated }
VBNetConditionalExpressionNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
VBNetConditionalExpressionNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetConditionalExpressionNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetConditionalExpressionNode >> nodeVariables [
	^ #(#booleanValue #trueValue #falseValue)
]

{ #category : #generated }
VBNetConditionalExpressionNode >> tokenVariables [
	^ #(#ifToken)
]

{ #category : #generated }
VBNetConditionalExpressionNode >> trueValue [
	^ trueValue
]

{ #category : #generated }
VBNetConditionalExpressionNode >> trueValue: aVBNetExpressionNode [
	self trueValue notNil
		ifTrue: [ self trueValue parent: nil ].
	trueValue := aVBNetExpressionNode.
	self trueValue notNil
		ifTrue: [ self trueValue parent: self ]
]
