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

{ #category : #accessing }
YAMLNumberNode >> object [
	^ [ value value asNumber ] on: Error do: [ :ex | ex return: value value ]
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
