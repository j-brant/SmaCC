Class {
	#name : #CPPDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'id',
		'ellipsises',
		'specifiers',
		'leftBrackets',
		'rightBrackets',
		'expressions',
		'leftParens',
		'ptrOperators',
		'rightParens',
		'exceptionSpecifications',
		'qualifiers',
		'commas',
		'cvQualifiers',
		'declarations',
		'arrow',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeclarator: self
]

{ #category : #generated }
CPPDeclaratorNode >> arrow [
	^ arrow
]

{ #category : #generated }
CPPDeclaratorNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
CPPDeclaratorNode >> commas [
	^ commas
]

{ #category : #generated }
CPPDeclaratorNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> compositeNodeVariables [
	^ #(#specifiers #expressions #ptrOperators #exceptionSpecifications #cvQualifiers #declarations)
]

{ #category : #generated }
CPPDeclaratorNode >> compositeTokenVariables [
	^ #(#ellipsises #leftBrackets #rightBrackets #leftParens #rightParens #qualifiers #commas)
]

{ #category : #generated }
CPPDeclaratorNode >> cvQualifiers [
	^ cvQualifiers
]

{ #category : #generated }
CPPDeclaratorNode >> cvQualifiers: anOrderedCollection [
	self setParents: self cvQualifiers to: nil.
	cvQualifiers := anOrderedCollection.
	self setParents: self cvQualifiers to: self
]

{ #category : #generated }
CPPDeclaratorNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPDeclaratorNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPDeclaratorNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPDeclaratorNode >> declarator: aCPPProgramNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPProgramNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPDeclaratorNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPDeclaratorNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPDeclaratorNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPDeclaratorNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPDeclaratorNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
CPPDeclaratorNode >> id [
	^ id
]

{ #category : #generated }
CPPDeclaratorNode >> id: aCPPIdentifierExpressionNode [
	self id notNil
		ifTrue: [ self id parent: nil ].
	id := aCPPIdentifierExpressionNode.
	self id notNil
		ifTrue: [ self id parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPDeclaratorNode >> initialize [
	super initialize.
	ellipsises := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	ptrOperators := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	exceptionSpecifications := OrderedCollection new: 2.
	qualifiers := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	cvQualifiers := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
CPPDeclaratorNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPDeclaratorNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPDeclaratorNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> nodeVariables [
	^ #(#id #declarator)
]

{ #category : #generated }
CPPDeclaratorNode >> ptrOperators [
	^ ptrOperators
]

{ #category : #generated }
CPPDeclaratorNode >> ptrOperators: anOrderedCollection [
	self setParents: self ptrOperators to: nil.
	ptrOperators := anOrderedCollection.
	self setParents: self ptrOperators to: self
]

{ #category : #generated }
CPPDeclaratorNode >> qualifiers [
	^ qualifiers
]

{ #category : #generated }
CPPDeclaratorNode >> qualifiers: anOrderedCollection [
	qualifiers := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPDeclaratorNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPDeclaratorNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPDeclaratorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPDeclaratorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPDeclaratorNode >> tokenVariables [
	^ #(#arrow)
]
