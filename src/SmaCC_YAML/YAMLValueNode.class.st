Class {
	#name : #YAMLValueNode,
	#superclass : #YAMLParseNode,
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLValueNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitValue: self
]
