Class {
	#name : #VBNetNothingLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetNothingLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNothingLiteral: self
]
