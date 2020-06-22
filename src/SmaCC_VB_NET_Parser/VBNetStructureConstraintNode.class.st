Class {
	#name : #VBNetStructureConstraintNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'structureToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetStructureConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructureConstraint: self
]

{ #category : #generated }
VBNetStructureConstraintNode >> structureToken [
	^ structureToken
]

{ #category : #generated }
VBNetStructureConstraintNode >> structureToken: aSmaCCToken [
	structureToken := aSmaCCToken
]

{ #category : #generated }
VBNetStructureConstraintNode >> tokenVariables [
	^ #(#structureToken)
]
