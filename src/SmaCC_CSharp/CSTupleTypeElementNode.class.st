Class {
	#name : #CSTupleTypeElementNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'type',
		'name'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSTupleTypeElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleTypeElement: self
]

{ #category : #generated }
CSTupleTypeElementNode >> name [
	^ name
]

{ #category : #generated }
CSTupleTypeElementNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSTupleTypeElementNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSTupleTypeElementNode >> tokenVariables [
	^ #(#name)
]

{ #category : #generated }
CSTupleTypeElementNode >> type [
	^ type
]

{ #category : #generated }
CSTupleTypeElementNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
