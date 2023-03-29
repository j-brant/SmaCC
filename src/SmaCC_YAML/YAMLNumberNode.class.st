Class {
	#name : #YAMLNumberNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLNumberNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitNumber: self
]

{ #category : #generated }
YAMLNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
YAMLNumberNode >> value [
	^ value
]

{ #category : #generated }
YAMLNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
