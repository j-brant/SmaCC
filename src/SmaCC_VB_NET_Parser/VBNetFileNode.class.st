Class {
	#name : #VBNetFileNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'options',
		'imports',
		'declarations',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
VBNetFileNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetFileNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetFileNode >> compositeNodeVariables [
	^ #(#options #imports #declarations #attributeBlocks)
]

{ #category : #generated }
VBNetFileNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetFileNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetFileNode >> imports [
	^ imports
]

{ #category : #generated }
VBNetFileNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : #'generated-initialize-release' }
VBNetFileNode >> initialize [
	super initialize.
	options := OrderedCollection new: 2.
	imports := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetFileNode >> options [
	^ options
]

{ #category : #generated }
VBNetFileNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]
