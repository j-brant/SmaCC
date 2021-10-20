Class {
	#name : 'RubyUntilModifierNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'statement',
		'untilToken',
		'condition'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyUntilModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUntilModifier: self
]

{ #category : 'generated' }
RubyUntilModifierNode >> condition [
	^ condition
]

{ #category : 'generated' }
RubyUntilModifierNode >> condition: aRubyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
RubyUntilModifierNode >> nodeVariables [
	^ #(#statement #condition)
]

{ #category : 'generated' }
RubyUntilModifierNode >> statement [
	^ statement
]

{ #category : 'generated' }
RubyUntilModifierNode >> statement: aRubyProgramNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aRubyProgramNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]

{ #category : 'generated' }
RubyUntilModifierNode >> tokenVariables [
	^ #(#untilToken)
]

{ #category : 'generated' }
RubyUntilModifierNode >> untilToken [
	^ untilToken
]

{ #category : 'generated' }
RubyUntilModifierNode >> untilToken: aSmaCCToken [
	untilToken := aSmaCCToken
]
