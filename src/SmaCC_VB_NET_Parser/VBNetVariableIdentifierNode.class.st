Class {
	#name : #VBNetVariableIdentifierNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'arrayTypeModifiers',
		'leftParen',
		'bounds',
		'commas',
		'rightParen',
		'nullableToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetVariableIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableIdentifier: self
]

{ #category : #generated }
VBNetVariableIdentifierNode >> arrayTypeModifiers [
	^ arrayTypeModifiers
]

{ #category : #generated }
VBNetVariableIdentifierNode >> arrayTypeModifiers: anOrderedCollection [
	self setParents: self arrayTypeModifiers to: nil.
	arrayTypeModifiers := anOrderedCollection.
	self setParents: self arrayTypeModifiers to: self
]

{ #category : #generated }
VBNetVariableIdentifierNode >> bounds [
	^ bounds
]

{ #category : #generated }
VBNetVariableIdentifierNode >> bounds: anOrderedCollection [
	self setParents: self bounds to: nil.
	bounds := anOrderedCollection.
	self setParents: self bounds to: self
]

{ #category : #generated }
VBNetVariableIdentifierNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetVariableIdentifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetVariableIdentifierNode >> compositeNodeVariables [
	^ #(#arrayTypeModifiers #bounds)
]

{ #category : #generated }
VBNetVariableIdentifierNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetVariableIdentifierNode >> initialize [
	super initialize.
	arrayTypeModifiers := OrderedCollection new: 2.
	bounds := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetVariableIdentifierNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetVariableIdentifierNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetVariableIdentifierNode >> name [
	^ name
]

{ #category : #generated }
VBNetVariableIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetVariableIdentifierNode >> nullableToken [
	^ nullableToken
]

{ #category : #generated }
VBNetVariableIdentifierNode >> nullableToken: aSmaCCToken [
	nullableToken := aSmaCCToken
]

{ #category : #generated }
VBNetVariableIdentifierNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetVariableIdentifierNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetVariableIdentifierNode >> tokenVariables [
	^ #(#name #leftParen #rightParen #nullableToken)
]
