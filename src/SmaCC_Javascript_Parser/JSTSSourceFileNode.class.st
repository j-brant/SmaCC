Class {
	#name : 'JSTSSourceFileNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'elements'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSTSSourceFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTSSourceFile: self
]

{ #category : 'generated' }
JSTSSourceFileNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : 'generated' }
JSTSSourceFileNode >> elements [
	^ elements
]

{ #category : 'generated' }
JSTSSourceFileNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : 'generated-initialize-release' }
JSTSSourceFileNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
]
