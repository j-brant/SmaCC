Class {
	#name : 'CSSStringNode',
	#superclass : 'CSSValueNode',
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]
