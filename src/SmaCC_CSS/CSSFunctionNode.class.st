Class {
	#name : #CSSFunctionNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'name',
		'items',
		'rightParen'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunction: self
]

{ #category : #generated }
CSSFunctionNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : #'generated-initialize-release' }
CSSFunctionNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
CSSFunctionNode >> items [
	^ items
]

{ #category : #generated }
CSSFunctionNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
CSSFunctionNode >> name [
	^ name
]

{ #category : #generated }
CSSFunctionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSSFunctionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSSFunctionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSSFunctionNode >> tokenVariables [
	^ #(#name #rightParen)
]
