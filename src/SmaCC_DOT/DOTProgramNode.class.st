Class {
	#name : #DOTProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
