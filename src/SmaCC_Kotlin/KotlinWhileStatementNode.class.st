Class {
	#name : 'KotlinWhileStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'whileToken',
		'leftParen',
		'condition',
		'rightParen',
		'body',
		'semicolonToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinWhileStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitWhileStatement: self
]

{ #category : 'generated' }
KotlinWhileStatementNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinWhileStatementNode >> body: aKotlinNodeNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinNodeNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinWhileStatementNode >> condition [
	^ condition
]

{ #category : 'generated' }
KotlinWhileStatementNode >> condition: aKotlinExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aKotlinExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
KotlinWhileStatementNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinWhileStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhileStatementNode >> nodeVariables [
	^ #(#condition #body)
]

{ #category : 'generated' }
KotlinWhileStatementNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinWhileStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhileStatementNode >> semicolonToken [
	^ semicolonToken
]

{ #category : 'generated' }
KotlinWhileStatementNode >> semicolonToken: aSmaCCToken [
	semicolonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhileStatementNode >> tokenVariables [
	^ #(#whileToken #leftParen #rightParen #semicolonToken)
]

{ #category : 'generated' }
KotlinWhileStatementNode >> whileToken [
	^ whileToken
]

{ #category : 'generated' }
KotlinWhileStatementNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
