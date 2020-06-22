Class {
	#name : #VBNetTypeParameterListNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'leftParen',
		'ofToken',
		'type',
		'commas',
		'typeParameters',
		'rightParen'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetTypeParameterListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParameterList: self
]

{ #category : #generated }
VBNetTypeParameterListNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetTypeParameterListNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetTypeParameterListNode >> compositeNodeVariables [
	^ #(#typeParameters)
]

{ #category : #generated }
VBNetTypeParameterListNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetTypeParameterListNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	typeParameters := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetTypeParameterListNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetTypeParameterListNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterListNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetTypeParameterListNode >> ofToken [
	^ ofToken
]

{ #category : #generated }
VBNetTypeParameterListNode >> ofToken: aSmaCCToken [
	ofToken := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterListNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetTypeParameterListNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetTypeParameterListNode >> tokenVariables [
	^ #(#leftParen #ofToken #rightParen)
]

{ #category : #generated }
VBNetTypeParameterListNode >> type [
	^ type
]

{ #category : #generated }
VBNetTypeParameterListNode >> type: aVBNetTypeParameterNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetTypeParameterNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetTypeParameterListNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
VBNetTypeParameterListNode >> typeParameters: anOrderedCollection [
	self setParents: self typeParameters to: nil.
	typeParameters := anOrderedCollection.
	self setParents: self typeParameters to: self
]
