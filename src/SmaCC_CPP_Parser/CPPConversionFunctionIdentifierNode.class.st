Class {
	#name : #CPPConversionFunctionIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operatorToken',
		'specifiers',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConversionFunctionIdentifier: self
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> declarator: aCPPConversionDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPConversionDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPConversionFunctionIdentifierNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> tokenVariables [
	^ #(#operatorToken)
]
