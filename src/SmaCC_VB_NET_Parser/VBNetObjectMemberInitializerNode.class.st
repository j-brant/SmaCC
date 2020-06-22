Class {
	#name : #VBNetObjectMemberInitializerNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'withToken',
		'leftBrace',
		'initializers',
		'commas',
		'rightBrace'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetObjectMemberInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectMemberInitializer: self
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> compositeNodeVariables [
	^ #(#initializers)
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetObjectMemberInitializerNode >> initialize [
	super initialize.
	initializers := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> initializers [
	^ initializers
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> tokenVariables [
	^ #(#withToken #leftBrace #rightBrace)
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> withToken [
	^ withToken
]

{ #category : #generated }
VBNetObjectMemberInitializerNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
