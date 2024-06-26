Class {
	#name : #PyFinallyNode,
	#superclass : #PyRootNode,
	#instVars : [
		'finallyToken',
		'colonToken',
		'statements'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyFinallyNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitFinally: self
]

{ #category : #generated }
PyFinallyNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyFinallyNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyFinallyNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
PyFinallyNode >> finallyToken [
	^ finallyToken
]

{ #category : #generated }
PyFinallyNode >> finallyToken: aSmaCCToken [
	finallyToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyFinallyNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyFinallyNode >> statements [
	^ statements
]

{ #category : #generated }
PyFinallyNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyFinallyNode >> tokenVariables [
	^ #(#finallyToken #colonToken)
]
