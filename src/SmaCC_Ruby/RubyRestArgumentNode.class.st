Class {
	#name : #RubyRestArgumentNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'operator',
		'name'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyRestArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRestArgument: self
]

{ #category : #generated }
RubyRestArgumentNode >> name [
	^ name
]

{ #category : #generated }
RubyRestArgumentNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RubyRestArgumentNode >> operator [
	^ operator
]

{ #category : #generated }
RubyRestArgumentNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RubyRestArgumentNode >> tokenVariables [
	^ #(#operator #name)
]
