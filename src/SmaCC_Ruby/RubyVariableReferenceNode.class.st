Class {
	#name : #RubyVariableReferenceNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'operator',
		'name'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyVariableReferenceNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableReference: self
]

{ #category : #generated }
RubyVariableReferenceNode >> name [
	^ name
]

{ #category : #generated }
RubyVariableReferenceNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RubyVariableReferenceNode >> operator [
	^ operator
]

{ #category : #generated }
RubyVariableReferenceNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RubyVariableReferenceNode >> tokenVariables [
	^ #(#operator #name)
]
