Class {
	#name : #YAMLStringLiteralNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'parts'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLStringLiteralNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitStringLiteral: self
]

{ #category : #generated }
YAMLStringLiteralNode >> compositeTokenVariables [
	^ #(#parts)
]

{ #category : #'generated-initialize-release' }
YAMLStringLiteralNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLStringLiteralNode >> parts [
	^ parts
]

{ #category : #generated }
YAMLStringLiteralNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
