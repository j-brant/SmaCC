Class {
	#name : #ClojureKeywordNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureKeywordNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitKeyword: self
]

{ #category : #generated }
ClojureKeywordNode >> name [
	^ name
]

{ #category : #generated }
ClojureKeywordNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
ClojureKeywordNode >> tokenVariables [
	^ #(#name)
]
