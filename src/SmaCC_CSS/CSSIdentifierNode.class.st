Class {
	#name : #CSSIdentifierNode,
	#superclass : #CSSNameNode,
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifier: self
]
