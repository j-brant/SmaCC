Class {
	#name : #VBNetBooleanLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetBooleanLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBooleanLiteral: self
]
