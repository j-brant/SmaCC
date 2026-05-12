Class {
	#name : 'KotlinCallSuffixNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'lambda',
		'arguments',
		'typeArgument'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinCallSuffixNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitCallSuffix: self
]

{ #category : 'generated' }
KotlinCallSuffixNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
KotlinCallSuffixNode >> arguments: aKotlinValueArgumentsNode [
	self arguments notNil ifTrue: [ self arguments parent: nil ].
	arguments := aKotlinValueArgumentsNode.
	self arguments notNil ifTrue: [ self arguments parent: self ]
]

{ #category : 'generated' }
KotlinCallSuffixNode >> lambda [
	^ lambda
]

{ #category : 'generated' }
KotlinCallSuffixNode >> lambda: aKotlinLambdaExpressionNode [
	self lambda notNil ifTrue: [ self lambda parent: nil ].
	lambda := aKotlinLambdaExpressionNode.
	self lambda notNil ifTrue: [ self lambda parent: self ]
]

{ #category : 'generated' }
KotlinCallSuffixNode >> nodeVariables [
	^ #(#lambda #arguments #typeArgument)
]

{ #category : 'generated' }
KotlinCallSuffixNode >> typeArgument [
	^ typeArgument
]

{ #category : 'generated' }
KotlinCallSuffixNode >> typeArgument: aKotlinTypeArgumentsNode [
	self typeArgument notNil ifTrue: [ self typeArgument parent: nil ].
	typeArgument := aKotlinTypeArgumentsNode.
	self typeArgument notNil ifTrue: [ self typeArgument parent: self ]
]
