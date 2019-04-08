Class {
	#name : #CPPCatchHandlerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'catchToken',
		'leftParen',
		'declaration',
		'rightParen',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCatchHandlerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCatchHandler: self
]

{ #category : #generated }
CPPCatchHandlerNode >> catchToken [
	^ catchToken
]

{ #category : #generated }
CPPCatchHandlerNode >> catchToken: aSmaCCToken [
	catchToken := aSmaCCToken
]

{ #category : #generated }
CPPCatchHandlerNode >> declaration [
	^ declaration
]

{ #category : #generated }
CPPCatchHandlerNode >> declaration: aCPPExceptionDeclarationNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aCPPExceptionDeclarationNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
CPPCatchHandlerNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPCatchHandlerNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPCatchHandlerNode >> nodeVariables [
	^ #(#declaration #statement)
]

{ #category : #generated }
CPPCatchHandlerNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPCatchHandlerNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPCatchHandlerNode >> statement [
	^ statement
]

{ #category : #generated }
CPPCatchHandlerNode >> statement: aCPPCompoundStatementNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPCompoundStatementNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPCatchHandlerNode >> tokenVariables [
	^ #(#catchToken #leftParen #rightParen)
]
