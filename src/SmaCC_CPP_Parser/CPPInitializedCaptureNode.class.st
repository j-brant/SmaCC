Class {
	#name : #CPPInitializedCaptureNode,
	#superclass : #CPPCaptureNode,
	#instVars : [
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPInitializedCaptureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInitializedCapture: self
]

{ #category : #generated }
CPPInitializedCaptureNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPInitializedCaptureNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPInitializedCaptureNode >> nodeVariables [
	^ #(#initializer)
]
