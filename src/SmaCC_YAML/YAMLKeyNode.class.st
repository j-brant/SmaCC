Class {
	#name : #YAMLKeyNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLKeyNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitKey: self
]

{ #category : #generated }
YAMLKeyNode >> name [
	^ name
]

{ #category : #generated }
YAMLKeyNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
YAMLKeyNode >> tokenVariables [
	^ #(#name)
]
