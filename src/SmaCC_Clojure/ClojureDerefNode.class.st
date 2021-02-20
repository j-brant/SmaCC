Class {
	#name : #ClojureDerefNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'deref',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureDerefNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitDeref: self
]

{ #category : #generated }
ClojureDerefNode >> deref [
	^ deref
]

{ #category : #generated }
ClojureDerefNode >> deref: aSmaCCToken [
	deref := aSmaCCToken
]

{ #category : #generated }
ClojureDerefNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureDerefNode >> tokenVariables [
	^ #(#deref)
]

{ #category : #generated }
ClojureDerefNode >> value [
	^ value
]

{ #category : #generated }
ClojureDerefNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
