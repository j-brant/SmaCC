Class {
	#name : #RustStatementNode,
	#superclass : #RustProgramNode,
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]
