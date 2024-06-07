Class {
	#name : #PyExceptClauseNode,
	#superclass : #PyRootNode,
	#instVars : [
		'exceptToken',
		'exception',
		'asToken',
		'variable',
		'commaToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyExceptClauseNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitExceptClause: self
]

{ #category : #generated }
PyExceptClauseNode >> asToken [
	^ asToken
]

{ #category : #generated }
PyExceptClauseNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
PyExceptClauseNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
PyExceptClauseNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
PyExceptClauseNode >> exceptToken [
	^ exceptToken
]

{ #category : #generated }
PyExceptClauseNode >> exceptToken: aSmaCCToken [
	exceptToken := aSmaCCToken
]

{ #category : #generated }
PyExceptClauseNode >> exception [
	^ exception
]

{ #category : #generated }
PyExceptClauseNode >> exception: aPyExpressionNode [
	self exception notNil ifTrue: [ self exception parent: nil ].
	exception := aPyExpressionNode.
	self exception notNil ifTrue: [ self exception parent: self ]
]

{ #category : #generated }
PyExceptClauseNode >> nodeVariables [
	^ #(#exception #variable)
]

{ #category : #generated }
PyExceptClauseNode >> tokenVariables [
	^ #(#exceptToken #asToken #commaToken)
]

{ #category : #generated }
PyExceptClauseNode >> variable [
	^ variable
]

{ #category : #generated }
PyExceptClauseNode >> variable: aPyExpressionNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aPyExpressionNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
