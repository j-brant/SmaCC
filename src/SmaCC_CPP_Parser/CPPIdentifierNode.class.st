Class {
	#name : 'CPPIdentifierNode',
	#superclass : 'CPPProgramNode',
	#instVars : [
		'name'
	],
	#category : 'SmaCC_CPP_Parser-C++ AST',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'C++ AST'
}

{ #category : 'generated' }
CPPIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifier: self
]

{ #category : 'generated' }
CPPIdentifierNode >> name [
	^ name
]

{ #category : 'generated' }
CPPIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
CPPIdentifierNode >> tokenVariables [
	^ #(#name)
]
