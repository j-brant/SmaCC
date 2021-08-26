Class {
	#name : 'RubyRescueModifierNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'value',
		'rescueToken',
		'rescueValue'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyRescueModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRescueModifier: self
]

{ #category : 'generated' }
RubyRescueModifierNode >> nodeVariables [
	^ #(#value #rescueValue)
]

{ #category : 'generated' }
RubyRescueModifierNode >> rescueToken [
	^ rescueToken
]

{ #category : 'generated' }
RubyRescueModifierNode >> rescueToken: aSmaCCToken [
	rescueToken := aSmaCCToken
]

{ #category : 'generated' }
RubyRescueModifierNode >> rescueValue [
	^ rescueValue
]

{ #category : 'generated' }
RubyRescueModifierNode >> rescueValue: aRubyProgramNode [
	self rescueValue notNil ifTrue: [ self rescueValue parent: nil ].
	rescueValue := aRubyProgramNode.
	self rescueValue notNil ifTrue: [ self rescueValue parent: self ]
]

{ #category : 'generated' }
RubyRescueModifierNode >> tokenVariables [
	^ #(#rescueToken)
]

{ #category : 'generated' }
RubyRescueModifierNode >> value [
	^ value
]

{ #category : 'generated' }
RubyRescueModifierNode >> value: aRubyProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
