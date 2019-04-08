Class {
	#name : #CPPClassTypeParameterNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'classToken',
		'name',
		'ellipsis',
		'equal',
		'type'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPClassTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassTypeParameter: self
]

{ #category : #generated }
CPPClassTypeParameterNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPClassTypeParameterNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPClassTypeParameterNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPClassTypeParameterNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
CPPClassTypeParameterNode >> equal [
	^ equal
]

{ #category : #generated }
CPPClassTypeParameterNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPClassTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
CPPClassTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPClassTypeParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CPPClassTypeParameterNode >> tokenVariables [
	^ #(#classToken #name #ellipsis #equal)
]

{ #category : #generated }
CPPClassTypeParameterNode >> type [
	^ type
]

{ #category : #generated }
CPPClassTypeParameterNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
