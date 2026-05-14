Class {
	#name : 'KotlinRangeTestNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'operator',
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinRangeTestNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitRangeTest: self
]

{ #category : 'generated' }
KotlinRangeTestNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinRangeTestNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinRangeTestNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
KotlinRangeTestNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinRangeTestNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinRangeTestNode >> tokenVariables [
	^ #(#operator)
]
