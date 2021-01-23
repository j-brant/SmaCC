Class {
	#name : #DOTAttributeAssignmentNode,
	#superclass : #DOTProgramNode,
	#instVars : [
		'lhs',
		'equalsToken',
		'rhs'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTAttributeAssignmentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeAssignment: self
]

{ #category : #generated }
DOTAttributeAssignmentNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
DOTAttributeAssignmentNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
DOTAttributeAssignmentNode >> lhs [
	^ lhs
]

{ #category : #generated }
DOTAttributeAssignmentNode >> lhs: aSmaCCToken [
	lhs := aSmaCCToken
]

{ #category : #generated }
DOTAttributeAssignmentNode >> rhs [
	^ rhs
]

{ #category : #generated }
DOTAttributeAssignmentNode >> rhs: aSmaCCToken [
	rhs := aSmaCCToken
]

{ #category : #generated }
DOTAttributeAssignmentNode >> tokenVariables [
	^ #(#lhs #equalsToken #rhs)
]
