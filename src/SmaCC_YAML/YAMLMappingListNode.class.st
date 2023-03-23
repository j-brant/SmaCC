Class {
	#name : #YAMLMappingListNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'mappings'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLMappingListNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitMappingList: self
]

{ #category : #generated }
YAMLMappingListNode >> compositeNodeVariables [
	^ #(#mappings)
]

{ #category : #'generated-initialize-release' }
YAMLMappingListNode >> initialize [
	super initialize.
	mappings := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLMappingListNode >> mappings [
	^ mappings
]

{ #category : #generated }
YAMLMappingListNode >> mappings: anOrderedCollection [
	self setParents: self mappings to: nil.
	mappings := anOrderedCollection.
	self setParents: self mappings to: self
]
