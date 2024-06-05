Class {
	#name : #PyIfStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'ifToken',
		'condition',
		'colonToken',
		'statements',
		'elsifs',
		'else'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyIfStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitIfStatement: self
]

{ #category : #generated }
PyIfStatementNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyIfStatementNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyIfStatementNode >> compositeNodeVariables [
	^ #(#statements #elsifs)
]

{ #category : #generated }
PyIfStatementNode >> condition [
	^ condition
]

{ #category : #generated }
PyIfStatementNode >> condition: aPyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PyIfStatementNode >> else [
	^ else
]

{ #category : #generated }
PyIfStatementNode >> else: aPyElseNode [
	self else notNil ifTrue: [ self else parent: nil ].
	else := aPyElseNode.
	self else notNil ifTrue: [ self else parent: self ]
]

{ #category : #generated }
PyIfStatementNode >> elsifs [
	^ elsifs
]

{ #category : #generated }
PyIfStatementNode >> elsifs: anOrderedCollection [
	self setParents: self elsifs to: nil.
	elsifs := anOrderedCollection.
	self setParents: self elsifs to: self
]

{ #category : #generated }
PyIfStatementNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
PyIfStatementNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyIfStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	elsifs := OrderedCollection new: 2.
]

{ #category : #generated }
PyIfStatementNode >> nodeVariables [
	^ #(#condition #else)
]

{ #category : #generated }
PyIfStatementNode >> statements [
	^ statements
]

{ #category : #generated }
PyIfStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyIfStatementNode >> tokenVariables [
	^ #(#ifToken #colonToken #semicolonToken)
]
