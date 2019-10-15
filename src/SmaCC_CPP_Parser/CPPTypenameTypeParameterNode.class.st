Class {
	#name : #CPPTypenameTypeParameterNode,
	#superclass : #CPPTypeParameterNode,
	#instVars : [
		'typenameToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTypenameTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypenameTypeParameter: self
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> tokenVariables [
	^ #(#typenameToken #name #ellipsis #equal)
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> typenameToken [
	^ typenameToken
]

{ #category : #generated }
CPPTypenameTypeParameterNode >> typenameToken: aSmaCCToken [
	typenameToken := aSmaCCToken
]
