Class {
	#name : #VBNetStringLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetStringLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStringLiteral: self
]
