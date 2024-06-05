Class {
	#name : #PyElifNode,
	#superclass : #PyRootNode,
	#instVars : [
		'elifToken',
		'condition',
		'colonToken',
		'statements'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyElifNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitElif: self
]

{ #category : #generated }
PyElifNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyElifNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyElifNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
PyElifNode >> condition [
	^ condition
]

{ #category : #generated }
PyElifNode >> condition: aPyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PyElifNode >> elifToken [
	^ elifToken
]

{ #category : #generated }
PyElifNode >> elifToken: aSmaCCToken [
	elifToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyElifNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyElifNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
PyElifNode >> statements [
	^ statements
]

{ #category : #generated }
PyElifNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyElifNode >> tokenVariables [
	^ #(#elifToken #colonToken)
]
