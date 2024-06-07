Class {
	#name : #PyStringNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'parts',
		'expressions'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyStringNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitString: self
]

{ #category : #generated }
PyStringNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyStringNode >> compositeTokenVariables [
	^ #(#parts)
]

{ #category : #generated }
PyStringNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyStringNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyStringNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
PyStringNode >> parts [
	^ parts
]

{ #category : #generated }
PyStringNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
