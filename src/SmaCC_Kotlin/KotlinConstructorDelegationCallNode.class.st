Class {
	#name : 'KotlinConstructorDelegationCallNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'targetToken',
		'arguments'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitConstructorDelegationCall: self
]

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> arguments: aKotlinValueArgumentsNode [
	self arguments notNil ifTrue: [ self arguments parent: nil ].
	arguments := aKotlinValueArgumentsNode.
	self arguments notNil ifTrue: [ self arguments parent: self ]
]

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> nodeVariables [
	^ #(#arguments)
]

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> targetToken [
	^ targetToken
]

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> targetToken: aSmaCCToken [
	targetToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinConstructorDelegationCallNode >> tokenVariables [
	^ #(#targetToken)
]
