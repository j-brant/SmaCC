Class {
	#name : #PyTryStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'tryToken',
		'colonTokens',
		'statements',
		'clauses',
		'else',
		'finally'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyTryStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitTryStatement: self
]

{ #category : #generated }
PyTryStatementNode >> clauses [
	^ clauses
]

{ #category : #generated }
PyTryStatementNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
PyTryStatementNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
PyTryStatementNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
PyTryStatementNode >> compositeNodeVariables [
	^ #(#statements #clauses)
]

{ #category : #generated }
PyTryStatementNode >> compositeTokenVariables [
	^ #(#colonTokens)
]

{ #category : #generated }
PyTryStatementNode >> else [
	^ else
]

{ #category : #generated }
PyTryStatementNode >> else: aPyElseNode [
	self else notNil ifTrue: [ self else parent: nil ].
	else := aPyElseNode.
	self else notNil ifTrue: [ self else parent: self ]
]

{ #category : #generated }
PyTryStatementNode >> finally [
	^ finally
]

{ #category : #generated }
PyTryStatementNode >> finally: aPyFinallyNode [
	self finally notNil ifTrue: [ self finally parent: nil ].
	finally := aPyFinallyNode.
	self finally notNil ifTrue: [ self finally parent: self ]
]

{ #category : #'generated-initialize-release' }
PyTryStatementNode >> initialize [
	super initialize.
	colonTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
PyTryStatementNode >> nodeVariables [
	^ #(#else #finally)
]

{ #category : #generated }
PyTryStatementNode >> statements [
	^ statements
]

{ #category : #generated }
PyTryStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyTryStatementNode >> tokenVariables [
	^ #(#tryToken #semicolonToken)
]

{ #category : #generated }
PyTryStatementNode >> tryToken [
	^ tryToken
]

{ #category : #generated }
PyTryStatementNode >> tryToken: aSmaCCToken [
	tryToken := aSmaCCToken
]
