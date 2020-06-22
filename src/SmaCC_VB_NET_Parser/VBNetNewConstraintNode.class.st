Class {
	#name : #VBNetNewConstraintNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'newToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetNewConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewConstraint: self
]

{ #category : #generated }
VBNetNewConstraintNode >> newToken [
	^ newToken
]

{ #category : #generated }
VBNetNewConstraintNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
VBNetNewConstraintNode >> tokenVariables [
	^ #(#newToken)
]
