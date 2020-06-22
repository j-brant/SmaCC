Class {
	#name : #VBNetTypeParameterNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'asToken',
		'constraints',
		'leftBrace',
		'commas',
		'rightBrace',
		'modifier'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParameter: self
]

{ #category : #generated }
VBNetTypeParameterNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetTypeParameterNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetTypeParameterNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetTypeParameterNode >> compositeNodeVariables [
	^ #(#constraints)
]

{ #category : #generated }
VBNetTypeParameterNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetTypeParameterNode >> constraints [
	^ constraints
]

{ #category : #generated }
VBNetTypeParameterNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : #'generated-initialize-release' }
VBNetTypeParameterNode >> initialize [
	super initialize.
	constraints := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetTypeParameterNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
VBNetTypeParameterNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBNetTypeParameterNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
VBNetTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
VBNetTypeParameterNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterNode >> tokenVariables [
	^ #(#name #asToken #leftBrace #rightBrace #modifier)
]
