Class {
	#name : #CPPLiteralNode,
	#superclass : #CPPExpressionNode,
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteral: self
]
