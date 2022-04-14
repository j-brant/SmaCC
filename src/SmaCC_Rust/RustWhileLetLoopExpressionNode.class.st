Class {
	#name : #RustWhileLetLoopExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'whileToken',
		'letToken',
		'patterns',
		'bars',
		'equalsToken',
		'value',
		'block',
		'label',
		'colon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustWhileLetLoopExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhileLetLoopExpression: self
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> bars [
	^ bars
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> block [
	^ block
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> block: aRustBlockExpressionNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aRustBlockExpressionNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> colon [
	^ colon
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustWhileLetLoopExpressionNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> label [
	^ label
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> letToken [
	^ letToken
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> letToken: aSmaCCToken [
	letToken := aSmaCCToken
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> nodeVariables [
	^ #(#value #block)
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> tokenVariables [
	^ #(#whileToken #letToken #equalsToken #label #colon)
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> whileToken [
	^ whileToken
]

{ #category : #generated }
RustWhileLetLoopExpressionNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
