Class {
	#name : #CPPDefaultLabeledStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'defaultToken',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPDefaultLabeledStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefaultLabeledStatement: self
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> otherVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> statement: anObject [
	statement := anObject
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> tokenVariables [
	^ #(#defaultToken)
]
