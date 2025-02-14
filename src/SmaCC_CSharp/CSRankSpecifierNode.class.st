Class {
	#name : #CSRankSpecifierNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'leftBracketToken',
		'commaTokens',
		'rightBracketToken',
		'expression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSRankSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRankSpecifier: self
]

{ #category : #generated }
CSRankSpecifierNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSRankSpecifierNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSRankSpecifierNode >> expression [
	^ expression
]

{ #category : #generated }
CSRankSpecifierNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSRankSpecifierNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSRankSpecifierNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSRankSpecifierNode >> leftBracketToken [
	^ leftBracketToken
]

{ #category : #generated }
CSRankSpecifierNode >> leftBracketToken: aSmaCCToken [
	leftBracketToken := aSmaCCToken
]

{ #category : #generated }
CSRankSpecifierNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CSRankSpecifierNode >> rightBracketToken [
	^ rightBracketToken
]

{ #category : #generated }
CSRankSpecifierNode >> rightBracketToken: aSmaCCToken [
	rightBracketToken := aSmaCCToken
]

{ #category : #generated }
CSRankSpecifierNode >> tokenVariables [
	^ #(#leftBracketToken #rightBracketToken)
]
