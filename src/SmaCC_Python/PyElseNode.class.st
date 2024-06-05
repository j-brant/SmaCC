Class {
	#name : #PyElseNode,
	#superclass : #PyRootNode,
	#instVars : [
		'elseToken',
		'colonToken',
		'statements'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyElseNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitElse: self
]

{ #category : #generated }
PyElseNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyElseNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyElseNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
PyElseNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
PyElseNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyElseNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyElseNode >> statements [
	^ statements
]

{ #category : #generated }
PyElseNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyElseNode >> tokenVariables [
	^ #(#elseToken #colonToken)
]
