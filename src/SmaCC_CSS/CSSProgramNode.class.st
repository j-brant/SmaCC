Class {
	#name : #CSSProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
