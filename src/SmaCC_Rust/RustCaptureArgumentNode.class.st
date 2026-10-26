Class {
	#name : 'RustCaptureArgumentNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'lifetime',
		'name'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustCaptureArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaptureArgument: self
]

{ #category : 'generated' }
RustCaptureArgumentNode >> lifetime [
	^ lifetime
]

{ #category : 'generated' }
RustCaptureArgumentNode >> lifetime: aSmaCCToken [
	lifetime := aSmaCCToken
]

{ #category : 'generated' }
RustCaptureArgumentNode >> name [
	^ name
]

{ #category : 'generated' }
RustCaptureArgumentNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RustCaptureArgumentNode >> tokenVariables [
	^ #(#lifetime #name)
]
