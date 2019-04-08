Class {
	#name : #CPPPtrAbstractDeclaratorNode,
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
		'declarator',
		'ellipsises',
		'commas',
		'cvQualifiers',
		'declarations',
		'ptrOperators'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPtrAbstractDeclarator: self
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> commas [
	^ commas
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> compositeNodeVariables [
	^ #(#specifiers #exceptionSpecifications #expressions #cvQualifiers #declarations #ptrOperators)
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens #qualifiers #leftBrackets #rightBrackets #ellipsises #commas)
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> cvQualifiers [
	^ cvQualifiers
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> cvQualifiers: anOrderedCollection [
	self setParents: self cvQualifiers to: nil.
	cvQualifiers := anOrderedCollection.
	self setParents: self cvQualifiers to: self
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> declarator: aCPPPtrAbstractDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPPtrAbstractDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
CPPPtrAbstractDeclaratorNode >> initialize [
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
CPPPtrAbstractDeclaratorNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> ptrOperators [
	^ ptrOperators
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> ptrOperators: anOrderedCollection [
	self setParents: self ptrOperators to: nil.
	ptrOperators := anOrderedCollection.
	self setParents: self ptrOperators to: self
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> qualifiers [
	^ qualifiers
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> qualifiers: anOrderedCollection [
	qualifiers := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPPtrAbstractDeclaratorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
