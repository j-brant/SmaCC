Class {
	#name : 'CPPIdentifierExpressionNode',
	#superclass : 'CPPExpressionNode',
	#instVars : [
		'identifier'
	],
	#category : 'SmaCC_CPP_Parser-C++ AST',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'C++ AST'
}

{ #category : 'generated' }
CPPIdentifierExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifierExpression: self
]

{ #category : 'generated' }
CPPIdentifierExpressionNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
CPPIdentifierExpressionNode >> identifier: aCPPProgramNode [
	self identifier notNil
		ifTrue: [ self identifier parent: nil ].
	identifier := aCPPProgramNode.
	self identifier notNil
		ifTrue: [ self identifier parent: self ]
]

{ #category : 'generated' }
CPPIdentifierExpressionNode >> nodeVariables [
	^ #(#identifier)
]
