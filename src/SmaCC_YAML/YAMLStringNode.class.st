Class {
	#name : #YAMLStringNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'parts'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLStringNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitString: self
]

{ #category : #generated }
YAMLStringNode >> compositeTokenVariables [
	^ #(#parts #anchors #tags)
]

{ #category : #'generated-initialize-release' }
YAMLStringNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLStringNode >> parts [
	^ parts
]

{ #category : #generated }
YAMLStringNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
