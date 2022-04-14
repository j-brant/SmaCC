Class {
	#name : #RustMatchArmNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'patterns',
		'bars',
		'ifToken',
		'condition',
		'letToken',
		'equalsToken',
		'matchValue'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMatchArmNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMatchArm: self
]

{ #category : #generated }
RustMatchArmNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustMatchArmNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustMatchArmNode >> bars [
	^ bars
]

{ #category : #generated }
RustMatchArmNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustMatchArmNode >> compositeNodeVariables [
	^ #(#attrs #patterns)
]

{ #category : #generated }
RustMatchArmNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #generated }
RustMatchArmNode >> condition [
	^ condition
]

{ #category : #generated }
RustMatchArmNode >> condition: aRustExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRustExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RustMatchArmNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustMatchArmNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
RustMatchArmNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
RustMatchArmNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustMatchArmNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustMatchArmNode >> letToken [
	^ letToken
]

{ #category : #generated }
RustMatchArmNode >> letToken: aSmaCCToken [
	letToken := aSmaCCToken
]

{ #category : #generated }
RustMatchArmNode >> matchValue [
	^ matchValue
]

{ #category : #generated }
RustMatchArmNode >> matchValue: aRustExpressionNode [
	self matchValue notNil ifTrue: [ self matchValue parent: nil ].
	matchValue := aRustExpressionNode.
	self matchValue notNil ifTrue: [ self matchValue parent: self ]
]

{ #category : #generated }
RustMatchArmNode >> nodeVariables [
	^ #(#condition #matchValue)
]

{ #category : #generated }
RustMatchArmNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustMatchArmNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustMatchArmNode >> tokenVariables [
	^ #(#ifToken #letToken #equalsToken)
]
