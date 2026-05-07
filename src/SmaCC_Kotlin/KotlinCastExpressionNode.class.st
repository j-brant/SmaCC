Class {
	#name : 'KotlinCastExpressionNode',
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
KotlinCastExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitCastExpression: self
]

{ #category : 'generated' }
KotlinCastExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinCastExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinCastExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : 'generated' }
KotlinCastExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinCastExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinCastExpressionNode >> tokenVariables [
	^ #(#operator)
]

{ #category : 'generated' }
KotlinCastExpressionNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinCastExpressionNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
