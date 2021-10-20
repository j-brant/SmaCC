Class {
	#name : 'RubyVariableNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'name'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariable: self
]

{ #category : 'generated' }
RubyVariableNode >> name [
	^ name
]

{ #category : 'generated' }
RubyVariableNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyVariableNode >> tokenVariables [
	^ #(#name)
]
