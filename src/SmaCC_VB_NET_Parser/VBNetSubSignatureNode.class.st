Class {
	#name : #VBNetSubSignatureNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'subToken',
		'name',
		'leftParen',
		'rightParen',
		'parameters',
		'commas',
		'typeParameters'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetSubSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubSignature: self
]

{ #category : #generated }
VBNetSubSignatureNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetSubSignatureNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetSubSignatureNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
VBNetSubSignatureNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetSubSignatureNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetSubSignatureNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetSubSignatureNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetSubSignatureNode >> name [
	^ name
]

{ #category : #generated }
VBNetSubSignatureNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetSubSignatureNode >> nodeVariables [
	^ #(#typeParameters)
]

{ #category : #generated }
VBNetSubSignatureNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetSubSignatureNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetSubSignatureNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetSubSignatureNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetSubSignatureNode >> subToken [
	^ subToken
]

{ #category : #generated }
VBNetSubSignatureNode >> subToken: aSmaCCToken [
	subToken := aSmaCCToken
]

{ #category : #generated }
VBNetSubSignatureNode >> tokenVariables [
	^ #(#subToken #name #leftParen #rightParen)
]

{ #category : #generated }
VBNetSubSignatureNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
VBNetSubSignatureNode >> typeParameters: aVBNetTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aVBNetTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
