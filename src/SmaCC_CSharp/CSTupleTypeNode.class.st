Class {
	#name : #CSTupleTypeNode,
	#superclass : #CSTypeNode,
	#instVars : [
		'leftParen',
		'elements',
		'commaTokens',
		'rightParen'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSTupleTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleType: self
]

{ #category : #generated }
CSTupleTypeNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSTupleTypeNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSTupleTypeNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : #generated }
CSTupleTypeNode >> elements [
	^ elements
]

{ #category : #generated }
CSTupleTypeNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
CSTupleTypeNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSTupleTypeNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSTupleTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSTupleTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSTupleTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSTupleTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSTupleTypeNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
