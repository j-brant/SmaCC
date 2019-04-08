Class {
	#name : #CPPTemplateIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name',
		'ltToken',
		'gtToken',
		'arguments',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTemplateIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTemplateIdentifier: self
]

{ #category : #generated }
CPPTemplateIdentifierNode >> arguments [
	^ arguments
]

{ #category : #generated }
CPPTemplateIdentifierNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CPPTemplateIdentifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPTemplateIdentifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPTemplateIdentifierNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
CPPTemplateIdentifierNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPTemplateIdentifierNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPTemplateIdentifierNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPTemplateIdentifierNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPTemplateIdentifierNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPTemplateIdentifierNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTemplateIdentifierNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPTemplateIdentifierNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateIdentifierNode >> name [
	^ name
]

{ #category : #generated }
CPPTemplateIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPTemplateIdentifierNode >> tokenVariables [
	^ #(#name #ltToken #gtToken)
]
