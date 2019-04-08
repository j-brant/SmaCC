Class {
	#name : #CPPBaseSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'type',
		'specifiers',
		'virtualToken',
		'accessToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBaseSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBaseSpecifier: self
]

{ #category : #generated }
CPPBaseSpecifierNode >> accessToken [
	^ accessToken
]

{ #category : #generated }
CPPBaseSpecifierNode >> accessToken: aSmaCCToken [
	accessToken := aSmaCCToken
]

{ #category : #generated }
CPPBaseSpecifierNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #'generated-initialize-release' }
CPPBaseSpecifierNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPBaseSpecifierNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CPPBaseSpecifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPBaseSpecifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPBaseSpecifierNode >> tokenVariables [
	^ #(#virtualToken #accessToken)
]

{ #category : #generated }
CPPBaseSpecifierNode >> type [
	^ type
]

{ #category : #generated }
CPPBaseSpecifierNode >> type: aCPPProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
CPPBaseSpecifierNode >> virtualToken [
	^ virtualToken
]

{ #category : #generated }
CPPBaseSpecifierNode >> virtualToken: aSmaCCToken [
	virtualToken := aSmaCCToken
]
