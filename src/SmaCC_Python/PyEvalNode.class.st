Class {
	#name : #PyEvalNode,
	#superclass : #PyRootNode,
	#instVars : [
		'expressions',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyEvalNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitEval: self
]

{ #category : #generated }
PyEvalNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyEvalNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyEvalNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyEvalNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyEvalNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyEvalNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyEvalNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]
