Class {
	#name : #YAMLStringNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLStringNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitString: self
]

{ #category : #generated }
YAMLStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
YAMLStringNode >> value [
	^ value
]

{ #category : #generated }
YAMLStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
