Class {
	#name : #ClojureTaggedLiteralNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'_hash',
		'name',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureTaggedLiteralNode >> _hash [
	^ _hash
]

{ #category : #generated }
ClojureTaggedLiteralNode >> _hash: aSmaCCToken [
	_hash := aSmaCCToken
]

{ #category : #generated }
ClojureTaggedLiteralNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitTaggedLiteral: self
]

{ #category : #generated }
ClojureTaggedLiteralNode >> name [
	^ name
]

{ #category : #generated }
ClojureTaggedLiteralNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
ClojureTaggedLiteralNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureTaggedLiteralNode >> tokenVariables [
	^ #(#_hash #name)
]

{ #category : #generated }
ClojureTaggedLiteralNode >> value [
	^ value
]

{ #category : #generated }
ClojureTaggedLiteralNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
