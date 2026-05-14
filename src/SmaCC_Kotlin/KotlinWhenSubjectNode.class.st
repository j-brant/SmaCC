Class {
	#name : 'KotlinWhenSubjectNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'leftParen',
		'expression',
		'rightParen',
		'annotations',
		'valToken',
		'variableDeclaration',
		'operator'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinWhenSubjectNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitWhenSubject: self
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
KotlinWhenSubjectNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> nodeVariables [
	^ #(#expression #variableDeclaration)
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> tokenVariables [
	^ #(#leftParen #rightParen #valToken #operator)
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> valToken [
	^ valToken
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> valToken: aSmaCCToken [
	valToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> variableDeclaration [
	^ variableDeclaration
]

{ #category : 'generated' }
KotlinWhenSubjectNode >> variableDeclaration: aKotlinVariableDeclarationNode [
	self variableDeclaration notNil
		ifTrue: [ self variableDeclaration parent: nil ].
	variableDeclaration := aKotlinVariableDeclarationNode.
	self variableDeclaration notNil
		ifTrue: [ self variableDeclaration parent: self ]
]
