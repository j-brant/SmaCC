Class {
	#name : #RubyArrayExpressionNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'args',
		'commas',
		'left',
		'right'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyArrayExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayExpression: self
]

{ #category : #generated }
RubyArrayExpressionNode >> args [
	^ args
]

{ #category : #generated }
RubyArrayExpressionNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RubyArrayExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RubyArrayExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RubyArrayExpressionNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
RubyArrayExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
RubyArrayExpressionNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RubyArrayExpressionNode >> left [
	^ left
]

{ #category : #generated }
RubyArrayExpressionNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RubyArrayExpressionNode >> right [
	^ right
]

{ #category : #generated }
RubyArrayExpressionNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RubyArrayExpressionNode >> tokenVariables [
	^ #(#left #right)
]
