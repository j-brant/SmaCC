Class {
	#name : #CPPAttributeSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftBrackets',
		'_attributes',
		'commas',
		'ellipsises',
		'rightBrackets'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAttributeSpecifierNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CPPAttributeSpecifierNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CPPAttributeSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeSpecifier: self
]

{ #category : #generated }
CPPAttributeSpecifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPAttributeSpecifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPAttributeSpecifierNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #generated }
CPPAttributeSpecifierNode >> compositeTokenVariables [
	^ #(#leftBrackets #commas #ellipsises #rightBrackets)
]

{ #category : #generated }
CPPAttributeSpecifierNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPAttributeSpecifierNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPAttributeSpecifierNode >> initialize [
	super initialize.
	leftBrackets := OrderedCollection new: 2.
	_attributes := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAttributeSpecifierNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPAttributeSpecifierNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]
