Class {
	#name : #PyEvalInputNode,
	#superclass : #PyRootNode,
	#instVars : [
		'testlist',
		'nEWLINETokens'
	],
	#category : 'SmaCC_Python'
}

{ #category : #generated }
PyEvalInputNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitEvalInput: self
]

{ #category : #generated }
PyEvalInputNode >> compositeTokenVariables [
	^ #(#nEWLINETokens)
]

{ #category : #'generated-initialize-release' }
PyEvalInputNode >> initialize [
	super initialize.
	nEWLINETokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyEvalInputNode >> nEWLINETokens [
	^ nEWLINETokens
]

{ #category : #generated }
PyEvalInputNode >> nEWLINETokens: anOrderedCollection [
	nEWLINETokens := anOrderedCollection
]

{ #category : #generated }
PyEvalInputNode >> nodeVariables [
	^ #(#testlist)
]

{ #category : #generated }
PyEvalInputNode >> testlist [
	^ testlist
]

{ #category : #generated }
PyEvalInputNode >> testlist: aPyRootNode [
	self testlist notNil
		ifTrue: [ self testlist parent: nil ].
	testlist := aPyRootNode.
	self testlist notNil
		ifTrue: [ self testlist parent: self ]
]
