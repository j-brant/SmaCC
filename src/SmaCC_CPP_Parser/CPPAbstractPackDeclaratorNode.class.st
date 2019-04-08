Class {
	#name : #CPPAbstractPackDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftParens',
		'rightParens',
		'specifiers',
		'exceptionSpecifications',
		'qualifiers',
		'leftBrackets',
		'rightBrackets',
		'expressions',
		'ellipsises',
		'commas',
		'cvQualifiers',
		'declarations',
		'ptrOperators'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAbstractPackDeclarator: self
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> commas [
	^ commas
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> compositeNodeVariables [
	^ #(#specifiers #exceptionSpecifications #expressions #cvQualifiers #declarations #ptrOperators)
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens #qualifiers #leftBrackets #rightBrackets #ellipsises #commas)
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> cvQualifiers [
	^ cvQualifiers
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> cvQualifiers: anOrderedCollection [
	self setParents: self cvQualifiers to: nil.
	cvQualifiers := anOrderedCollection.
	self setParents: self cvQualifiers to: self
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
CPPAbstractPackDeclaratorNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	exceptionSpecifications := OrderedCollection new: 2.
	qualifiers := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	cvQualifiers := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	ptrOperators := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> ptrOperators [
	^ ptrOperators
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> ptrOperators: anOrderedCollection [
	self setParents: self ptrOperators to: nil.
	ptrOperators := anOrderedCollection.
	self setParents: self ptrOperators to: self
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> qualifiers [
	^ qualifiers
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> qualifiers: anOrderedCollection [
	qualifiers := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPAbstractPackDeclaratorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
