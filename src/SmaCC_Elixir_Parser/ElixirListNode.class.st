Class {
	#name : #ElixirListNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'leftBracket',
		'close',
		'args'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitList: self
]

{ #category : #generated }
ElixirListNode >> args [
	^ args
]

{ #category : #generated }
ElixirListNode >> args: anElixirListArgsNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirListArgsNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirListNode >> close [
	^ close
]

{ #category : #generated }
ElixirListNode >> close: aSmaCCToken [
	close := aSmaCCToken
]

{ #category : #generated }
ElixirListNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
ElixirListNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
ElixirListNode >> nodeVariables [
	^ #(#args)
]

{ #category : #generated }
ElixirListNode >> tokenVariables [
	^ #(#leftBracket #close)
]
