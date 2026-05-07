Class {
	#name : 'KotlinParameterNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'name',
		'colonToken',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinParameterNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitParameter: self
]

{ #category : 'generated' }
KotlinParameterNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinParameterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinParameterNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinParameterNode >> tokenVariables [
	^ #(#name #colonToken)
]

{ #category : 'generated' }
KotlinParameterNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinParameterNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
