Class {
	#name : 'KotlinIsExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'expression',
		'operator',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinIsExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitIsExpression: self
]

{ #category : 'generated' }
KotlinIsExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinIsExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinIsExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : 'generated' }
KotlinIsExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinIsExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinIsExpressionNode >> tokenVariables [
	^ #(#operator)
]

{ #category : 'generated' }
KotlinIsExpressionNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinIsExpressionNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
