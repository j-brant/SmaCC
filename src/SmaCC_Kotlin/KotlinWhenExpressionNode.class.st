Class {
	#name : 'KotlinWhenExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'whenToken',
		'leftBrace',
		'entries',
		'rightBrace',
		'expression',
		'annotations',
		'valToken',
		'variableDeclaration',
		'operator'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinWhenExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitWhenExpression: self
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> compositeNodeVariables [
	^ #(#entries #annotations)
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

{ #category : 'generated' }
KotlinWhenExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
KotlinWhenExpressionNode >> initialize [
	super initialize.
	entries := OrderedCollection new: 2.
	annotations := OrderedCollection new: 2.
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
	^ #(#expression #variableDeclaration)
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
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
KotlinWhenExpressionNode >> tokenVariables [
	^ #(#whenToken #leftBrace #rightBrace #valToken #operator)
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> valToken [
	^ valToken
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> valToken: aSmaCCToken [
	valToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> variableDeclaration [
	^ variableDeclaration
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> variableDeclaration: aKotlinVariableDeclarationNode [
	self variableDeclaration notNil
		ifTrue: [ self variableDeclaration parent: nil ].
	variableDeclaration := aKotlinVariableDeclarationNode.
	self variableDeclaration notNil
		ifTrue: [ self variableDeclaration parent: self ]
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> whenToken [
	^ whenToken
]

{ #category : 'generated' }
KotlinWhenExpressionNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
