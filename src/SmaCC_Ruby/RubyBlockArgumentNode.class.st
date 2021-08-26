Class {
	#name : 'RubyBlockArgumentNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'ampersand',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyBlockArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockArgument: self
]

{ #category : 'generated' }
RubyBlockArgumentNode >> ampersand [
	^ ampersand
]

{ #category : 'generated' }
RubyBlockArgumentNode >> ampersand: aSmaCCToken [
	ampersand := aSmaCCToken
]

{ #category : 'generated' }
RubyBlockArgumentNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyBlockArgumentNode >> tokenVariables [
	^ #(#ampersand)
]

{ #category : 'generated' }
RubyBlockArgumentNode >> value [
	^ value
]

{ #category : 'generated' }
RubyBlockArgumentNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
