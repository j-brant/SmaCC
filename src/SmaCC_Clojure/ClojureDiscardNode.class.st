Class {
	#name : #ClojureDiscardNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'discard',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureDiscardNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitDiscard: self
]

{ #category : #generated }
ClojureDiscardNode >> discard [
	^ discard
]

{ #category : #generated }
ClojureDiscardNode >> discard: aSmaCCToken [
	discard := aSmaCCToken
]

{ #category : #testing }
ClojureDiscardNode >> isDiscarded [
	^ true
]

{ #category : #generated }
ClojureDiscardNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureDiscardNode >> tokenVariables [
	^ #(#discard)
]

{ #category : #generated }
ClojureDiscardNode >> value [
	^ value
]

{ #category : #generated }
ClojureDiscardNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
