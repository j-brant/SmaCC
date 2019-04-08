Class {
	#name : #CPPNewDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'ptrOperators',
		'leftBrackets',
		'expressions',
		'rightBrackets',
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNewDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewDeclarator: self
]

{ #category : #generated }
CPPNewDeclaratorNode >> compositeNodeVariables [
	^ #(#ptrOperators #expressions #specifiers)
]

{ #category : #generated }
CPPNewDeclaratorNode >> compositeTokenVariables [
	^ #(#leftBrackets #rightBrackets)
]

{ #category : #generated }
CPPNewDeclaratorNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPNewDeclaratorNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
CPPNewDeclaratorNode >> initialize [
	super initialize.
	ptrOperators := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNewDeclaratorNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPNewDeclaratorNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPNewDeclaratorNode >> ptrOperators [
	^ ptrOperators
]

{ #category : #generated }
CPPNewDeclaratorNode >> ptrOperators: anOrderedCollection [
	self setParents: self ptrOperators to: nil.
	ptrOperators := anOrderedCollection.
	self setParents: self ptrOperators to: self
]

{ #category : #generated }
CPPNewDeclaratorNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPNewDeclaratorNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPNewDeclaratorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPNewDeclaratorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
