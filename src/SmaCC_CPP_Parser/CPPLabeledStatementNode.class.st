Class {
	#name : #CPPLabeledStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'label',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPLabeledStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLabeledStatement: self
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
CPPLabeledStatementNode >> otherVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPLabeledStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPLabeledStatementNode >> statement: anObject [
	statement := anObject
]

{ #category : #generated }
CPPLabeledStatementNode >> tokenVariables [
	^ #(#label)
]
