Class {
	#name : #CPPVariableNode,
	#superclass : #CPPExpressionNode,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariable: self
]
