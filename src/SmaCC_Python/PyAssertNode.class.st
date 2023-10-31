Class {
	#name : #PyAssertNode,
	#superclass : #PyRootNode,
	#instVars : [
		'assertToken',
		'tests',
		'commaToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAssertNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAssert: self
]

{ #category : #generated }
PyAssertNode >> assertToken [
	^ assertToken
]

{ #category : #generated }
PyAssertNode >> assertToken: aSmaCCToken [
	assertToken := aSmaCCToken
]

{ #category : #generated }
PyAssertNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
PyAssertNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
PyAssertNode >> compositeNodeVariables [
	^ #(#tests)
]

{ #category : #'generated-initialize-release' }
PyAssertNode >> initialize [
	super initialize.
	tests := OrderedCollection new: 2.
]

{ #category : #generated }
PyAssertNode >> tests [
	^ tests
]

{ #category : #generated }
PyAssertNode >> tests: anOrderedCollection [
	self setParents: self tests to: nil.
	tests := anOrderedCollection.
	self setParents: self tests to: self
]

{ #category : #generated }
PyAssertNode >> tokenVariables [
	^ #(#assertToken #commaToken)
]
