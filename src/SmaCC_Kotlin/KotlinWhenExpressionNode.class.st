Class {
	#name : 'KotlinWhenExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'whenToken',
		'leftBrace',
		'entries',
		'rightBrace',
		'subject'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinWhenExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitWhenExpression: self
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> entries [
	^ entries
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : 'generated-initialize-release' }
KotlinWhenExpressionNode >> initialize [
	super initialize.
	entries := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> nodeVariables [
	^ #(#subject)
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> subject [
	^ subject
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> subject: aKotlinWhenSubjectNode [
	self subject notNil ifTrue: [ self subject parent: nil ].
	subject := aKotlinWhenSubjectNode.
	self subject notNil ifTrue: [ self subject parent: self ]
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> tokenVariables [
	^ #(#whenToken #leftBrace #rightBrace)
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> whenToken [
	^ whenToken
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
