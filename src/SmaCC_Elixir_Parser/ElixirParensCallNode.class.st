Class {
	#name : 'ElixirParensCallNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifier',
		'call',
		'call2'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirParensCallNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParensCall: self
]

{ #category : 'generated' }
ElixirParensCallNode >> call [
	^ call
]

{ #category : 'generated' }
ElixirParensCallNode >> call2 [
	^ call2
]

{ #category : 'generated' }
ElixirParensCallNode >> call2: anElixirCallArgsParensNode [
	self call2 notNil ifTrue: [ self call2 parent: nil ].
	call2 := anElixirCallArgsParensNode.
	self call2 notNil ifTrue: [ self call2 parent: self ]
]

{ #category : 'generated' }
ElixirParensCallNode >> call: anElixirCallArgsParensNode [
	self call notNil ifTrue: [ self call parent: nil ].
	call := anElixirCallArgsParensNode.
	self call notNil ifTrue: [ self call parent: self ]
]

{ #category : 'generated' }
ElixirParensCallNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirParensCallNode >> identifier: anElixirDotCallIdentifierNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirDotCallIdentifierNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : 'generated' }
ElixirParensCallNode >> nodeVariables [
	^ #(#identifier #call #call2)
]
