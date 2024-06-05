Class {
	#name : #PySubscriptExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'receiver',
		'lbrackToken',
		'subscripts',
		'commaTokens',
		'rbrackToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PySubscriptExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitSubscriptExpression: self
]

{ #category : #generated }
PySubscriptExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PySubscriptExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PySubscriptExpressionNode >> compositeNodeVariables [
	^ #(#subscripts)
]

{ #category : #generated }
PySubscriptExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
PySubscriptExpressionNode >> initialize [
	super initialize.
	subscripts := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PySubscriptExpressionNode >> lbrackToken [
	^ lbrackToken
]

{ #category : #generated }
PySubscriptExpressionNode >> lbrackToken: aSmaCCToken [
	lbrackToken := aSmaCCToken
]

{ #category : #generated }
PySubscriptExpressionNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : #generated }
PySubscriptExpressionNode >> rbrackToken [
	^ rbrackToken
]

{ #category : #generated }
PySubscriptExpressionNode >> rbrackToken: aSmaCCToken [
	rbrackToken := aSmaCCToken
]

{ #category : #generated }
PySubscriptExpressionNode >> receiver [
	^ receiver
]

{ #category : #generated }
PySubscriptExpressionNode >> receiver: aPyExpressionNode [
	self receiver notNil ifTrue: [ self receiver parent: nil ].
	receiver := aPyExpressionNode.
	self receiver notNil ifTrue: [ self receiver parent: self ]
]

{ #category : #generated }
PySubscriptExpressionNode >> subscripts [
	^ subscripts
]

{ #category : #generated }
PySubscriptExpressionNode >> subscripts: anOrderedCollection [
	self setParents: self subscripts to: nil.
	subscripts := anOrderedCollection.
	self setParents: self subscripts to: self
]

{ #category : #generated }
PySubscriptExpressionNode >> tokenVariables [
	^ #(#lbrackToken #rbrackToken)
]
