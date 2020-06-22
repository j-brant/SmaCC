Class {
	#name : #VBNetGlobalNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'globalToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetGlobalNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGlobal: self
]

{ #category : #generated }
VBNetGlobalNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
VBNetGlobalNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #generated }
VBNetGlobalNode >> tokenVariables [
	^ #(#globalToken)
]
