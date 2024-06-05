Class {
	#name : #PyFileNode,
	#superclass : #PyRootNode,
	#instVars : [
		'statements'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyFileNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitFile: self
]

{ #category : #generated }
PyFileNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #'generated-initialize-release' }
PyFileNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyFileNode >> statements [
	^ statements
]

{ #category : #generated }
PyFileNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
