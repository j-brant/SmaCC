Class {
	#name : 'RubyRangeExpressionNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'first',
		'operator',
		'last'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyRangeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRangeExpression: self
]

{ #category : 'generated' }
RubyRangeExpressionNode >> first [
	^ first
]

{ #category : 'generated' }
RubyRangeExpressionNode >> first: aRubyExpressionNode [
	self first notNil ifTrue: [ self first parent: nil ].
	first := aRubyExpressionNode.
	self first notNil ifTrue: [ self first parent: self ]
]

{ #category : 'generated' }
RubyRangeExpressionNode >> last [
	^ last
]

{ #category : 'generated' }
RubyRangeExpressionNode >> last: aRubyExpressionNode [
	self last notNil ifTrue: [ self last parent: nil ].
	last := aRubyExpressionNode.
	self last notNil ifTrue: [ self last parent: self ]
]

{ #category : 'generated' }
RubyRangeExpressionNode >> nodeVariables [
	^ #(#first #last)
]

{ #category : 'generated' }
RubyRangeExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyRangeExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyRangeExpressionNode >> tokenVariables [
	^ #(#operator)
]
