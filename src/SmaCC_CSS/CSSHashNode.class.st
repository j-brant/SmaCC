Class {
	#name : 'CSSHashNode',
	#superclass : 'CSSNameNode',
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSHashNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitHash: self
]
