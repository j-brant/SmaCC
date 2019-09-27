Class {
	#name : #CPPTypeParameterNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name',
		'ellipsis',
		'equal',
		'type'
	],
	#category : #'SmaCC_CPP_Parser-C++ Parser'
}

{ #category : #generated }
CPPTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParameter: self
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
CPPTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
CPPTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPTypeParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CPPTypeParameterNode >> tokenVariables [
	^ #(#name #ellipsis #equal)
]

{ #category : #generated }
CPPTypeParameterNode >> type [
	^ type
]

{ #category : #generated }
CPPTypeParameterNode >> type: aCPPProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
