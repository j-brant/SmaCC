Class {
	#name : #RustMacroTokenNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroTokenNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroToken: self
]

{ #category : #generated }
RustMacroTokenNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
RustMacroTokenNode >> value [
	^ value
]

{ #category : #generated }
RustMacroTokenNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
