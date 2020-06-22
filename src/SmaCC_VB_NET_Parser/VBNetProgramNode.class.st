Class {
	#name : #VBNetProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
