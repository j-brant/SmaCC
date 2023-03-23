Class {
	#name : #YAMLMultilineStringNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'values'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLMultilineStringNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitMultilineString: self
]

{ #category : #generated }
YAMLMultilineStringNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #'generated-initialize-release' }
YAMLMultilineStringNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLMultilineStringNode >> values [
	^ values
]

{ #category : #generated }
YAMLMultilineStringNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
