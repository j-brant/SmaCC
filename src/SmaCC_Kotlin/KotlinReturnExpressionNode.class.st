Class {
	#name : 'KotlinReturnExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'returnToken',
		'value'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinReturnExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitReturnExpression: self
]

{ #category : 'generated' }
KotlinReturnExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
KotlinReturnExpressionNode >> returnToken [
	^ returnToken
]

{ #category : 'generated' }
KotlinReturnExpressionNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinReturnExpressionNode >> tokenVariables [
	^ #(#returnToken)
]

{ #category : 'generated' }
KotlinReturnExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
KotlinReturnExpressionNode >> value: aKotlinExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aKotlinExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
