Class {
	#name : #VBNetFloatingPointLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetFloatingPointLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFloatingPointLiteral: self
]
