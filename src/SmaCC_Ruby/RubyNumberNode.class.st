Class {
	#name : 'RubyNumberNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : 'generated' }
RubyNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyNumberNode >> value [
	^ value
]

{ #category : 'generated' }
RubyNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
