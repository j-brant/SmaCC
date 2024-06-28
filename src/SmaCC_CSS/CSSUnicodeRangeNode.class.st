Class {
	#name : #CSSUnicodeRangeNode,
	#superclass : #CSSValueNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSUnicodeRangeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnicodeRange: self
]
