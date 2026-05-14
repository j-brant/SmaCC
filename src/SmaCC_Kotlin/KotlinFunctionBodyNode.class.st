Class {
	#name : 'KotlinFunctionBodyNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'body'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFunctionBodyNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFunctionBody: self
]

{ #category : 'generated' }
KotlinFunctionBodyNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinFunctionBodyNode >> body: aKotlinBlockNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinBlockNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinFunctionBodyNode >> nodeVariables [
	^ #(#body)
]
