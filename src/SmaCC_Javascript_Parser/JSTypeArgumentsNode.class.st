Class {
	#name : #JSTypeArgumentsNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'leftAngle',
		'arguments',
		'commas',
		'rightAngle'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeArgumentsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeArguments: self
]

{ #category : #generated }
JSTypeArgumentsNode >> arguments [
	^ arguments
]

{ #category : #generated }
JSTypeArgumentsNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
JSTypeArgumentsNode >> commas [
	^ commas
]

{ #category : #generated }
JSTypeArgumentsNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSTypeArgumentsNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
JSTypeArgumentsNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JSTypeArgumentsNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSTypeArgumentsNode >> leftAngle [
	^ leftAngle
]

{ #category : #generated }
JSTypeArgumentsNode >> leftAngle: aSmaCCToken [
	leftAngle := aSmaCCToken
]

{ #category : #generated }
JSTypeArgumentsNode >> rightAngle [
	^ rightAngle
]

{ #category : #generated }
JSTypeArgumentsNode >> rightAngle: aSmaCCToken [
	rightAngle := aSmaCCToken
]

{ #category : #generated }
JSTypeArgumentsNode >> tokenVariables [
	^ #(#leftAngle #rightAngle)
]
