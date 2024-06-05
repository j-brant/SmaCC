Class {
	#name : #PyEllipsisNode,
	#superclass : #PyRootNode,
	#instVars : [
		'periodTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyEllipsisNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitEllipsis: self
]

{ #category : #generated }
PyEllipsisNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #'generated-initialize-release' }
PyEllipsisNode >> initialize [
	super initialize.
	periodTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyEllipsisNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
PyEllipsisNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]
