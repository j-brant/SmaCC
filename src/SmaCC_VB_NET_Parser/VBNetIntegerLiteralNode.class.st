Class {
	#name : #VBNetIntegerLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetIntegerLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntegerLiteral: self
]
