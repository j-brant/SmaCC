Class {
	#name : #YAMLFlowListNode,
	#superclass : #YAMLListNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'commas'
	],
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLFlowListNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitFlowList: self
]

{ #category : #generated }
YAMLFlowListNode >> commas [
	^ commas
]

{ #category : #generated }
YAMLFlowListNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
YAMLFlowListNode >> compositeTokenVariables [
	^ #(#commas #anchors #tags)
]

{ #category : #'generated-initialize-release' }
YAMLFlowListNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLFlowListNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
YAMLFlowListNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
YAMLFlowListNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
YAMLFlowListNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
YAMLFlowListNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
