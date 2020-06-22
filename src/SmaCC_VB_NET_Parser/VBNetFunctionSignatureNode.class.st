Class {
	#name : #VBNetFunctionSignatureNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'functionToken',
		'name',
		'asToken',
		'attributeBlocks',
		'type',
		'leftParen',
		'rightParen',
		'parameters',
		'commas',
		'typeParameters'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetFunctionSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionSignature: self
]

{ #category : #generated }
VBNetFunctionSignatureNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetFunctionSignatureNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionSignatureNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetFunctionSignatureNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetFunctionSignatureNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetFunctionSignatureNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetFunctionSignatureNode >> compositeNodeVariables [
	^ #(#attributeBlocks #parameters)
]

{ #category : #generated }
VBNetFunctionSignatureNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetFunctionSignatureNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
VBNetFunctionSignatureNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetFunctionSignatureNode >> initialize [
	super initialize.
	attributeBlocks := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetFunctionSignatureNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetFunctionSignatureNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionSignatureNode >> name [
	^ name
]

{ #category : #generated }
VBNetFunctionSignatureNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionSignatureNode >> nodeVariables [
	^ #(#type #typeParameters)
]

{ #category : #generated }
VBNetFunctionSignatureNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetFunctionSignatureNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetFunctionSignatureNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetFunctionSignatureNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionSignatureNode >> tokenVariables [
	^ #(#functionToken #name #asToken #leftParen #rightParen)
]

{ #category : #generated }
VBNetFunctionSignatureNode >> type [
	^ type
]

{ #category : #generated }
VBNetFunctionSignatureNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetFunctionSignatureNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
VBNetFunctionSignatureNode >> typeParameters: aVBNetTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aVBNetTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
