Class {
	#name : #CPPSwitchStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'switchToken',
		'leftParen',
		'condition',
		'rightParen',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPSwitchStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchStatement: self
]

{ #category : #generated }
CPPSwitchStatementNode >> condition [
	^ condition
]

{ #category : #generated }
CPPSwitchStatementNode >> condition: aCPPProgramNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aCPPProgramNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
CPPSwitchStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPSwitchStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPSwitchStatementNode >> nodeVariables [
	^ #(#condition #statement)
]

{ #category : #generated }
CPPSwitchStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPSwitchStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPSwitchStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPSwitchStatementNode >> statement: aCPPProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPSwitchStatementNode >> switchToken [
	^ switchToken
]

{ #category : #generated }
CPPSwitchStatementNode >> switchToken: aSmaCCToken [
	switchToken := aSmaCCToken
]

{ #category : #generated }
CPPSwitchStatementNode >> tokenVariables [
	^ #(#switchToken #leftParen #rightParen)
]
