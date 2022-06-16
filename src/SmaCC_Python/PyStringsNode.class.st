Class {
	#name : #PyStringsNode,
	#superclass : #PyRootNode,
	#instVars : [
		'strings'
	],
	#category : 'SmaCC_Python'
}

{ #category : #generated }
PyStringsNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitStrings: self
]

{ #category : #generated }
PyStringsNode >> compositeNodeVariables [
	^ #(#strings)
]

{ #category : #'generated-initialize-release' }
PyStringsNode >> initialize [
	super initialize.
	strings := OrderedCollection new: 2.
]

{ #category : #generated }
PyStringsNode >> strings [
	^ strings
]

{ #category : #generated }
PyStringsNode >> strings: anOrderedCollection [
	self setParents: self strings to: nil.
	strings := anOrderedCollection.
	self setParents: self strings to: self
]
