Class {
	#name : #RubyReturnNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'returnToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyReturnNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReturn: self
]

{ #category : #generated }
RubyReturnNode >> returnToken [
	^ returnToken
]

{ #category : #generated }
RubyReturnNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : #generated }
RubyReturnNode >> tokenVariables [
	^ #(#returnToken)
]
