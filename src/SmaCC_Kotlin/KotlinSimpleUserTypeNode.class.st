Class {
	#name : 'KotlinSimpleUserTypeNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'name',
		'argument'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitSimpleUserType: self
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> argument [
	^ argument
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> argument: aKotlinTypeArgumentsNode [
	self argument notNil ifTrue: [ self argument parent: nil ].
	argument := aKotlinTypeArgumentsNode.
	self argument notNil ifTrue: [ self argument parent: self ]
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
	^ #(#argument)
]

{ #category : 'generated' }
KotlinSimpleUserTypeNode >> tokenVariables [
	^ #(#name)
]
