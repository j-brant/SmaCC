Class {
	#name : #ClojureStringNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureStringNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitString: self
]

{ #category : #generated }
ClojureStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureStringNode >> value [
	^ value
]

{ #category : #generated }
ClojureStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
