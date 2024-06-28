Class {
	#name : #CSSPercentageNode,
	#superclass : #CSSValueNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSPercentageNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPercentage: self
]
