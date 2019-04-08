Class {
	#name : #CPPCaseLabeledStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'caseToken',
		'expression',
		'colon',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCaseLabeledStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseLabeledStatement: self
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> colon [
	^ colon
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> expression [
	^ expression
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> nodeVariables [
	^ #(#expression #statement)
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> statement: aCPPProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> tokenVariables [
	^ #(#caseToken #colon)
]
