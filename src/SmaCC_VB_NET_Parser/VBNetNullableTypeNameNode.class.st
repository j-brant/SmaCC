Class {
	#name : #VBNetNullableTypeNameNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'type',
		'nullableToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetNullableTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNullableTypeName: self
]

{ #category : #generated }
VBNetNullableTypeNameNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetNullableTypeNameNode >> nullableToken [
	^ nullableToken
]

{ #category : #generated }
VBNetNullableTypeNameNode >> nullableToken: aSmaCCToken [
	nullableToken := aSmaCCToken
]

{ #category : #generated }
VBNetNullableTypeNameNode >> tokenVariables [
	^ #(#nullableToken)
]

{ #category : #generated }
VBNetNullableTypeNameNode >> type [
	^ type
]

{ #category : #generated }
VBNetNullableTypeNameNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
