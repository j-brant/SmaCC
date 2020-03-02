Class {
	#name : #JSObjectTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'leftBrace',
		'rightBrace',
		'types',
		'separators'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSObjectTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectType: self
]

{ #category : #generated }
JSObjectTypeNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : #generated }
JSObjectTypeNode >> compositeTokenVariables [
	^ #(#separators)
]

{ #category : #generated }
JSObjectTypeNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #'generated-initialize-release' }
JSObjectTypeNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
JSObjectTypeNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSObjectTypeNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSObjectTypeNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSObjectTypeNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSObjectTypeNode >> separators [
	^ separators
]

{ #category : #generated }
JSObjectTypeNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
JSObjectTypeNode >> types [
	^ types
]

{ #category : #generated }
JSObjectTypeNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
