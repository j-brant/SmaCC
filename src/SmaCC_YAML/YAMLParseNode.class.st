Class {
	#name : #YAMLParseNode,
	#superclass : #SmaCCParseNode,
	#instVars : [
		'anchors',
		'tags'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLParseNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitParse: self
]

{ #category : #generated }
YAMLParseNode >> anchors [
	^ anchors
]

{ #category : #generated }
YAMLParseNode >> anchors: anOrderedCollection [
	anchors := anOrderedCollection
]

{ #category : #generated }
YAMLParseNode >> compositeTokenVariables [
	^ #(#anchors #tags)
]

{ #category : #'generated-initialize-release' }
YAMLParseNode >> initialize [
	super initialize.
	anchors := OrderedCollection new: 2.
	tags := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLParseNode >> tags [
	^ tags
]

{ #category : #generated }
YAMLParseNode >> tags: anOrderedCollection [
	tags := anOrderedCollection
]
