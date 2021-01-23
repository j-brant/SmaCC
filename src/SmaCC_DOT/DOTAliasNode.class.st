Class {
	#name : #DOTAliasNode,
	#superclass : #DOTStatementNode,
	#instVars : [
		'lhs',
		'equalsToken',
		'rhs'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTAliasNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlias: self
]

{ #category : #generated }
DOTAliasNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
DOTAliasNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
DOTAliasNode >> lhs [
	^ lhs
]

{ #category : #generated }
DOTAliasNode >> lhs: aSmaCCToken [
	lhs := aSmaCCToken
]

{ #category : #generated }
DOTAliasNode >> rhs [
	^ rhs
]

{ #category : #generated }
DOTAliasNode >> rhs: aSmaCCToken [
	rhs := aSmaCCToken
]

{ #category : #generated }
DOTAliasNode >> tokenVariables [
	^ #(#lhs #equalsToken #rhs)
]
