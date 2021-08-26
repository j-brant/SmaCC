Class {
	#name : 'RubyExpressionNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : 'generated' }
RubyExpressionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
RubyExpressionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyExpressionNode >> leftParens [
	^ leftParens
]

{ #category : 'generated' }
RubyExpressionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : 'generated' }
RubyExpressionNode >> rightParens [
	^ rightParens
]

{ #category : 'generated' }
RubyExpressionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
