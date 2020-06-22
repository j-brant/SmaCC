Class {
	#name : #VBNetDoBottomLoopStatementNode,
	#superclass : #VBNetDoLoopStatementNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetDoBottomLoopStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoBottomLoopStatement: self
]
