Class {
	#name : #CSSURINode,
	#superclass : #CSSValueNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSURINode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitURI: self
]
