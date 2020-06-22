Class {
	#name : #VBNetAttributeBlockNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'ltToken',
		'_attributes',
		'commas',
		'gt',
		'statementSeparator'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAttributeBlockNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
VBNetAttributeBlockNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
VBNetAttributeBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeBlock: self
]

{ #category : #generated }
VBNetAttributeBlockNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetAttributeBlockNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetAttributeBlockNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #generated }
VBNetAttributeBlockNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetAttributeBlockNode >> gt [
	^ gt
]

{ #category : #generated }
VBNetAttributeBlockNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetAttributeBlockNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetAttributeBlockNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
VBNetAttributeBlockNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
VBNetAttributeBlockNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetAttributeBlockNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetAttributeBlockNode >> tokenVariables [
	^ #(#ltToken #gt #statementSeparator)
]
