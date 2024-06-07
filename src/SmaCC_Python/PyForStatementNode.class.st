Class {
	#name : #PyForStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'forToken',
		'exprs',
		'commaTokens',
		'inToken',
		'inExpression',
		'colonToken',
		'statements',
		'else'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyForStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitForStatement: self
]

{ #category : #generated }
PyForStatementNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyForStatementNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyForStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyForStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyForStatementNode >> compositeNodeVariables [
	^ #(#exprs #statements)
]

{ #category : #generated }
PyForStatementNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyForStatementNode >> else [
	^ else
]

{ #category : #generated }
PyForStatementNode >> else: aPyElseNode [
	self else notNil ifTrue: [ self else parent: nil ].
	else := aPyElseNode.
	self else notNil ifTrue: [ self else parent: self ]
]

{ #category : #generated }
PyForStatementNode >> exprs [
	^ exprs
]

{ #category : #generated }
PyForStatementNode >> exprs: anOrderedCollection [
	self setParents: self exprs to: nil.
	exprs := anOrderedCollection.
	self setParents: self exprs to: self
]

{ #category : #generated }
PyForStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
PyForStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
PyForStatementNode >> inExpression [
	^ inExpression
]

{ #category : #generated }
PyForStatementNode >> inExpression: aPyExpressionNode [
	self inExpression notNil ifTrue: [ self inExpression parent: nil ].
	inExpression := aPyExpressionNode.
	self inExpression notNil ifTrue: [ self inExpression parent: self ]
]

{ #category : #generated }
PyForStatementNode >> inToken [
	^ inToken
]

{ #category : #generated }
PyForStatementNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyForStatementNode >> initialize [
	super initialize.
	exprs := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyForStatementNode >> nodeVariables [
	^ #(#inExpression #else)
]

{ #category : #generated }
PyForStatementNode >> statements [
	^ statements
]

{ #category : #generated }
PyForStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyForStatementNode >> tokenVariables [
	^ #(#forToken #inToken #colonToken #semicolonToken)
]
