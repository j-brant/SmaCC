Class {
	#name : #RustIfLetExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'ifToken',
		'letToken',
		'patterns',
		'bars',
		'equalsToken',
		'matchValue',
		'thenValue',
		'elseToken',
		'elseValue'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustIfLetExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfLetExpression: self
]

{ #category : #generated }
RustIfLetExpressionNode >> bars [
	^ bars
]

{ #category : #generated }
RustIfLetExpressionNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustIfLetExpressionNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustIfLetExpressionNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #generated }
RustIfLetExpressionNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
RustIfLetExpressionNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #generated }
RustIfLetExpressionNode >> elseValue [
	^ elseValue
]

{ #category : #generated }
RustIfLetExpressionNode >> elseValue: aRustExpressionNode [
	self elseValue notNil ifTrue: [ self elseValue parent: nil ].
	elseValue := aRustExpressionNode.
	self elseValue notNil ifTrue: [ self elseValue parent: self ]
]

{ #category : #generated }
RustIfLetExpressionNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustIfLetExpressionNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
RustIfLetExpressionNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
RustIfLetExpressionNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustIfLetExpressionNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustIfLetExpressionNode >> letToken [
	^ letToken
]

{ #category : #generated }
RustIfLetExpressionNode >> letToken: aSmaCCToken [
	letToken := aSmaCCToken
]

{ #category : #generated }
RustIfLetExpressionNode >> matchValue [
	^ matchValue
]

{ #category : #generated }
RustIfLetExpressionNode >> matchValue: aRustExpressionNode [
	self matchValue notNil ifTrue: [ self matchValue parent: nil ].
	matchValue := aRustExpressionNode.
	self matchValue notNil ifTrue: [ self matchValue parent: self ]
]

{ #category : #generated }
RustIfLetExpressionNode >> nodeVariables [
	^ #(#matchValue #thenValue #elseValue)
]

{ #category : #generated }
RustIfLetExpressionNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustIfLetExpressionNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustIfLetExpressionNode >> thenValue [
	^ thenValue
]

{ #category : #generated }
RustIfLetExpressionNode >> thenValue: aRustBlockExpressionNode [
	self thenValue notNil ifTrue: [ self thenValue parent: nil ].
	thenValue := aRustBlockExpressionNode.
	self thenValue notNil ifTrue: [ self thenValue parent: self ]
]

{ #category : #generated }
RustIfLetExpressionNode >> tokenVariables [
	^ #(#ifToken #letToken #equalsToken #elseToken)
]
