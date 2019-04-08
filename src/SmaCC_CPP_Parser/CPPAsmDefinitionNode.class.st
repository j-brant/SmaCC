Class {
	#name : #CPPAsmDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'asmToken',
		'leftParen',
		'code',
		'rightParen',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAsmDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsmDefinition: self
]

{ #category : #generated }
CPPAsmDefinitionNode >> asmToken [
	^ asmToken
]

{ #category : #generated }
CPPAsmDefinitionNode >> asmToken: aSmaCCToken [
	asmToken := aSmaCCToken
]

{ #category : #generated }
CPPAsmDefinitionNode >> code [
	^ code
]

{ #category : #generated }
CPPAsmDefinitionNode >> code: aSmaCCToken [
	code := aSmaCCToken
]

{ #category : #generated }
CPPAsmDefinitionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPAsmDefinitionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPAsmDefinitionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPAsmDefinitionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPAsmDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPAsmDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPAsmDefinitionNode >> tokenVariables [
	^ #(#asmToken #leftParen #code #rightParen #semicolon)
]
