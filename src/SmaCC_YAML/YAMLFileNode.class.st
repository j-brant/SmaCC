Class {
	#name : #YAMLFileNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'documents',
		'documentEnds',
		'documentStarts',
		'globalTag'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLFileNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitFile: self
]

{ #category : #generated }
YAMLFileNode >> compositeNodeVariables [
	^ #(#documents)
]

{ #category : #generated }
YAMLFileNode >> compositeTokenVariables [
	^ #(#documentEnds #documentStarts #anchors #tags)
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

{ #category : #generated }
YAMLFileNode >> globalTag [
	^ globalTag
]

{ #category : #generated }
YAMLFileNode >> globalTag: aSmaCCToken [
	globalTag := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
YAMLFileNode >> initialize [
	super initialize.
	documents := OrderedCollection new: 2.
	documentEnds := OrderedCollection new: 2.
	documentStarts := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLFileNode >> tokenVariables [
	^ #(#globalTag)
]
