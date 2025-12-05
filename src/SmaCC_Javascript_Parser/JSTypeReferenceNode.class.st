Class {
	#name : 'JSTypeReferenceNode',
	#superclass : 'JSTypeNode',
	#instVars : [
		'type',
		'typeArguments'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSTypeReferenceNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeReference: self
]

{ #category : 'generated' }
JSTypeReferenceNode >> nodeVariables [
	^ #(#type #typeArguments)
]

{ #category : 'generated' }
JSTypeReferenceNode >> type [
	^ type
]

{ #category : 'generated' }
JSTypeReferenceNode >> type: aJSTypeNameNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSTypeNameNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JSTypeReferenceNode >> typeArguments [
	^ typeArguments
]

{ #category : 'generated' }
JSTypeReferenceNode >> typeArguments: aJSTypeArgumentsNode [
	self typeArguments notNil ifTrue: [ self typeArguments parent: nil ].
	typeArguments := aJSTypeArgumentsNode.
	self typeArguments notNil ifTrue: [ self typeArguments parent: self ]
]
