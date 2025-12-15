Class {
	#name : 'ElixirTupleNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'leftCurly',
		'rightCurly',
		'elements'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirTupleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTuple: self
]

{ #category : 'generated' }
ElixirTupleNode >> elements [
	^ elements
]

{ #category : 'generated' }
ElixirTupleNode >> elements: anElixirContainerArgsNode [
	self elements notNil ifTrue: [ self elements parent: nil ].
	elements := anElixirContainerArgsNode.
	self elements notNil ifTrue: [ self elements parent: self ]
]

{ #category : 'generated' }
ElixirTupleNode >> leftCurly [
	^ leftCurly
]

{ #category : 'generated' }
ElixirTupleNode >> leftCurly: aSmaCCToken [
	leftCurly := aSmaCCToken
]

{ #category : 'generated' }
ElixirTupleNode >> nodeVariables [
	^ #(#elements)
]

{ #category : 'generated' }
ElixirTupleNode >> rightCurly [
	^ rightCurly
]

{ #category : 'generated' }
ElixirTupleNode >> rightCurly: aSmaCCToken [
	rightCurly := aSmaCCToken
]

{ #category : 'generated' }
ElixirTupleNode >> tokenVariables [
	^ #(#leftCurly #rightCurly)
]
