Class {
	#name : #JSThisTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'thisToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSThisTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitThisType: self
]

{ #category : #generated }
JSThisTypeNode >> thisToken [
	^ thisToken
]

{ #category : #generated }
JSThisTypeNode >> thisToken: aSmaCCToken [
	thisToken := aSmaCCToken
]

{ #category : #generated }
JSThisTypeNode >> tokenVariables [
	^ #(#thisToken)
]
