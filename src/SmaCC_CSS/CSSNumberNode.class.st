Class {
	#name : #CSSNumberNode,
	#superclass : #CSSValueNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]
