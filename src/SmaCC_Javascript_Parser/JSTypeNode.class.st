Class {
	#name : #JSTypeNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]

{ #category : #generated }
JSTypeNode >> ignoredCompositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
JSTypeNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
JSTypeNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
JSTypeNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
JSTypeNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
JSTypeNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
