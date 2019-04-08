Class {
	#name : #CPPTemplateDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'templateToken',
		'ltToken',
		'parameters',
		'commas',
		'gtToken',
		'declaration'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTemplateDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTemplateDeclaration: self
]

{ #category : #generated }
CPPTemplateDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
CPPTemplateDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPTemplateDeclarationNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
CPPTemplateDeclarationNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CPPTemplateDeclarationNode >> declaration [
	^ declaration
]

{ #category : #generated }
CPPTemplateDeclarationNode >> declaration: aCPPProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aCPPProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
CPPTemplateDeclarationNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPTemplateDeclarationNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPTemplateDeclarationNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTemplateDeclarationNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPTemplateDeclarationNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateDeclarationNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
CPPTemplateDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
CPPTemplateDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CPPTemplateDeclarationNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPTemplateDeclarationNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateDeclarationNode >> tokenVariables [
	^ #(#templateToken #ltToken #gtToken)
]
