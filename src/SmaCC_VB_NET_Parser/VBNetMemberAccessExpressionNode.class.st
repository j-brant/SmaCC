Class {
	#name : #VBNetMemberAccessExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'period',
		'name',
		'ofToken',
		'types',
		'commas',
		'base'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetMemberAccessExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberAccessExpression: self
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> base [
	^ base
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> base: aVBNetProgramNode [
	self base notNil
		ifTrue: [ self base parent: nil ].
	base := aVBNetProgramNode.
	self base notNil
		ifTrue: [ self base parent: self ]
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetMemberAccessExpressionNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> name [
	^ name
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> nodeVariables [
	^ #(#base)
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> ofToken [
	^ ofToken
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> ofToken: aSmaCCToken [
	ofToken := aSmaCCToken
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> period [
	^ period
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> tokenVariables [
	^ #(#period #name #ofToken)
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> types [
	^ types
]

{ #category : #generated }
VBNetMemberAccessExpressionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
