Class {
	#name : #CPPDeclSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDeclSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeclSpecifier: self
]

{ #category : #generated }
CPPDeclSpecifierNode >> name [
	^ name
]

{ #category : #generated }
CPPDeclSpecifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPDeclSpecifierNode >> tokenVariables [
	^ #(#name)
]
