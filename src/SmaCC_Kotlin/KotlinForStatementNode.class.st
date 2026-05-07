Class {
	#name : 'KotlinForStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'forToken',
		'leftParen',
		'annotations',
		'variable',
		'inToken',
		'_in',
		'rightParen',
		'body'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinForStatementNode >> _in [
	^ _in
]

{ #category : 'generated' }
KotlinForStatementNode >> _in: aKotlinExpressionNode [
	self _in notNil ifTrue: [ self _in parent: nil ].
	_in := aKotlinExpressionNode.
	self _in notNil ifTrue: [ self _in parent: self ]
]

{ #category : 'generated' }
KotlinForStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitForStatement: self
]

{ #category : 'generated' }
KotlinForStatementNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinForStatementNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinForStatementNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinForStatementNode >> body: aKotlinNodeNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinNodeNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinForStatementNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated' }
KotlinForStatementNode >> forToken [
	^ forToken
]

{ #category : 'generated' }
KotlinForStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinForStatementNode >> inToken [
	^ inToken
]

{ #category : 'generated' }
KotlinForStatementNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinForStatementNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinForStatementNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinForStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinForStatementNode >> nodeVariables [
	^ #(#variable #_in #body)
]

{ #category : 'generated' }
KotlinForStatementNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinForStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinForStatementNode >> tokenVariables [
	^ #(#forToken #leftParen #inToken #rightParen)
]

{ #category : 'generated' }
KotlinForStatementNode >> variable [
	^ variable
]

{ #category : 'generated' }
KotlinForStatementNode >> variable: aKotlinMemberNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aKotlinMemberNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
