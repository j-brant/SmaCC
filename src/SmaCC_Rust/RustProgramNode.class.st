Class {
	#name : #RustProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
