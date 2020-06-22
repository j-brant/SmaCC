Class {
	#name : #VBNetMyBaseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'myBaseToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetMyBaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMyBase: self
]

{ #category : #generated }
VBNetMyBaseNode >> myBaseToken [
	^ myBaseToken
]

{ #category : #generated }
VBNetMyBaseNode >> myBaseToken: aSmaCCToken [
	myBaseToken := aSmaCCToken
]

{ #category : #generated }
VBNetMyBaseNode >> tokenVariables [
	^ #(#myBaseToken)
]
