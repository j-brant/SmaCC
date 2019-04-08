Class {
	#name : #CPPOperatorFunctionTemplateIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'identifier',
		'ltToken',
		'gtToken',
		'arguments',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperatorFunctionTemplateIdentifier: self
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> arguments [
	^ arguments
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> identifier [
	^ identifier
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> identifier: aCPPProgramNode [
	self identifier notNil
		ifTrue: [ self identifier parent: nil ].
	identifier := aCPPProgramNode.
	self identifier notNil
		ifTrue: [ self identifier parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPOperatorFunctionTemplateIdentifierNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> nodeVariables [
	^ #(#identifier)
]

{ #category : #generated }
CPPOperatorFunctionTemplateIdentifierNode >> tokenVariables [
	^ #(#ltToken #gtToken)
]
