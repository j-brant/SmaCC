Class {
	#name : #CSLambdaExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'leftParenToken',
		'parameters',
		'commaTokens',
		'rightParenToken',
		'equalGreaterThanToken',
		'body',
		'asyncToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSLambdaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLambdaExpression: self
]

{ #category : #generated }
CSLambdaExpressionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
CSLambdaExpressionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
CSLambdaExpressionNode >> body [
	^ body
]

{ #category : #generated }
CSLambdaExpressionNode >> body: aCSProgramNode [
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aCSProgramNode.
	self body notNil
		ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CSLambdaExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSLambdaExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSLambdaExpressionNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
CSLambdaExpressionNode >> equalGreaterThanToken [
	^ equalGreaterThanToken
]

{ #category : #generated }
CSLambdaExpressionNode >> equalGreaterThanToken: aSmaCCToken [
	equalGreaterThanToken := aSmaCCToken
]

{ #category : #generated }
CSLambdaExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens #_leftParens #_rightParens)
]

{ #category : #'generated-initialize-release' }
CSLambdaExpressionNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSLambdaExpressionNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
CSLambdaExpressionNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
CSLambdaExpressionNode >> nodeVariables [
	^ #(#type #body)
]

{ #category : #generated }
CSLambdaExpressionNode >> parameters [
	^ parameters
]

{ #category : #generated }
CSLambdaExpressionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CSLambdaExpressionNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
CSLambdaExpressionNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
CSLambdaExpressionNode >> tokenVariables [
	^ #(#leftParenToken #rightParenToken #equalGreaterThanToken #asyncToken)
]

{ #category : #generated }
CSLambdaExpressionNode >> type [
	^ type
]

{ #category : #generated }
CSLambdaExpressionNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
