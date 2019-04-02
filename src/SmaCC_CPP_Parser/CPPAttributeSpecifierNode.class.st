Class {
	#name : #CPPAttributeSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftBrackets',
		'colonColons',
		'leftParens',
		'rightParens',
		'commas',
		'ellipsises',
		'rightBrackets',
		'leftBraces',
		'rightBraces'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPAttributeSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeSpecifier: self
]

{ #category : #generated }
CPPAttributeSpecifierNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPAttributeSpecifierNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
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
CPPAttributeSpecifierNode >> compositeTokenVariables [
	^ #(#leftBrackets #colonColons #leftParens #rightParens #rightBrackets #leftBraces #rightBraces #commas #ellipsises)
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
	colonColons := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	leftBraces := OrderedCollection new: 2.
	rightBraces := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAttributeSpecifierNode >> leftBraces [
	^ leftBraces
]

{ #category : #generated }
CPPAttributeSpecifierNode >> leftBraces: anOrderedCollection [
	leftBraces := anOrderedCollection
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
CPPAttributeSpecifierNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPAttributeSpecifierNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightBraces [
	^ rightBraces
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightBraces: anOrderedCollection [
	rightBraces := anOrderedCollection
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPAttributeSpecifierNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
