Class {
	#name : #CPPLinkageSpecificationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'externToken',
		'language',
		'leftBrace',
		'rightBrace',
		'declarations'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPLinkageSpecificationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLinkageSpecification: self
]

{ #category : #generated }
CPPLinkageSpecificationNode >> compositeNodeVariables [
	^ #(#declarations)
]

{ #category : #generated }
CPPLinkageSpecificationNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPLinkageSpecificationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPLinkageSpecificationNode >> externToken [
	^ externToken
]

{ #category : #generated }
CPPLinkageSpecificationNode >> externToken: aSmaCCToken [
	externToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPLinkageSpecificationNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
CPPLinkageSpecificationNode >> language [
	^ language
]

{ #category : #generated }
CPPLinkageSpecificationNode >> language: aSmaCCToken [
	language := aSmaCCToken
]

{ #category : #generated }
CPPLinkageSpecificationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPLinkageSpecificationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPLinkageSpecificationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPLinkageSpecificationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPLinkageSpecificationNode >> tokenVariables [
	^ #(#externToken #language #leftBrace #rightBrace)
]
