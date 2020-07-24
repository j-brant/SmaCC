Class {
	#name : #TeradataEmptyGroupByExpressionNode,
	#superclass : #TeradataExpressionNode,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataEmptyGroupByExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEmptyGroupByExpression: self
]
