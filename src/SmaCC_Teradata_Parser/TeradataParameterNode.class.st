Class {
	#name : #TeradataParameterNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'type'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameter: self
]

{ #category : #generated }
TeradataParameterNode >> name [
	^ name
]

{ #category : #generated }
TeradataParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
TeradataParameterNode >> tokenVariables [
	^ #(#name)
]

{ #category : #generated }
TeradataParameterNode >> type [
	^ type
]

{ #category : #generated }
TeradataParameterNode >> type: aTeradataTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aTeradataTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
