Class {
	#name : #VBNetClassConstraintNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'classToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetClassConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassConstraint: self
]

{ #category : #generated }
VBNetClassConstraintNode >> classToken [
	^ classToken
]

{ #category : #generated }
VBNetClassConstraintNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
VBNetClassConstraintNode >> tokenVariables [
	^ #(#classToken)
]
