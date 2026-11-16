Class {
	#name : 'YAMLFileNode',
	#superclass : 'YAMLParseNode',
	#instVars : [
		'documents',
		'documentEnds',
		'globalTags',
		'documentStarts'
	],
	#category : 'SmaCC_YAML-Parser',
	#package : 'SmaCC_YAML',
	#tag : 'Parser'
}

{ #category : 'generated' }
YAMLFileNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitFile: self
]

{ #category : 'generated' }
YAMLFileNode >> compositeNodeVariables [
	^ #(#documents)
]

{ #category : 'generated' }
YAMLFileNode >> compositeTokenVariables [
	^ #(#documentEnds #documentStarts #globalTags #anchors #tags)
]

{ #category : 'private' }
YAMLFileNode >> createObject [
	| nonErrorDocs |
	nonErrorDocs := documents reject: #isErrorNode.
	^ nonErrorDocs size = 1
		ifTrue: [ nonErrorDocs first object ]
		ifFalse: [ nonErrorDocs collect: #object ]
]

{ #category : 'generated' }
YAMLFileNode >> documentEnds [
	^ documentEnds
]

{ #category : 'generated' }
YAMLFileNode >> documentEnds: anOrderedCollection [
	documentEnds := anOrderedCollection
]

{ #category : 'generated' }
YAMLFileNode >> documentStarts [
	^ documentStarts
]

{ #category : 'generated' }
YAMLFileNode >> documentStarts: anOrderedCollection [
	documentStarts := anOrderedCollection
]

{ #category : 'generated' }
YAMLFileNode >> documents [
	^ documents
]

{ #category : 'generated' }
YAMLFileNode >> documents: anOrderedCollection [
	self setParents: self documents to: nil.
	documents := anOrderedCollection.
	self setParents: self documents to: self
]

{ #category : 'generated' }
YAMLFileNode >> globalTags [
	^ globalTags
]

{ #category : 'generated' }
YAMLFileNode >> globalTags: anOrderedCollection [
	globalTags := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
YAMLFileNode >> initialize [
	super initialize.
	documents := OrderedCollection new: 2.
	documentEnds := OrderedCollection new: 2.
	documentStarts := OrderedCollection new: 2.
	globalTags := OrderedCollection new: 2.
]
