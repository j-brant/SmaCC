Class {
	#name : #SmaCCRegexNode,
	#superclass : #SmaCCDefinitionNode,
	#instVars : [
		'leftParen',
		'rightParen'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCRegexNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitRegex: self
]

{ #category : #generated }
SmaCCRegexNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
SmaCCRegexNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
SmaCCRegexNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
SmaCCRegexNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
SmaCCRegexNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
