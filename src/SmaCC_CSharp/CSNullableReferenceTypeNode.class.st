Class {
	#name : #CSNullableReferenceTypeNode,
	#superclass : #CSTypeNode,
	#instVars : [
		'type',
		'questionMarkToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSNullableReferenceTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNullableReferenceType: self
]

{ #category : #generated }
CSNullableReferenceTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSNullableReferenceTypeNode >> questionMarkToken [
	^ questionMarkToken
]

{ #category : #generated }
CSNullableReferenceTypeNode >> questionMarkToken: aSmaCCToken [
	questionMarkToken := aSmaCCToken
]

{ #category : #generated }
CSNullableReferenceTypeNode >> tokenVariables [
	^ #(#questionMarkToken)
]

{ #category : #generated }
CSNullableReferenceTypeNode >> type [
	^ type
]

{ #category : #generated }
CSNullableReferenceTypeNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
