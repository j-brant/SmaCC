Class {
	#name : #VBNetCharacterLiteralNode,
	#superclass : #VBNetLiteralNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCharacterLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCharacterLiteral: self
]
