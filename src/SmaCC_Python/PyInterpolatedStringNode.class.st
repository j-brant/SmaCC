Class {
	#name : #PyInterpolatedStringNode,
	#superclass : #PyRootNode,
	#instVars : [
		'parts',
		'expressions'
	],
	#category : 'SmaCC_Python'
}

{ #category : #generated }
PyInterpolatedStringNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitInterpolatedString: self
]

{ #category : #generated }
PyInterpolatedStringNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyInterpolatedStringNode >> compositeTokenVariables [
	^ #(#parts)
]

{ #category : #generated }
PyInterpolatedStringNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyInterpolatedStringNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyInterpolatedStringNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
PyInterpolatedStringNode >> parts [
	^ parts
]

{ #category : #generated }
PyInterpolatedStringNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
