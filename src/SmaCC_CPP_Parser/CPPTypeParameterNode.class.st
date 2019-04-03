Class {
	#name : #CPPTypeParameterNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'classToken',
		'name',
		'ellipsis',
		'equal',
		'type',
		'typenameToken',
		'templateToken',
		'ltToken',
		'parameters',
		'commas',
		'gtToken',
		'id'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParameter: self
]

{ #category : #generated }
CPPTypeParameterNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPTypeParameterNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> commas [
	^ commas
]

{ #category : #generated }
CPPTypeParameterNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPTypeParameterNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
CPPTypeParameterNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CPPTypeParameterNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPTypeParameterNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> equal [
	^ equal
]

{ #category : #generated }
CPPTypeParameterNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPTypeParameterNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> id [
	^ id
]

{ #category : #generated }
CPPTypeParameterNode >> id: aCPPIdentifierExpressionNode [
	self id notNil
		ifTrue: [ self id parent: nil ].
	id := aCPPIdentifierExpressionNode.
	self id notNil
		ifTrue: [ self id parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPTypeParameterNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTypeParameterNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPTypeParameterNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
CPPTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> nodeVariables [
	^ #(#type #id)
]

{ #category : #generated }
CPPTypeParameterNode >> parameters [
	^ parameters
]

{ #category : #generated }
CPPTypeParameterNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CPPTypeParameterNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPTypeParameterNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> tokenVariables [
	^ #(#classToken #name #ellipsis #equal #typenameToken #templateToken #ltToken #gtToken)
]

{ #category : #generated }
CPPTypeParameterNode >> type [
	^ type
]

{ #category : #generated }
CPPTypeParameterNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
CPPTypeParameterNode >> typenameToken [
	^ typenameToken
]

{ #category : #generated }
CPPTypeParameterNode >> typenameToken: aSmaCCToken [
	typenameToken := aSmaCCToken
]
