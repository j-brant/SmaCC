Class {
	#name : 'CPPClassTypeParameterNode',
	#superclass : 'CPPTypeParameterNode',
	#instVars : [
		'classToken'
	],
	#category : 'SmaCC_CPP_Parser-C++ AST',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'C++ AST'
}

{ #category : 'generated' }
CPPClassTypeParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassTypeParameter: self
]

{ #category : 'generated' }
CPPClassTypeParameterNode >> classToken [
	^ classToken
]

{ #category : 'generated' }
CPPClassTypeParameterNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : 'generated' }
CPPClassTypeParameterNode >> tokenVariables [
	^ #(#classToken #name #ellipsis #equal)
]
