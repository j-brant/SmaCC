Class {
	#name : #ClojureRegularExpressionNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureRegularExpressionNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitRegularExpression: self
]

{ #category : #generated }
ClojureRegularExpressionNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureRegularExpressionNode >> value [
	^ value
]

{ #category : #generated }
ClojureRegularExpressionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
