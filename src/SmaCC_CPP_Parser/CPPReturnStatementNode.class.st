Class {
	#name : #CPPReturnStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'returnToken',
		'semicolon',
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPReturnStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReturnStatement: self
]

{ #category : #generated }
CPPReturnStatementNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CPPReturnStatementNode >> returnToken [
	^ returnToken
]

{ #category : #generated }
CPPReturnStatementNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : #generated }
CPPReturnStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPReturnStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPReturnStatementNode >> tokenVariables [
	^ #(#returnToken #semicolon)
]

{ #category : #generated }
CPPReturnStatementNode >> value [
	^ value
]

{ #category : #generated }
CPPReturnStatementNode >> value: aCPPProgramNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPProgramNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
