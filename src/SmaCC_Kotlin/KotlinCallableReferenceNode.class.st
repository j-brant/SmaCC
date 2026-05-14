Class {
	#name : 'KotlinCallableReferenceNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'colonColonToken',
		'name',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinCallableReferenceNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitCallableReference: self
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> colonColonToken [
	^ colonColonToken
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> colonColonToken: aSmaCCToken [
	colonColonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> tokenVariables [
	^ #(#colonColonToken #name)
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinCallableReferenceNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
