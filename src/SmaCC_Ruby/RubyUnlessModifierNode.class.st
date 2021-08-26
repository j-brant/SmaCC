Class {
	#name : 'RubyUnlessModifierNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'value',
		'unlessToken',
		'condition'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyUnlessModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnlessModifier: self
]

{ #category : 'generated' }
RubyUnlessModifierNode >> condition [
	^ condition
]

{ #category : 'generated' }
RubyUnlessModifierNode >> condition: aRubyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
RubyUnlessModifierNode >> nodeVariables [
	^ #(#value #condition)
]

{ #category : 'generated' }
RubyUnlessModifierNode >> tokenVariables [
	^ #(#unlessToken)
]

{ #category : 'generated' }
RubyUnlessModifierNode >> unlessToken [
	^ unlessToken
]

{ #category : 'generated' }
RubyUnlessModifierNode >> unlessToken: aSmaCCToken [
	unlessToken := aSmaCCToken
]

{ #category : 'generated' }
RubyUnlessModifierNode >> value [
	^ value
]

{ #category : 'generated' }
RubyUnlessModifierNode >> value: aRubyProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
