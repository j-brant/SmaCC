Class {
	#name : #RubyYieldNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'yieldToken',
		'args',
		'commas'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyYieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitYield: self
]

{ #category : #generated }
RubyYieldNode >> args [
	^ args
]

{ #category : #generated }
RubyYieldNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RubyYieldNode >> commas [
	^ commas
]

{ #category : #generated }
RubyYieldNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RubyYieldNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
RubyYieldNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
RubyYieldNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RubyYieldNode >> tokenVariables [
	^ #(#yieldToken)
]

{ #category : #generated }
RubyYieldNode >> yieldToken [
	^ yieldToken
]

{ #category : #generated }
RubyYieldNode >> yieldToken: aSmaCCToken [
	yieldToken := aSmaCCToken
]
