Class {
	#name : #YAMLMappingListNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'mappings'
	],
	#category : #'SmaCC_YAML-Parser'
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

{ #category : #accessing }
YAMLMappingListNode >> object [
	^ OrderedDictionary withAll: (mappings collect: #object)
]
