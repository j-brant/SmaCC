Class {
	#name : #CPPLiteralNode,
	#superclass : #CPPExpressionNode,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteral: self
]
