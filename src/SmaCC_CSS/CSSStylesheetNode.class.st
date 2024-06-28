Class {
	#name : #CSSStylesheetNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'items'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSStylesheetNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStylesheet: self
]

{ #category : #generated }
CSSStylesheetNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : #'generated-initialize-release' }
CSSStylesheetNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
CSSStylesheetNode >> items [
	^ items
]

{ #category : #generated }
CSSStylesheetNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]
