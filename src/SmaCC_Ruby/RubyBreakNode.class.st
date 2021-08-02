Class {
	#name : #RubyBreakNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'breakToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyBreakNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBreak: self
]

{ #category : #generated }
RubyBreakNode >> breakToken [
	^ breakToken
]

{ #category : #generated }
RubyBreakNode >> breakToken: aSmaCCToken [
	breakToken := aSmaCCToken
]

{ #category : #generated }
RubyBreakNode >> tokenVariables [
	^ #(#breakToken)
]
