Class {
	#name : #JSONStringNode,
	#superclass : #JSONLiteralNode,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONStringNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitString: self
]
