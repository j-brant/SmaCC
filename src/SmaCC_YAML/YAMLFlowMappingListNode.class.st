Class {
	#name : #YAMLFlowMappingListNode,
	#superclass : #YAMLMappingListNode,
	#instVars : [
		'leftBrace',
		'rightBrace',
		'commas',
		'anchor'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLFlowMappingListNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitFlowMappingList: self
]

{ #category : #generated }
YAMLFlowMappingListNode >> anchor [
	^ anchor
]

{ #category : #generated }
YAMLFlowMappingListNode >> anchor: aSmaCCToken [
	anchor := aSmaCCToken
]

{ #category : #generated }
YAMLFlowMappingListNode >> commas [
	^ commas
]

{ #category : #generated }
YAMLFlowMappingListNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
YAMLFlowMappingListNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
YAMLFlowMappingListNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLFlowMappingListNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
YAMLFlowMappingListNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
YAMLFlowMappingListNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
YAMLFlowMappingListNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
YAMLFlowMappingListNode >> tokenVariables [
	^ #(#leftBrace #rightBrace #anchor)
]
