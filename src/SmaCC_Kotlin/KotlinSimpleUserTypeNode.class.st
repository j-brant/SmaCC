Class {
	#name : 'KotlinSimpleUserTypeNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'name',
		'typeArguments'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitSimpleUserType: self
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> nodeVariables [
	^ #(#typeArguments)
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> tokenVariables [
	^ #(#name)
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> typeArguments [
	^ typeArguments
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> typeArguments: aKotlinTypeArgumentsNode [
	self typeArguments notNil ifTrue: [ self typeArguments parent: nil ].
	typeArguments := aKotlinTypeArgumentsNode.
	self typeArguments notNil ifTrue: [ self typeArguments parent: self ]
]
