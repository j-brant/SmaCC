Class {
	#name : #CPPProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
