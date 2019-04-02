Class {
	#name : #CPPTypeNode,
	#superclass : #CPPProgramNode,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]
