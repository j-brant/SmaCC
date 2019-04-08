Class {
	#name : #CPPTypenameTypeParameterNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'typenameToken',
		'name',
		'ellipsis',
		'equal',
		'type'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTypenameTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypenameTypeParameter: self
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> equal [
	^ equal
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> tokenVariables [
	^ #(#typenameToken #name #ellipsis #equal)
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> type [
	^ type
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> typenameToken [
	^ typenameToken
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> typenameToken: aSmaCCToken [
	typenameToken := aSmaCCToken
]
