Class {
	#name : #JSONNullNode,
	#superclass : #JSONLiteralNode,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONNullNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitNull: self
]
