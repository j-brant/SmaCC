Class {
	#name : 'RubyRetryNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'retryToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyRetryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRetry: self
]

{ #category : 'generated' }
RubyRetryNode >> retryToken [
	^ retryToken
]

{ #category : 'generated' }
RubyRetryNode >> retryToken: aSmaCCToken [
	retryToken := aSmaCCToken
]

{ #category : 'generated' }
RubyRetryNode >> tokenVariables [
	^ #(#retryToken)
]
