Class {
	#name : #CSPrimaryConstraintNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'classToken',
		'structToken',
		'unmanagedToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSPrimaryConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrimaryConstraint: self
]

{ #category : #generated }
CSPrimaryConstraintNode >> classToken [
	^ classToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> structToken [
	^ structToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> tokenVariables [
	^ #(#classToken #structToken #unmanagedToken)
]

{ #category : #generated }
CSPrimaryConstraintNode >> unmanagedToken [
	^ unmanagedToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> unmanagedToken: aSmaCCToken [
	unmanagedToken := aSmaCCToken
]
