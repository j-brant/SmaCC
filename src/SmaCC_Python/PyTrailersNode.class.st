Class {
	#name : #PyTrailersNode,
	#superclass : #PyRootNode,
	#instVars : [
		'atom',
		'trailers'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyTrailersNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitTrailers: self
]

{ #category : #generated }
PyTrailersNode >> atom [
	^ atom
]

{ #category : #generated }
PyTrailersNode >> atom: aPyRootNode [
	self atom notNil ifTrue: [ self atom parent: nil ].
	atom := aPyRootNode.
	self atom notNil ifTrue: [ self atom parent: self ]
]

{ #category : #generated }
PyTrailersNode >> compositeNodeVariables [
	^ #(#trailers)
]

{ #category : #'generated-initialize-release' }
PyTrailersNode >> initialize [
	super initialize.
	trailers := OrderedCollection new: 2.
]

{ #category : #generated }
PyTrailersNode >> nodeVariables [
	^ #(#atom)
]

{ #category : #generated }
PyTrailersNode >> trailers [
	^ trailers
]

{ #category : #generated }
PyTrailersNode >> trailers: anOrderedCollection [
	self setParents: self trailers to: nil.
	trailers := anOrderedCollection.
	self setParents: self trailers to: self
]
