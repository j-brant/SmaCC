Class {
	#name : #ElixirProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
