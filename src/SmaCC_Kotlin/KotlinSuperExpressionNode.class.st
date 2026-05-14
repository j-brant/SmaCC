Class {
	#name : 'KotlinSuperExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'superToken',
		'atToken',
		'_at',
		'lt',
		'type',
		'gt'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinSuperExpressionNode >> _at [
	^ _at
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> _at: aSmaCCToken [
	_at := aSmaCCToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitSuperExpression: self
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> atToken [
	^ atToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> gt [
	^ gt
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> lt [
	^ lt
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> superToken [
	^ superToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> superToken: aSmaCCToken [
	superToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> tokenVariables [
	^ #(#superToken #atToken #_at #lt #gt)
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinSuperExpressionNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
