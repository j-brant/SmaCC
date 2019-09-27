Class {
	#name : #CPPTemplateTypeParameterNode,
	#superclass : #CPPTypeParameterNode,
	#instVars : [
		'templateToken',
		'ltToken',
		'parameters',
		'commas',
		'gtToken',
		'classToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ Parser'
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
CPPTemplateTypeParameterNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPTemplateTypeParameterNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
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
