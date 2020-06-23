Class {
	#name : #VBNetAttributeNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'type',
		'leftParen',
		'rightParen',
		'commas',
		'arguments',
		'modifier',
		'colonToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
VBNetAttributeNode >> arguments [
	^ arguments
]

{ #category : #generated }
VBNetAttributeNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
VBNetAttributeNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
VBNetAttributeNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
VBNetAttributeNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetAttributeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetAttributeNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
VBNetAttributeNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetAttributeNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetAttributeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetAttributeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetAttributeNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBNetAttributeNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
VBNetAttributeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetAttributeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetAttributeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetAttributeNode >> tokenVariables [
	^ #(#leftParen #rightParen #modifier #colonToken)
]

{ #category : #generated }
VBNetAttributeNode >> type [
	^ type
]

{ #category : #generated }
VBNetAttributeNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
