Class {
	#name : 'RustLetConditionNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'letToken',
		'patterns',
		'bars',
		'equalsToken',
		'matchValue'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustLetConditionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLetCondition: self
]

{ #category : 'generated' }
RustLetConditionNode >> bars [
	^ bars
]

{ #category : 'generated' }
RustLetConditionNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : 'generated' }
RustLetConditionNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : 'generated' }
RustLetConditionNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : 'generated' }
RustLetConditionNode >> equalsToken [
	^ equalsToken
]

{ #category : 'generated' }
RustLetConditionNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RustLetConditionNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : 'generated' }
RustLetConditionNode >> letToken [
	^ letToken
]

{ #category : 'generated' }
RustLetConditionNode >> letToken: aSmaCCToken [
	letToken := aSmaCCToken
]

{ #category : 'generated' }
RustLetConditionNode >> matchValue [
	^ matchValue
]

{ #category : 'generated' }
RustLetConditionNode >> matchValue: aRustExpressionNode [
	self matchValue notNil ifTrue: [ self matchValue parent: nil ].
	matchValue := aRustExpressionNode.
	self matchValue notNil ifTrue: [ self matchValue parent: self ]
]

{ #category : 'generated' }
RustLetConditionNode >> nodeVariables [
	^ #(#matchValue)
]

{ #category : 'generated' }
RustLetConditionNode >> patterns [
	^ patterns
]

{ #category : 'generated' }
RustLetConditionNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : 'generated' }
RustLetConditionNode >> tokenVariables [
	^ #(#letToken #equalsToken)
]
