Class {
	#name : 'RubyCharacterNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyCharacterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCharacter: self
]

{ #category : 'generated' }
RubyCharacterNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyCharacterNode >> value [
	^ value
]

{ #category : 'generated' }
RubyCharacterNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
