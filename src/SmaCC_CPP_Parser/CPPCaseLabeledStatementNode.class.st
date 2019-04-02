Class {
	#name : #CPPCaseLabeledStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'caseToken',
		'expression',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser'
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
	^ #(#expression)
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> otherVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> statement: anObject [
	statement := anObject
]

{ #category : #generated }
CPPCaseLabeledStatementNode >> tokenVariables [
	^ #(#caseToken)
]
