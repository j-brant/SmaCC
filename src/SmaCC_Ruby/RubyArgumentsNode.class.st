Class {
	#name : #RubyArgumentsNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'dots'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyArgumentsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArguments: self
]

{ #category : #generated }
RubyArgumentsNode >> dots [
	^ dots
]

{ #category : #generated }
RubyArgumentsNode >> dots: aSmaCCToken [
	dots := aSmaCCToken
]

{ #category : #generated }
RubyArgumentsNode >> tokenVariables [
	^ #(#dots)
]
