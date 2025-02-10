Class {
	#name : #CSPrimaryConstraintNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'classToken',
		'questionMarkToken',
		'structToken',
		'refToken',
		'unmanagedToken',
		'notnullToken',
		'defaultToken'
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
CSPrimaryConstraintNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> notnullToken [
	^ notnullToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> notnullToken: aSmaCCToken [
	notnullToken := aSmaCCToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> questionMarkToken [
	^ questionMarkToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> questionMarkToken: aSmaCCToken [
	questionMarkToken := aSmaCCToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
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
	^ #(#classToken #questionMarkToken #structToken #refToken #unmanagedToken #notnullToken #defaultToken)
]

{ #category : #generated }
CSPrimaryConstraintNode >> unmanagedToken [
	^ unmanagedToken
]

{ #category : #generated }
CSPrimaryConstraintNode >> unmanagedToken: aSmaCCToken [
	unmanagedToken := aSmaCCToken
]
