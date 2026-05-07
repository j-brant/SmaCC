Class {
	#name : 'KotlinConstructorInvocationNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'type',
		'argument'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinConstructorInvocationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitConstructorInvocation: self
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> argument [
	^ argument
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> argument: aKotlinValueArgumentsNode [
	self argument notNil ifTrue: [ self argument parent: nil ].
	argument := aKotlinValueArgumentsNode.
	self argument notNil ifTrue: [ self argument parent: self ]
]

{ #category : 'generated' }
KotlinConstructorInvocationNode >> nodeVariables [
	^ #(#type #argument)
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
