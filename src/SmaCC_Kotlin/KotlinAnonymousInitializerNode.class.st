Class {
	#name : 'KotlinAnonymousInitializerNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'initToken',
		'block'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnonymousInitializer: self
]

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> block [
	^ block
]

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> block: aKotlinBlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aKotlinBlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> initToken [
	^ initToken
]

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> initToken: aSmaCCToken [
	initToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> nodeVariables [
	^ #(#block)
]

{ #category : 'generated' }
KotlinAnonymousInitializerNode >> tokenVariables [
	^ #(#initToken)
]
