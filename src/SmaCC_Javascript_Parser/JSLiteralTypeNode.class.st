Class {
	#name : #JSLiteralTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSLiteralTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteralType: self
]

{ #category : #generated }
JSLiteralTypeNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
JSLiteralTypeNode >> value [
	^ value
]

{ #category : #generated }
JSLiteralTypeNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
