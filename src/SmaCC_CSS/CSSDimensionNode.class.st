Class {
	#name : #CSSDimensionNode,
	#superclass : #CSSValueNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSDimensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDimension: self
]
