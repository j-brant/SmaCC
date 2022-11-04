Class {
	#name : #GraphQLProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
