Class {
	#name : #CPPAbstractDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftParens',
		'ellipsises',
		'declarations',
		'commas',
		'rightParens',
		'specifiers',
		'exceptionSpecifications',
		'qualifiers',
		'cvQualifiers',
		'arrow',
		'declarators',
		'leftBrackets',
		'rightBrackets',
		'expressions'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAbstractDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAbstractDeclarator: self
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> arrow [
	^ arrow
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> commas [
	^ commas
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> compositeNodeVariables [
	^ #(#declarations #specifiers #exceptionSpecifications #cvQualifiers #declarators #expressions)
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> compositeTokenVariables [
	^ #(#leftParens #ellipsises #commas #rightParens #qualifiers #leftBrackets #rightBrackets)
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> cvQualifiers [
	^ cvQualifiers
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> cvQualifiers: anOrderedCollection [
	self setParents: self cvQualifiers to: nil.
	cvQualifiers := anOrderedCollection.
	self setParents: self cvQualifiers to: self
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> declarators [
	^ declarators
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> declarators: anOrderedCollection [
	self setParents: self declarators to: nil.
	declarators := anOrderedCollection.
	self setParents: self declarators to: self
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
CPPAbstractDeclaratorNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	exceptionSpecifications := OrderedCollection new: 2.
	qualifiers := OrderedCollection new: 2.
	cvQualifiers := OrderedCollection new: 2.
	declarators := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> qualifiers [
	^ qualifiers
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> qualifiers: anOrderedCollection [
	qualifiers := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPAbstractDeclaratorNode >> tokenVariables [
	^ #(#arrow)
]
