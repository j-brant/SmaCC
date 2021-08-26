Class {
	#name : 'RubyNextNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'nextToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyNextNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNext: self
]

{ #category : 'generated' }
RubyNextNode >> nextToken [
	^ nextToken
]

{ #category : 'generated' }
RubyNextNode >> nextToken: aSmaCCToken [
	nextToken := aSmaCCToken
]

{ #category : 'generated' }
RubyNextNode >> tokenVariables [
	^ #(#nextToken)
]
