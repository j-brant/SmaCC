Class {
	#name : #RubyLabelNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'label'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyLabelNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLabel: self
]

{ #category : #generated }
RubyLabelNode >> label [
	^ label
]

{ #category : #generated }
RubyLabelNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RubyLabelNode >> tokenVariables [
	^ #(#label)
]
