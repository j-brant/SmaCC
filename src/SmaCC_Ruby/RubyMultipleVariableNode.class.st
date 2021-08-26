Class {
	#name : 'RubyMultipleVariableNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'variables',
		'commas'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyMultipleVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMultipleVariable: self
]

{ #category : 'generated' }
RubyMultipleVariableNode >> commas [
	^ commas
]

{ #category : 'generated' }
RubyMultipleVariableNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RubyMultipleVariableNode >> compositeNodeVariables [
	^ #(#variables)
]

{ #category : 'generated' }
RubyMultipleVariableNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
RubyMultipleVariableNode >> initialize [
	super initialize.
	variables := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyMultipleVariableNode >> variables [
	^ variables
]

{ #category : 'generated' }
RubyMultipleVariableNode >> variables: anOrderedCollection [
	self setParents: self variables to: nil.
	variables := anOrderedCollection.
	self setParents: self variables to: self
]
