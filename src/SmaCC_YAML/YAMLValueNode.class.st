Class {
	#name : #YAMLValueNode,
	#superclass : #YAMLParseNode,
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLValueNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitValue: self
]
