Class {
	#name : #VBNetBuiltInTypeNameNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetBuiltInTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBuiltInTypeName: self
]

{ #category : #generated }
VBNetBuiltInTypeNameNode >> name [
	^ name
]

{ #category : #generated }
VBNetBuiltInTypeNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetBuiltInTypeNameNode >> tokenVariables [
	^ #(#name)
]
