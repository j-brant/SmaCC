Class {
	#name : #RustClosureExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'bars',
		'expression',
		'arrow',
		'type',
		'parameters',
		'commas',
		'moveToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustClosureExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClosureExpression: self
]

{ #category : #generated }
RustClosureExpressionNode >> arrow [
	^ arrow
]

{ #category : #generated }
RustClosureExpressionNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
RustClosureExpressionNode >> bars [
	^ bars
]

{ #category : #generated }
RustClosureExpressionNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustClosureExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RustClosureExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustClosureExpressionNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
RustClosureExpressionNode >> compositeTokenVariables [
	^ #(#bars #commas)
]

{ #category : #generated }
RustClosureExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustClosureExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
RustClosureExpressionNode >> initialize [
	super initialize.
	bars := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustClosureExpressionNode >> moveToken [
	^ moveToken
]

{ #category : #generated }
RustClosureExpressionNode >> moveToken: aSmaCCToken [
	moveToken := aSmaCCToken
]

{ #category : #generated }
RustClosureExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : #generated }
RustClosureExpressionNode >> parameters [
	^ parameters
]

{ #category : #generated }
RustClosureExpressionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
RustClosureExpressionNode >> tokenVariables [
	^ #(#arrow #moveToken)
]

{ #category : #generated }
RustClosureExpressionNode >> type [
	^ type
]

{ #category : #generated }
RustClosureExpressionNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
