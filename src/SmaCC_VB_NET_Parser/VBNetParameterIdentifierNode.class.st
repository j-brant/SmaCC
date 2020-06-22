Class {
	#name : #VBNetParameterIdentifierNode,
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
VBNetParameterIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameterIdentifier: self
]

{ #category : #generated }
VBNetParameterIdentifierNode >> arrayTypeModifiers [
	^ arrayTypeModifiers
]

{ #category : #generated }
VBNetParameterIdentifierNode >> arrayTypeModifiers: anOrderedCollection [
	self setParents: self arrayTypeModifiers to: nil.
	arrayTypeModifiers := anOrderedCollection.
	self setParents: self arrayTypeModifiers to: self
]

{ #category : #generated }
VBNetParameterIdentifierNode >> bounds [
	^ bounds
]

{ #category : #generated }
VBNetParameterIdentifierNode >> bounds: anOrderedCollection [
	self setParents: self bounds to: nil.
	bounds := anOrderedCollection.
	self setParents: self bounds to: self
]

{ #category : #generated }
VBNetParameterIdentifierNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetParameterIdentifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetParameterIdentifierNode >> compositeNodeVariables [
	^ #(#arrayTypeModifiers #bounds)
]

{ #category : #generated }
VBNetParameterIdentifierNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetParameterIdentifierNode >> initialize [
	super initialize.
	arrayTypeModifiers := OrderedCollection new: 2.
	bounds := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetParameterIdentifierNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetParameterIdentifierNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetParameterIdentifierNode >> name [
	^ name
]

{ #category : #generated }
VBNetParameterIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetParameterIdentifierNode >> nullableToken [
	^ nullableToken
]

{ #category : #generated }
VBNetParameterIdentifierNode >> nullableToken: aSmaCCToken [
	nullableToken := aSmaCCToken
]

{ #category : #generated }
VBNetParameterIdentifierNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetParameterIdentifierNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetParameterIdentifierNode >> tokenVariables [
	^ #(#name #leftParen #rightParen #nullableToken)
]
