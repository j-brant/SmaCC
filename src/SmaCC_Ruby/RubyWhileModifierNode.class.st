Class {
	#name : #RubyWhileModifierNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'statement',
		'whileToken',
		'condition'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyWhileModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhileModifier: self
]

{ #category : #generated }
RubyWhileModifierNode >> condition [
	^ condition
]

{ #category : #generated }
RubyWhileModifierNode >> condition: aRubyExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RubyWhileModifierNode >> nodeVariables [
	^ #(#statement #condition)
]

{ #category : #generated }
RubyWhileModifierNode >> statement [
	^ statement
]

{ #category : #generated }
RubyWhileModifierNode >> statement: aRubyProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aRubyProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
RubyWhileModifierNode >> tokenVariables [
	^ #(#whileToken)
]

{ #category : #generated }
RubyWhileModifierNode >> whileToken [
	^ whileToken
]

{ #category : #generated }
RubyWhileModifierNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
