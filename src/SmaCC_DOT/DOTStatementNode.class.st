Class {
	#name : #DOTStatementNode,
	#superclass : #DOTProgramNode,
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]
