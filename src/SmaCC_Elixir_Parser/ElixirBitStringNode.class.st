Class {
	#name : #ElixirBitStringNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'open',
		'close',
		'args'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirBitStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBitString: self
]

{ #category : #generated }
ElixirBitStringNode >> args [
	^ args
]

{ #category : #generated }
ElixirBitStringNode >> args: anElixirContainerArgsNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirContainerArgsNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirBitStringNode >> close [
	^ close
]

{ #category : #generated }
ElixirBitStringNode >> close: aSmaCCToken [
	close := aSmaCCToken
]

{ #category : #generated }
ElixirBitStringNode >> nodeVariables [
	^ #(#args)
]

{ #category : #generated }
ElixirBitStringNode >> open [
	^ open
]

{ #category : #generated }
ElixirBitStringNode >> open: aSmaCCToken [
	open := aSmaCCToken
]

{ #category : #generated }
ElixirBitStringNode >> tokenVariables [
	^ #(#open #close)
]
