Class {
	#name : #PyAwaitNode,
	#superclass : #PyRootNode,
	#instVars : [
		'awaitToken',
		'atom',
		'trailers'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAwaitNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAwait: self
]

{ #category : #generated }
PyAwaitNode >> atom [
	^ atom
]

{ #category : #generated }
PyAwaitNode >> atom: aPyRootNode [
	self atom notNil ifTrue: [ self atom parent: nil ].
	atom := aPyRootNode.
	self atom notNil ifTrue: [ self atom parent: self ]
]

{ #category : #generated }
PyAwaitNode >> awaitToken [
	^ awaitToken
]

{ #category : #generated }
PyAwaitNode >> awaitToken: aSmaCCToken [
	awaitToken := aSmaCCToken
]

{ #category : #generated }
PyAwaitNode >> compositeNodeVariables [
	^ #(#trailers)
]

{ #category : #'generated-initialize-release' }
PyAwaitNode >> initialize [
	super initialize.
	trailers := OrderedCollection new: 2.
]

{ #category : #generated }
PyAwaitNode >> nodeVariables [
	^ #(#atom)
]

{ #category : #generated }
PyAwaitNode >> tokenVariables [
	^ #(#awaitToken)
]

{ #category : #generated }
PyAwaitNode >> trailers [
	^ trailers
]

{ #category : #generated }
PyAwaitNode >> trailers: anOrderedCollection [
	self setParents: self trailers to: nil.
	trailers := anOrderedCollection.
	self setParents: self trailers to: self
]
