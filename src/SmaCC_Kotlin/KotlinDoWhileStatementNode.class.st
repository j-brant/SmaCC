Class {
	#name : 'KotlinDoWhileStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'doToken',
		'whileToken',
		'leftParen',
		'condition',
		'rightParen',
		'body'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinDoWhileStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitDoWhileStatement: self
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> body: aKotlinNodeNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinNodeNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> condition [
	^ condition
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> condition: aKotlinExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aKotlinExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> doToken [
	^ doToken
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> nodeVariables [
	^ #(#condition #body)
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> tokenVariables [
	^ #(#doToken #whileToken #leftParen #rightParen)
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> whileToken [
	^ whileToken
]

{ #category : 'generated' }
KotlinDoWhileStatementNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
