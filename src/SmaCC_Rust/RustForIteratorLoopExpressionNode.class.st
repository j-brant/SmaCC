Class {
	#name : #RustForIteratorLoopExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'forToken',
		'patterns',
		'bars',
		'inToken',
		'value',
		'block',
		'label',
		'colon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustForIteratorLoopExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForIteratorLoopExpression: self
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> bars [
	^ bars
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> block [
	^ block
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> block: aRustBlockExpressionNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aRustBlockExpressionNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> colon [
	^ colon
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> forToken [
	^ forToken
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> inToken [
	^ inToken
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustForIteratorLoopExpressionNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> label [
	^ label
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> nodeVariables [
	^ #(#value #block)
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> tokenVariables [
	^ #(#forToken #inToken #label #colon)
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustForIteratorLoopExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
