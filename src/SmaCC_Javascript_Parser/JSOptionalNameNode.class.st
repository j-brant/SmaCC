Class {
	#name : #JSOptionalNameNode,
	#superclass : #JSOptionalNode,
	#instVars : [
		'periodToken',
		'name'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSOptionalNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptionalName: self
]

{ #category : #generated }
JSOptionalNameNode >> name [
	^ name
]

{ #category : #generated }
JSOptionalNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
JSOptionalNameNode >> periodToken [
	^ periodToken
]

{ #category : #generated }
JSOptionalNameNode >> periodToken: aSmaCCToken [
	periodToken := aSmaCCToken
]

{ #category : #generated }
JSOptionalNameNode >> tokenVariables [
	^ #(#periodToken #name)
]
