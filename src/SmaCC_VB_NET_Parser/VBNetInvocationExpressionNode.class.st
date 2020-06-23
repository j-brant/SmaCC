Class {
	#name : #VBNetInvocationExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'receiver',
		'commas',
		'arguments',
		'argumentNames',
		'colonEqualses',
		'namedArguments'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetInvocationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInvocationExpression: self
]

{ #category : #generated }
VBNetInvocationExpressionNode >> argumentNames [
	^ argumentNames
]

{ #category : #generated }
VBNetInvocationExpressionNode >> argumentNames: anOrderedCollection [
	argumentNames := anOrderedCollection
]

{ #category : #generated }
VBNetInvocationExpressionNode >> arguments [
	^ arguments
]

{ #category : #generated }
VBNetInvocationExpressionNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
VBNetInvocationExpressionNode >> colonEqualses [
	^ colonEqualses
]

{ #category : #generated }
VBNetInvocationExpressionNode >> colonEqualses: anOrderedCollection [
	colonEqualses := anOrderedCollection
]

{ #category : #generated }
VBNetInvocationExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetInvocationExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetInvocationExpressionNode >> compositeNodeVariables [
	^ #(#arguments #namedArguments)
]

{ #category : #generated }
VBNetInvocationExpressionNode >> compositeTokenVariables [
	^ #(#commas #argumentNames #colonEqualses #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetInvocationExpressionNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	argumentNames := OrderedCollection new: 2.
	colonEqualses := OrderedCollection new: 2.
	namedArguments := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetInvocationExpressionNode >> namedArguments [
	^ namedArguments
]

{ #category : #generated }
VBNetInvocationExpressionNode >> namedArguments: anOrderedCollection [
	self setParents: self namedArguments to: nil.
	namedArguments := anOrderedCollection.
	self setParents: self namedArguments to: self
]

{ #category : #generated }
VBNetInvocationExpressionNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : #generated }
VBNetInvocationExpressionNode >> receiver [
	^ receiver
]

{ #category : #generated }
VBNetInvocationExpressionNode >> receiver: aVBNetExpressionNode [
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := aVBNetExpressionNode.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]
]
