Class {
	#name : #ClojurePairNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'key',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojurePairNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitPair: self
]

{ #category : #generated }
ClojurePairNode >> key [
	^ key
]

{ #category : #generated }
ClojurePairNode >> key: aClojureExpressionNode [
	self key notNil
		ifTrue: [ self key parent: nil ].
	key := aClojureExpressionNode.
	self key notNil
		ifTrue: [ self key parent: self ]
]

{ #category : #generated }
ClojurePairNode >> nodeVariables [
	^ #(#key #value)
]

{ #category : #generated }
ClojurePairNode >> value [
	^ value
]

{ #category : #generated }
ClojurePairNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
