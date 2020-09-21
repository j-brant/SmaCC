Class {
	#name : #JSTypeParametersNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'leftAngle',
		'parameters',
		'commas',
		'rightAngle'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeParametersNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParameters: self
]

{ #category : #generated }
JSTypeParametersNode >> commas [
	^ commas
]

{ #category : #generated }
JSTypeParametersNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSTypeParametersNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
JSTypeParametersNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JSTypeParametersNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSTypeParametersNode >> leftAngle [
	^ leftAngle
]

{ #category : #generated }
JSTypeParametersNode >> leftAngle: aSmaCCToken [
	leftAngle := aSmaCCToken
]

{ #category : #generated }
JSTypeParametersNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSTypeParametersNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSTypeParametersNode >> rightAngle [
	^ rightAngle
]

{ #category : #generated }
JSTypeParametersNode >> rightAngle: aSmaCCToken [
	rightAngle := aSmaCCToken
]

{ #category : #generated }
JSTypeParametersNode >> tokenVariables [
	^ #(#leftAngle #rightAngle)
]
