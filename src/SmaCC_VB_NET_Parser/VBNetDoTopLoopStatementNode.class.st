Class {
	#name : #VBNetDoTopLoopStatementNode,
	#superclass : #VBNetDoLoopStatementNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetDoTopLoopStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoTopLoopStatement: self
]
