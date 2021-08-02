Class {
	#name : #RubyIfModifierNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'value',
		'ifToken',
		'condition'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyIfModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfModifier: self
]

{ #category : #generated }
RubyIfModifierNode >> condition [
	^ condition
]

{ #category : #generated }
RubyIfModifierNode >> condition: aRubyExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RubyIfModifierNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
RubyIfModifierNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #generated }
RubyIfModifierNode >> nodeVariables [
	^ #(#value #condition)
]

{ #category : #generated }
RubyIfModifierNode >> tokenVariables [
	^ #(#ifToken)
]

{ #category : #generated }
RubyIfModifierNode >> value [
	^ value
]

{ #category : #generated }
RubyIfModifierNode >> value: aRubyProgramNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aRubyProgramNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
