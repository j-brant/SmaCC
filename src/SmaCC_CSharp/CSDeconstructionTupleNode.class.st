Class {
	#name : #CSDeconstructionTupleNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'leftParen',
		'elements',
		'commaTokens',
		'rightParen'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSDeconstructionTupleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeconstructionTuple: self
]

{ #category : #generated }
CSDeconstructionTupleNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSDeconstructionTupleNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSDeconstructionTupleNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : #generated }
CSDeconstructionTupleNode >> elements [
	^ elements
]

{ #category : #generated }
CSDeconstructionTupleNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
CSDeconstructionTupleNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSDeconstructionTupleNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSDeconstructionTupleNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSDeconstructionTupleNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSDeconstructionTupleNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSDeconstructionTupleNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSDeconstructionTupleNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
