Class {
	#name : #CSSDelimiterNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSDelimiterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDelimiter: self
]

{ #category : #generated }
CSSDelimiterNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CSSDelimiterNode >> value [
	^ value
]

{ #category : #generated }
CSSDelimiterNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
