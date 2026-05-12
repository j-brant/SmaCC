Class {
	#name : 'KotlinBinaryExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'left',
		'operator',
		'right',
		'operatorName'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinBinaryExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitBinaryExpression: self
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> left [
	^ left
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> left: aKotlinExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aKotlinExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operatorName [
	^ operatorName
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> right [
	^ right
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> right: aKotlinExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aKotlinExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> tokenVariables [
	^ #(#operator #operatorName)
]
