Class {
	#name : #ClojureLiteralNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureLiteralNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitLiteral: self
]

{ #category : #generated }
ClojureLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureLiteralNode >> value [
	^ value
]

{ #category : #generated }
ClojureLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
