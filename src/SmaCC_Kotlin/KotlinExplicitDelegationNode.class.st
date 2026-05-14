Class {
	#name : 'KotlinExplicitDelegationNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'type',
		'byToken',
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinExplicitDelegationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitExplicitDelegation: self
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> byToken [
	^ byToken
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> byToken: aSmaCCToken [
	byToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> nodeVariables [
	^ #(#type #expression)
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> tokenVariables [
	^ #(#byToken)
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinExplicitDelegationNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
