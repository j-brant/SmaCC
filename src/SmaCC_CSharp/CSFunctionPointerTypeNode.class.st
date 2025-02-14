Class {
	#name : #CSFunctionPointerTypeNode,
	#superclass : #CSTypeNode,
	#instVars : [
		'delegateToken',
		'timesToken',
		'lessThanToken',
		'parameters',
		'commas',
		'type',
		'modifiers',
		'greaterThanToken',
		'ccSpecifierToken',
		'leftBracketToken',
		'conventions',
		'rightBracketToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSFunctionPointerTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionPointerType: self
]

{ #category : #generated }
CSFunctionPointerTypeNode >> ccSpecifierToken [
	^ ccSpecifierToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> ccSpecifierToken: aSmaCCToken [
	ccSpecifierToken := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> commas [
	^ commas
]

{ #category : #generated }
CSFunctionPointerTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSFunctionPointerTypeNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
CSFunctionPointerTypeNode >> compositeTokenVariables [
	^ #(#commas #modifiers #conventions)
]

{ #category : #generated }
CSFunctionPointerTypeNode >> conventions [
	^ conventions
]

{ #category : #generated }
CSFunctionPointerTypeNode >> conventions: anOrderedCollection [
	conventions := anOrderedCollection
]

{ #category : #generated }
CSFunctionPointerTypeNode >> delegateToken [
	^ delegateToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> delegateToken: aSmaCCToken [
	delegateToken := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> greaterThanToken [
	^ greaterThanToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> greaterThanToken: aSmaCCToken [
	greaterThanToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CSFunctionPointerTypeNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	conventions := OrderedCollection new: 2.
]

{ #category : #generated }
CSFunctionPointerTypeNode >> leftBracketToken [
	^ leftBracketToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> leftBracketToken: aSmaCCToken [
	leftBracketToken := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> lessThanToken [
	^ lessThanToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> lessThanToken: aSmaCCToken [
	lessThanToken := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSFunctionPointerTypeNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSFunctionPointerTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSFunctionPointerTypeNode >> parameters [
	^ parameters
]

{ #category : #generated }
CSFunctionPointerTypeNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CSFunctionPointerTypeNode >> rightBracketToken [
	^ rightBracketToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> rightBracketToken: aSmaCCToken [
	rightBracketToken := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> timesToken [
	^ timesToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> timesToken: aSmaCCToken [
	timesToken := aSmaCCToken
]

{ #category : #generated }
CSFunctionPointerTypeNode >> tokenVariables [
	^ #(#delegateToken #timesToken #lessThanToken #greaterThanToken #ccSpecifierToken #leftBracketToken #rightBracketToken)
]

{ #category : #generated }
CSFunctionPointerTypeNode >> type [
	^ type
]

{ #category : #generated }
CSFunctionPointerTypeNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
