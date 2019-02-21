Class {
	#name : #JSONParseNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONParseNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitParse: self
]
