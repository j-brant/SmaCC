Class {
	#name : #CSTypeConstraintNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'refToken',
		'structToken',
		'type'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSTypeConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeConstraint: self
]

{ #category : #generated }
CSTypeConstraintNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSTypeConstraintNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSTypeConstraintNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
CSTypeConstraintNode >> structToken [
	^ structToken
]

{ #category : #generated }
CSTypeConstraintNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
CSTypeConstraintNode >> tokenVariables [
	^ #(#refToken #structToken)
]

{ #category : #generated }
CSTypeConstraintNode >> type [
	^ type
]

{ #category : #generated }
CSTypeConstraintNode >> type: aCSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
