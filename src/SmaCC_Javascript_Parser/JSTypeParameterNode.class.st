Class {
	#name : #JSTypeParameterNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'extendsToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParameter: self
]

{ #category : #generated }
JSTypeParameterNode >> extendsToken [
	^ extendsToken
]

{ #category : #generated }
JSTypeParameterNode >> extendsToken: aSmaCCToken [
	extendsToken := aSmaCCToken
]

{ #category : #generated }
JSTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
JSTypeParameterNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSTypeParameterNode >> nodeVariables [
	^ #(#name #type)
]

{ #category : #generated }
JSTypeParameterNode >> tokenVariables [
	^ #(#extendsToken)
]

{ #category : #generated }
JSTypeParameterNode >> type [
	^ type
]

{ #category : #generated }
JSTypeParameterNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
