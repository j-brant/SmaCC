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
	#category : #'SmaCC_CPP_Parser'
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
CPPSwitchStatementNode >> condition: anObject [
	condition := anObject
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
CPPSwitchStatementNode >> otherVariables [
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
CPPSwitchStatementNode >> statement: anObject [
	statement := anObject
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
