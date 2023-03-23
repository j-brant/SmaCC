Class {
	#name : #YAMLParseNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLParseNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitParse: self
]
