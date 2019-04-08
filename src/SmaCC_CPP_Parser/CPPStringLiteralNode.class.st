Class {
	#name : #CPPStringLiteralNode,
	#superclass : #CPPLiteralNode,
	#instVars : [
		'values'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPStringLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStringLiteral: self
]

{ #category : #generated }
CPPStringLiteralNode >> compositeTokenVariables [
	^ #(#values #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CPPStringLiteralNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CPPStringLiteralNode >> values [
	^ values
]

{ #category : #generated }
CPPStringLiteralNode >> values: anOrderedCollection [
	values := anOrderedCollection
]
