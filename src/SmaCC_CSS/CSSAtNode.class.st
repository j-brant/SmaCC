Class {
	#name : #CSSAtNode,
	#superclass : #CSSNameNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSAtNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAt: self
]
