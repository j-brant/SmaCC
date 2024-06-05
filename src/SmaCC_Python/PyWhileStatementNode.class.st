Class {
	#name : #PyWhileStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'whileToken',
		'condition',
		'colonToken',
		'statements',
		'else'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyWhileStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitWhileStatement: self
]

{ #category : #generated }
PyWhileStatementNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyWhileStatementNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyWhileStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
PyWhileStatementNode >> condition [
	^ condition
]

{ #category : #generated }
PyWhileStatementNode >> condition: aPyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PyWhileStatementNode >> else [
	^ else
]

{ #category : #generated }
PyWhileStatementNode >> else: aPyElseNode [
	self else notNil ifTrue: [ self else parent: nil ].
	else := aPyElseNode.
	self else notNil ifTrue: [ self else parent: self ]
]

{ #category : #'generated-initialize-release' }
PyWhileStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyWhileStatementNode >> nodeVariables [
	^ #(#condition #else)
]

{ #category : #generated }
PyWhileStatementNode >> statements [
	^ statements
]

{ #category : #generated }
PyWhileStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyWhileStatementNode >> tokenVariables [
	^ #(#whileToken #colonToken #semicolonToken)
]

{ #category : #generated }
PyWhileStatementNode >> whileToken [
	^ whileToken
]

{ #category : #generated }
PyWhileStatementNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
