Class {
	#name : #VBNetLoopControlVariableNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'arrayTypeModifiers',
		'leftParen',
		'bounds',
		'commas',
		'rightParen',
		'nullableToken',
		'asToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetLoopControlVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLoopControlVariable: self
]

{ #category : #generated }
VBNetLoopControlVariableNode >> arrayTypeModifiers [
	^ arrayTypeModifiers
]

{ #category : #generated }
VBNetLoopControlVariableNode >> arrayTypeModifiers: anOrderedCollection [
	self setParents: self arrayTypeModifiers to: nil.
	arrayTypeModifiers := anOrderedCollection.
	self setParents: self arrayTypeModifiers to: self
]

{ #category : #generated }
VBNetLoopControlVariableNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> bounds [
	^ bounds
]

{ #category : #generated }
VBNetLoopControlVariableNode >> bounds: anOrderedCollection [
	self setParents: self bounds to: nil.
	bounds := anOrderedCollection.
	self setParents: self bounds to: self
]

{ #category : #generated }
VBNetLoopControlVariableNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetLoopControlVariableNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetLoopControlVariableNode >> compositeNodeVariables [
	^ #(#arrayTypeModifiers #bounds)
]

{ #category : #generated }
VBNetLoopControlVariableNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetLoopControlVariableNode >> initialize [
	super initialize.
	arrayTypeModifiers := OrderedCollection new: 2.
	bounds := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetLoopControlVariableNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetLoopControlVariableNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> name [
	^ name
]

{ #category : #generated }
VBNetLoopControlVariableNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetLoopControlVariableNode >> nullableToken [
	^ nullableToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> nullableToken: aSmaCCToken [
	nullableToken := aSmaCCToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetLoopControlVariableNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetLoopControlVariableNode >> tokenVariables [
	^ #(#name #leftParen #rightParen #nullableToken #asToken)
]

{ #category : #generated }
VBNetLoopControlVariableNode >> type [
	^ type
]

{ #category : #generated }
VBNetLoopControlVariableNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
