Class {
	#name : #RubyIndexExpressionNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'values',
		'leftBracket',
		'commas',
		'args',
		'rightBracket'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyIndexExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexExpression: self
]

{ #category : #generated }
RubyIndexExpressionNode >> args [
	^ args
]

{ #category : #generated }
RubyIndexExpressionNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RubyIndexExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RubyIndexExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RubyIndexExpressionNode >> compositeNodeVariables [
	^ #(#values #args)
]

{ #category : #generated }
RubyIndexExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
RubyIndexExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RubyIndexExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RubyIndexExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RubyIndexExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RubyIndexExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RubyIndexExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
RubyIndexExpressionNode >> values [
	^ values
]

{ #category : #generated }
RubyIndexExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
