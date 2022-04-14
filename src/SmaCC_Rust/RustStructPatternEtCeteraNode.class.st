Class {
	#name : #RustStructPatternEtCeteraNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'dotDot'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructPatternEtCeteraNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructPatternEtCetera: self
]

{ #category : #generated }
RustStructPatternEtCeteraNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustStructPatternEtCeteraNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustStructPatternEtCeteraNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #generated }
RustStructPatternEtCeteraNode >> dotDot [
	^ dotDot
]

{ #category : #generated }
RustStructPatternEtCeteraNode >> dotDot: aSmaCCToken [
	dotDot := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustStructPatternEtCeteraNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructPatternEtCeteraNode >> tokenVariables [
	^ #(#dotDot)
]
