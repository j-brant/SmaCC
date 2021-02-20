Class {
	#name : #ClojureMetadataNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'uparrow',
		'metadata',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureMetadataNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitMetadata: self
]

{ #category : #generated }
ClojureMetadataNode >> metadata [
	^ metadata
]

{ #category : #generated }
ClojureMetadataNode >> metadata: aClojureExpressionNode [
	self metadata notNil
		ifTrue: [ self metadata parent: nil ].
	metadata := aClojureExpressionNode.
	self metadata notNil
		ifTrue: [ self metadata parent: self ]
]

{ #category : #generated }
ClojureMetadataNode >> nodeVariables [
	^ #(#metadata #value)
]

{ #category : #generated }
ClojureMetadataNode >> tokenVariables [
	^ #(#uparrow)
]

{ #category : #generated }
ClojureMetadataNode >> uparrow [
	^ uparrow
]

{ #category : #generated }
ClojureMetadataNode >> uparrow: aSmaCCToken [
	uparrow := aSmaCCToken
]

{ #category : #generated }
ClojureMetadataNode >> value [
	^ value
]

{ #category : #generated }
ClojureMetadataNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
