Class {
	#name : #YAMLListNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'items'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLListNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitList: self
]

{ #category : #generated }
YAMLListNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : #'generated-initialize-release' }
YAMLListNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLListNode >> items [
	^ items
]

{ #category : #generated }
YAMLListNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]
