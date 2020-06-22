Class {
	#name : #VBNetVariablePropertyInitializerNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'colonEquals',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariablePropertyInitializer: self
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> colonEquals [
	^ colonEquals
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> colonEquals: aSmaCCToken [
	colonEquals := aSmaCCToken
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> name [
	^ name
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> tokenVariables [
	^ #(#name #colonEquals)
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> value [
	^ value
]

{ #category : #generated }
VBNetVariablePropertyInitializerNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
