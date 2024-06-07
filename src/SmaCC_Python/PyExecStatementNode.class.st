Class {
	#name : #PyExecStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'execToken',
		'expr',
		'inToken',
		'values',
		'commaToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyExecStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitExecStatement: self
]

{ #category : #generated }
PyExecStatementNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
PyExecStatementNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
PyExecStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PyExecStatementNode >> execToken [
	^ execToken
]

{ #category : #generated }
PyExecStatementNode >> execToken: aSmaCCToken [
	execToken := aSmaCCToken
]

{ #category : #generated }
PyExecStatementNode >> expr [
	^ expr
]

{ #category : #generated }
PyExecStatementNode >> expr: aPyExpressionNode [
	self expr notNil ifTrue: [ self expr parent: nil ].
	expr := aPyExpressionNode.
	self expr notNil ifTrue: [ self expr parent: self ]
]

{ #category : #generated }
PyExecStatementNode >> inToken [
	^ inToken
]

{ #category : #generated }
PyExecStatementNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyExecStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PyExecStatementNode >> nodeVariables [
	^ #(#expr)
]

{ #category : #generated }
PyExecStatementNode >> tokenVariables [
	^ #(#execToken #inToken #commaToken #semicolonToken)
]

{ #category : #generated }
PyExecStatementNode >> values [
	^ values
]

{ #category : #generated }
PyExecStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
