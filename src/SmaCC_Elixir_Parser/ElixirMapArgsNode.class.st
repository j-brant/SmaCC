Class {
	#name : #ElixirMapArgsNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'leftCurly',
		'rightCurly',
		'association',
		'com'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirMapArgsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMapArgs: self
]

{ #category : #generated }
ElixirMapArgsNode >> association [
	^ association
]

{ #category : #generated }
ElixirMapArgsNode >> association: anElixirProgramNode [
	self association notNil ifTrue: [ self association parent: nil ].
	association := anElixirProgramNode.
	self association notNil ifTrue: [ self association parent: self ]
]

{ #category : #generated }
ElixirMapArgsNode >> com [
	^ com
]

{ #category : #generated }
ElixirMapArgsNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : #generated }
ElixirMapArgsNode >> leftCurly [
	^ leftCurly
]

{ #category : #generated }
ElixirMapArgsNode >> leftCurly: aSmaCCToken [
	leftCurly := aSmaCCToken
]

{ #category : #generated }
ElixirMapArgsNode >> nodeVariables [
	^ #(#association)
]

{ #category : #generated }
ElixirMapArgsNode >> otherVariables [
	^ #(#rightCurly)
]

{ #category : #generated }
ElixirMapArgsNode >> rightCurly [
	^ rightCurly
]

{ #category : #generated }
ElixirMapArgsNode >> rightCurly: anObject [
	self setParent: self rightCurly to: nil.
	rightCurly := anObject.
	self setParent: self rightCurly to: self
]

{ #category : #generated }
ElixirMapArgsNode >> tokenVariables [
	^ #(#leftCurly #com)
]
