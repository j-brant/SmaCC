Class {
	#name : #JavaSwitchLabelNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'caseToken',
		'constants',
		'commas',
		'colon'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaSwitchLabelNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchLabel: self
]

{ #category : #generated }
JavaSwitchLabelNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
JavaSwitchLabelNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
JavaSwitchLabelNode >> colon [
	^ colon
]

{ #category : #generated }
JavaSwitchLabelNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
JavaSwitchLabelNode >> commas [
	^ commas
]

{ #category : #generated }
JavaSwitchLabelNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JavaSwitchLabelNode >> compositeNodeVariables [
	^ #(#constants)
]

{ #category : #generated }
JavaSwitchLabelNode >> constants [
	^ constants
]

{ #category : #generated }
JavaSwitchLabelNode >> constants: anOrderedCollection [
	self setParents: self constants to: nil.
	constants := anOrderedCollection.
	self setParents: self constants to: self
]

{ #category : #generated }
JavaSwitchLabelNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JavaSwitchLabelNode >> initialize [
	super initialize.
	constants := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JavaSwitchLabelNode >> tokenVariables [
	^ #(#caseToken #colon)
]
