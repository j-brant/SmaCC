Class {
	#name : #CPPTemplateTypeParameterNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'templateToken',
		'ltToken',
		'parameters',
		'commas',
		'gtToken',
		'classToken',
		'name',
		'ellipsis',
		'equal',
		'id'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTemplateTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTemplateTypeParameter: self
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> commas [
	^ commas
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> equal [
	^ equal
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> id [
	^ id
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> id: aCPPIdentifierExpressionNode [
	self id notNil
		ifTrue: [ self id parent: nil ].
	id := aCPPIdentifierExpressionNode.
	self id notNil
		ifTrue: [ self id parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPTemplateTypeParameterNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> name [
	^ name
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> nodeVariables [
	^ #(#id)
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> parameters [
	^ parameters
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> tokenVariables [
	^ #(#templateToken #ltToken #gtToken #classToken #name #ellipsis #equal)
]
