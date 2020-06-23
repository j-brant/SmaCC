Class {
	#name : #VBNetObjectCreationExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'newToken',
		'type',
		'initializer',
		'commas',
		'arguments',
		'argumentNames',
		'colonEqualses',
		'namedArguments'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetObjectCreationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectCreationExpression: self
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> argumentNames [
	^ argumentNames
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> argumentNames: anOrderedCollection [
	argumentNames := anOrderedCollection
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> arguments [
	^ arguments
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> colonEqualses [
	^ colonEqualses
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> colonEqualses: anOrderedCollection [
	colonEqualses := anOrderedCollection
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> compositeNodeVariables [
	^ #(#arguments #namedArguments)
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> compositeTokenVariables [
	^ #(#commas #argumentNames #colonEqualses #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetObjectCreationExpressionNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	argumentNames := OrderedCollection new: 2.
	colonEqualses := OrderedCollection new: 2.
	namedArguments := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> initializer [
	^ initializer
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> initializer: aVBNetProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aVBNetProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> namedArguments [
	^ namedArguments
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> namedArguments: anOrderedCollection [
	self setParents: self namedArguments to: nil.
	namedArguments := anOrderedCollection.
	self setParents: self namedArguments to: self
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> newToken [
	^ newToken
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> nodeVariables [
	^ #(#type #initializer)
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> tokenVariables [
	^ #(#newToken)
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetObjectCreationExpressionNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
