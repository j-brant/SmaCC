Class {
	#name : #JSArrowFunctionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'parameters',
		'left',
		'restParameter',
		'commas',
		'right',
		'arrow',
		'statements',
		'leftBracket',
		'rightBracket'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSArrowFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrowFunction: self
]

{ #category : #generated }
JSArrowFunctionNode >> arrow [
	^ arrow
]

{ #category : #generated }
JSArrowFunctionNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
JSArrowFunctionNode >> commas [
	^ commas
]

{ #category : #generated }
JSArrowFunctionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSArrowFunctionNode >> compositeNodeVariables [
	^ #(#parameters #statements)
]

{ #category : #generated }
JSArrowFunctionNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
JSArrowFunctionNode >> ignoredTokenVariables [
	^ #(#left #right #leftBracket #rightBracket)
]

{ #category : #'generated-initialize-release' }
JSArrowFunctionNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
JSArrowFunctionNode >> left [
	^ left
]

{ #category : #generated }
JSArrowFunctionNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
JSArrowFunctionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
JSArrowFunctionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
JSArrowFunctionNode >> nodeVariables [
	^ #(#restParameter)
]

{ #category : #generated }
JSArrowFunctionNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSArrowFunctionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSArrowFunctionNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSArrowFunctionNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil
		ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil
		ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSArrowFunctionNode >> right [
	^ right
]

{ #category : #generated }
JSArrowFunctionNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
JSArrowFunctionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
JSArrowFunctionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
JSArrowFunctionNode >> statements [
	^ statements
]

{ #category : #generated }
JSArrowFunctionNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
JSArrowFunctionNode >> tokenVariables [
	^ #(#arrow)
]
