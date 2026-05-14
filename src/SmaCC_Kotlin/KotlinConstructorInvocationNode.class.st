Class {
	#name : 'KotlinConstructorInvocationNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'type',
		'arguments'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinConstructorInvocationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitConstructorInvocation: self
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> arguments: aKotlinValueArgumentsNode [
	self arguments notNil ifTrue: [ self arguments parent: nil ].
	arguments := aKotlinValueArgumentsNode.
	self arguments notNil ifTrue: [ self arguments parent: self ]
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> nodeVariables [
	^ #(#type #arguments)
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> type: aKotlinUserTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinUserTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
