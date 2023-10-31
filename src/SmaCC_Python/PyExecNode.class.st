Class {
	#name : #PyExecNode,
	#superclass : #PyRootNode,
	#instVars : [
		'execToken',
		'expr',
		'inToken',
		'tests',
		'commaToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyExecNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitExec: self
]

{ #category : #generated }
PyExecNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
PyExecNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
PyExecNode >> compositeNodeVariables [
	^ #(#tests)
]

{ #category : #generated }
PyExecNode >> execToken [
	^ execToken
]

{ #category : #generated }
PyExecNode >> execToken: aSmaCCToken [
	execToken := aSmaCCToken
]

{ #category : #generated }
PyExecNode >> expr [
	^ expr
]

{ #category : #generated }
PyExecNode >> expr: aPyRootNode [
	self expr notNil
		ifTrue: [ self expr parent: nil ].
	expr := aPyRootNode.
	self expr notNil
		ifTrue: [ self expr parent: self ]
]

{ #category : #generated }
PyExecNode >> inToken [
	^ inToken
]

{ #category : #generated }
PyExecNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyExecNode >> initialize [
	super initialize.
	tests := OrderedCollection new: 2.
]

{ #category : #generated }
PyExecNode >> nodeVariables [
	^ #(#expr)
]

{ #category : #generated }
PyExecNode >> tests [
	^ tests
]

{ #category : #generated }
PyExecNode >> tests: anOrderedCollection [
	self setParents: self tests to: nil.
	tests := anOrderedCollection.
	self setParents: self tests to: self
]

{ #category : #generated }
PyExecNode >> tokenVariables [
	^ #(#execToken #inToken #commaToken)
]
