Class {
	#name : #JSOptionalNode,
	#superclass : #JSProgramNode,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSOptionalNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptional: self
]
