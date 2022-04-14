Class {
	#name : #RustExpressionNode,
	#superclass : #RustProgramNode,
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]
