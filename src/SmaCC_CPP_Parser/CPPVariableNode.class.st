Class {
	#name : #CPPVariableNode,
	#superclass : #CPPExpressionNode,
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariable: self
]
