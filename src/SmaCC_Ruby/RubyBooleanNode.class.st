Class {
	#name : 'RubyBooleanNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyBooleanNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBoolean: self
]

{ #category : 'generated' }
RubyBooleanNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyBooleanNode >> value [
	^ value
]

{ #category : 'generated' }
RubyBooleanNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
