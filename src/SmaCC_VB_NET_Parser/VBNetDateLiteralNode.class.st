Class {
	#name : #VBNetDateLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetDateLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDateLiteral: self
]
