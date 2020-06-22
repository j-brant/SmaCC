Class {
	#name : #VBNetCollectionInitializerNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'leftBrace',
		'rightBrace',
		'elements',
		'commas'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCollectionInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCollectionInitializer: self
]

{ #category : #generated }
VBNetCollectionInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetCollectionInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetCollectionInitializerNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : #generated }
VBNetCollectionInitializerNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
VBNetCollectionInitializerNode >> elements [
	^ elements
]

{ #category : #generated }
VBNetCollectionInitializerNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #'generated-initialize-release' }
VBNetCollectionInitializerNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetCollectionInitializerNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
VBNetCollectionInitializerNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
VBNetCollectionInitializerNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
VBNetCollectionInitializerNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
VBNetCollectionInitializerNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
