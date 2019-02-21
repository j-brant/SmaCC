Class {
	#name : #JSONNumberNode,
	#superclass : #JSONLiteralNode,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONNumberNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitNumber: self
]
