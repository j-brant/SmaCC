Class {
	#name : 'KotlinCallSuffixNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'lambda',
		'argument',
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
KotlinCallSuffixNode >> argument [
	^ argument
]

{ #category : 'generated' }
KotlinCallSuffixNode >> argument: aKotlinValueArgumentsNode [
	self argument notNil ifTrue: [ self argument parent: nil ].
	argument := aKotlinValueArgumentsNode.
	self argument notNil ifTrue: [ self argument parent: self ]
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
	^ #(#lambda #argument #typeArgument)
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
