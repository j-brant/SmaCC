Class {
	#name : #VBNetArrayCreationExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'newToken',
		'type',
		'arrayTypeModifiers',
		'bounds',
		'commas',
		'initializer'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetArrayCreationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayCreationExpression: self
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> arrayTypeModifiers [
	^ arrayTypeModifiers
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> arrayTypeModifiers: anOrderedCollection [
	self setParents: self arrayTypeModifiers to: nil.
	arrayTypeModifiers := anOrderedCollection.
	self setParents: self arrayTypeModifiers to: self
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> bounds [
	^ bounds
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> bounds: anOrderedCollection [
	self setParents: self bounds to: nil.
	bounds := anOrderedCollection.
	self setParents: self bounds to: self
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> compositeNodeVariables [
	^ #(#arrayTypeModifiers #bounds)
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetArrayCreationExpressionNode >> initialize [
	super initialize.
	arrayTypeModifiers := OrderedCollection new: 2.
	bounds := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> initializer [
	^ initializer
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> initializer: aVBNetCollectionInitializerNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aVBNetCollectionInitializerNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> newToken [
	^ newToken
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> nodeVariables [
	^ #(#type #initializer)
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> tokenVariables [
	^ #(#newToken)
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetArrayCreationExpressionNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
