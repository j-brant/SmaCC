Class {
	#name : #CPPCaptureNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name',
		'ampToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCaptureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCapture: self
]

{ #category : #generated }
CPPCaptureNode >> ampToken [
	^ ampToken
]

{ #category : #generated }
CPPCaptureNode >> ampToken: aSmaCCToken [
	ampToken := aSmaCCToken
]

{ #category : #generated }
CPPCaptureNode >> name [
	^ name
]

{ #category : #generated }
CPPCaptureNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPCaptureNode >> tokenVariables [
	^ #(#name #ampToken)
]
