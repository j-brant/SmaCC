Class {
	#name : #RubySelfNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'selfToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubySelfNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelf: self
]

{ #category : #generated }
RubySelfNode >> selfToken [
	^ selfToken
]

{ #category : #generated }
RubySelfNode >> selfToken: aSmaCCToken [
	selfToken := aSmaCCToken
]

{ #category : #generated }
RubySelfNode >> tokenVariables [
	^ #(#selfToken)
]
