Class {
	#name : #ClojureNumberNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureNumberNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitNumber: self
]

{ #category : #generated }
ClojureNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureNumberNode >> value [
	^ value
]

{ #category : #generated }
ClojureNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
