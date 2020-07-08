Class {
	#name : #TeradataProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
