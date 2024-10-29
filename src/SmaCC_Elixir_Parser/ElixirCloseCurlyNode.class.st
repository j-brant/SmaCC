Class {
	#name : #ElixirCloseCurlyNode,
	#superclass : #ElixirProgramNode,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCloseCurlyNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCloseCurly: self
]
