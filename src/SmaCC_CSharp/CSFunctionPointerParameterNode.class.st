Class {
	#name : #CSFunctionPointerParameterNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'type',
		'modifier'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSFunctionPointerParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionPointerParameter: self
]

{ #category : #generated }
CSFunctionPointerParameterNode >> modifier [
	^ modifier
]

{ #category : #generated }
CSFunctionPointerParameterNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSFunctionPointerParameterNode >> tokenVariables [
	^ #(#modifier)
]

{ #category : #generated }
CSFunctionPointerParameterNode >> type [
	^ type
]

{ #category : #generated }
CSFunctionPointerParameterNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
