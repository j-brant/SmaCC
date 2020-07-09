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
TeradataParameterNode >> name: aTeradataIdentifierNameNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aTeradataIdentifierNameNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
TeradataParameterNode >> nodeVariables [
	^ #(#name #type)
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
