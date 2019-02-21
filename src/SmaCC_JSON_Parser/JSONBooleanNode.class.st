Class {
	#name : #JSONBooleanNode,
	#superclass : #JSONLiteralNode,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONBooleanNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitBoolean: self
]
