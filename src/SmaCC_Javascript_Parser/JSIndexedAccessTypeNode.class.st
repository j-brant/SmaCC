Class {
	#name : #JSIndexedAccessTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'type',
		'leftBracket',
		'index',
		'rightBracket'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSIndexedAccessTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexedAccessType: self
]

{ #category : #generated }
JSIndexedAccessTypeNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
JSIndexedAccessTypeNode >> index [
	^ index
]

{ #category : #generated }
JSIndexedAccessTypeNode >> index: aJSTypeNode [
	self index notNil ifTrue: [ self index parent: nil ].
	index := aJSTypeNode.
	self index notNil ifTrue: [ self index parent: self ]
]

{ #category : #generated }
JSIndexedAccessTypeNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
JSIndexedAccessTypeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
JSIndexedAccessTypeNode >> nodeVariables [
	^ #(#type #index)
]

{ #category : #generated }
JSIndexedAccessTypeNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
JSIndexedAccessTypeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
JSIndexedAccessTypeNode >> type [
	^ type
]

{ #category : #generated }
JSIndexedAccessTypeNode >> type: aJSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
