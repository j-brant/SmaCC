Class {
	#name : #ElixirCaptureNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'op',
		'int'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCaptureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCapture: self
]

{ #category : #generated }
ElixirCaptureNode >> int [
	^ int
]

{ #category : #generated }
ElixirCaptureNode >> int: aSmaCCToken [
	int := aSmaCCToken
]

{ #category : #generated }
ElixirCaptureNode >> op [
	^ op
]

{ #category : #generated }
ElixirCaptureNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirCaptureNode >> tokenVariables [
	^ #(#op #int)
]
