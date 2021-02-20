Class {
	#name : #ClojureSymbolicNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'hashes',
		'name'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureSymbolicNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitSymbolic: self
]

{ #category : #generated }
ClojureSymbolicNode >> hashes [
	^ hashes
]

{ #category : #generated }
ClojureSymbolicNode >> hashes: aSmaCCToken [
	hashes := aSmaCCToken
]

{ #category : #generated }
ClojureSymbolicNode >> name [
	^ name
]

{ #category : #generated }
ClojureSymbolicNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
ClojureSymbolicNode >> tokenVariables [
	^ #(#hashes #name)
]
