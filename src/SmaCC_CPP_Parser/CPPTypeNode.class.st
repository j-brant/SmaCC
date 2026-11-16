Class {
	#name : 'CPPTypeNode',
	#superclass : 'CPPProgramNode',
	#category : 'SmaCC_CPP_Parser-C++ AST',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'C++ AST'
}

{ #category : 'generated' }
CPPTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]
