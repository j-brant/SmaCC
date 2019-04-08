Class {
	#name : #CPPLabeledStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'label',
		'colon',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPLabeledStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLabeledStatement: self
]

{ #category : #generated }
CPPLabeledStatementNode >> colon [
	^ colon
]

{ #category : #generated }
CPPLabeledStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPLabeledStatementNode >> label [
	^ label
]

{ #category : #generated }
CPPLabeledStatementNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
CPPLabeledStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPLabeledStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPLabeledStatementNode >> statement: aCPPProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPLabeledStatementNode >> tokenVariables [
	^ #(#label #colon)
]
