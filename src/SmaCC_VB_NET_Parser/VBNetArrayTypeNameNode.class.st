Class {
	#name : #VBNetArrayTypeNameNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'type',
		'arrayTypeModifiers'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetArrayTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayTypeName: self
]

{ #category : #generated }
VBNetArrayTypeNameNode >> arrayTypeModifiers [
	^ arrayTypeModifiers
]

{ #category : #generated }
VBNetArrayTypeNameNode >> arrayTypeModifiers: anOrderedCollection [
	self setParents: self arrayTypeModifiers to: nil.
	arrayTypeModifiers := anOrderedCollection.
	self setParents: self arrayTypeModifiers to: self
]

{ #category : #generated }
VBNetArrayTypeNameNode >> compositeNodeVariables [
	^ #(#arrayTypeModifiers)
]

{ #category : #'generated-initialize-release' }
VBNetArrayTypeNameNode >> initialize [
	super initialize.
	arrayTypeModifiers := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetArrayTypeNameNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetArrayTypeNameNode >> type [
	^ type
]

{ #category : #generated }
VBNetArrayTypeNameNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
