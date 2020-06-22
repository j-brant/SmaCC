Class {
	#name : #VBNetStatementNode,
	#superclass : #VBNetProgramNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]
