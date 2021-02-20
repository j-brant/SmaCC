Class {
	#name : #ClojureCharacterNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureCharacterNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitCharacter: self
]

{ #category : #generated }
ClojureCharacterNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureCharacterNode >> value [
	^ value
]

{ #category : #generated }
ClojureCharacterNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
