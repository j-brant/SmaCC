Class {
	#name : 'YAMLValueNode',
	#superclass : 'YAMLParseNode',
	#category : 'SmaCC_YAML-Parser',
	#package : 'SmaCC_YAML',
	#tag : 'Parser'
}

{ #category : 'generated' }
YAMLValueNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitValue: self
]
