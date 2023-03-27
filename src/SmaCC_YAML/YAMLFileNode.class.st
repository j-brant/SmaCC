Class {
	#name : #YAMLFileNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'documents',
		'documentEnds',
		'anchors',
		'documentStarts'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLFileNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitFile: self
]

{ #category : #generated }
YAMLFileNode >> anchors [
	^ anchors
]

{ #category : #generated }
YAMLFileNode >> anchors: anOrderedCollection [
	anchors := anOrderedCollection
]

{ #category : #generated }
YAMLFileNode >> compositeNodeVariables [
	^ #(#documents)
]

{ #category : #generated }
YAMLFileNode >> compositeTokenVariables [
	^ #(#documentEnds #anchors #documentStarts)
]

{ #category : #generated }
YAMLFileNode >> documentEnds [
	^ documentEnds
]

{ #category : #generated }
YAMLFileNode >> documentEnds: anOrderedCollection [
	documentEnds := anOrderedCollection
]

{ #category : #generated }
YAMLFileNode >> documentStarts [
	^ documentStarts
]

{ #category : #generated }
YAMLFileNode >> documentStarts: anOrderedCollection [
	documentStarts := anOrderedCollection
]

{ #category : #generated }
YAMLFileNode >> documents [
	^ documents
]

{ #category : #generated }
YAMLFileNode >> documents: anOrderedCollection [
	self setParents: self documents to: nil.
	documents := anOrderedCollection.
	self setParents: self documents to: self
]

{ #category : #'generated-initialize-release' }
YAMLFileNode >> initialize [
	super initialize.
	documents := OrderedCollection new: 2.
	documentEnds := OrderedCollection new: 2.
	anchors := OrderedCollection new: 2.
	documentStarts := OrderedCollection new: 2.
]
