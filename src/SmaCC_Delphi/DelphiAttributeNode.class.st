Class {
	#name : #DelphiAttributeNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'left',
		'expressions',
		'commas',
		'right'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
DelphiAttributeNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiAttributeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiAttributeNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
DelphiAttributeNode >> expressions [
	^ expressions
]

{ #category : #generated }
DelphiAttributeNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
DelphiAttributeNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
DelphiAttributeNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiAttributeNode >> left [
	^ left
]

{ #category : #generated }
DelphiAttributeNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
DelphiAttributeNode >> right [
	^ right
]

{ #category : #generated }
DelphiAttributeNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
DelphiAttributeNode >> tokenVariables [
	^ #(#left #right)
]
