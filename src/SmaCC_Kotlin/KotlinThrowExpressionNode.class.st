Class {
	#name : 'KotlinThrowExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'throwToken',
		'value'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinThrowExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitThrowExpression: self
]

{ #category : 'generated' }
KotlinThrowExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
KotlinThrowExpressionNode >> throwToken [
	^ throwToken
]

{ #category : 'generated' }
KotlinThrowExpressionNode >> throwToken: aSmaCCToken [
	throwToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinThrowExpressionNode >> tokenVariables [
	^ #(#throwToken)
]

{ #category : 'generated' }
KotlinThrowExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
KotlinThrowExpressionNode >> value: aKotlinExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aKotlinExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
