Class {
	#name : #VBNetMyClassNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'myClassToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetMyClassNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMyClass: self
]

{ #category : #generated }
VBNetMyClassNode >> myClassToken [
	^ myClassToken
]

{ #category : #generated }
VBNetMyClassNode >> myClassToken: aSmaCCToken [
	myClassToken := aSmaCCToken
]

{ #category : #generated }
VBNetMyClassNode >> tokenVariables [
	^ #(#myClassToken)
]
