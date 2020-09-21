Class {
	#name : #JSTypedParameterNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'variable',
		'colonToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypedParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypedParameter: self
]

{ #category : #generated }
JSTypedParameterNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSTypedParameterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSTypedParameterNode >> ignoredTokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
JSTypedParameterNode >> nodeVariables [
	^ #(#variable #type)
]

{ #category : #generated }
JSTypedParameterNode >> type [
	^ type
]

{ #category : #generated }
JSTypedParameterNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSTypedParameterNode >> variable [
	^ variable
]

{ #category : #generated }
JSTypedParameterNode >> variable: aJSProgramNode [
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aJSProgramNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]
]
