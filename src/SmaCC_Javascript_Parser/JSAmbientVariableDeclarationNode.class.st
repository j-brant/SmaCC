Class {
	#name : #JSAmbientVariableDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'typeToken',
		'bindings',
		'commas',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientVariableDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientVariableDeclaration: self
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> bindings [
	^ bindings
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> bindings: anOrderedCollection [
	self setParents: self bindings to: nil.
	bindings := anOrderedCollection.
	self setParents: self bindings to: self
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> compositeNodeVariables [
	^ #(#bindings)
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
JSAmbientVariableDeclarationNode >> initialize [
	super initialize.
	bindings := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> tokenVariables [
	^ #(#typeToken)
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
JSAmbientVariableDeclarationNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]
