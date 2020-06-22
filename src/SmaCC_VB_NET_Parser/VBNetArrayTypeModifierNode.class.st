Class {
	#name : #VBNetArrayTypeModifierNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'commas'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetArrayTypeModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayTypeModifier: self
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetArrayTypeModifierNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetArrayTypeModifierNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
