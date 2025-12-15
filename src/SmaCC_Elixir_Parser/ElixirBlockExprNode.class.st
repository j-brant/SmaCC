Class {
	#name : 'ElixirBlockExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifier',
		'call',
		'do_block',
		'call2'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirBlockExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockExpr: self
]

{ #category : 'generated' }
ElixirBlockExprNode >> call [
	^ call
]

{ #category : 'generated' }
ElixirBlockExprNode >> call2 [
	^ call2
]

{ #category : 'generated' }
ElixirBlockExprNode >> call2: anElixirCallArgsParensNode [
	self call2 notNil ifTrue: [ self call2 parent: nil ].
	call2 := anElixirCallArgsParensNode.
	self call2 notNil ifTrue: [ self call2 parent: self ]
]

{ #category : 'generated' }
ElixirBlockExprNode >> call: anElixirProgramNode [
	self call notNil ifTrue: [ self call parent: nil ].
	call := anElixirProgramNode.
	self call notNil ifTrue: [ self call parent: self ]
]

{ #category : 'generated' }
ElixirBlockExprNode >> do_block [
	^ do_block
]

{ #category : 'generated' }
ElixirBlockExprNode >> do_block: anElixirDoBlockNode [
	self do_block notNil ifTrue: [ self do_block parent: nil ].
	do_block := anElixirDoBlockNode.
	self do_block notNil ifTrue: [ self do_block parent: self ]
]

{ #category : 'generated' }
ElixirBlockExprNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirBlockExprNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : 'generated' }
ElixirBlockExprNode >> nodeVariables [
	^ #(#identifier #call #do_block #call2)
]
