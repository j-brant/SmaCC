Class {
	#name : #ElixirStabExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'expression',
		'args',
		'guard'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirStabExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStabExpr: self
]

{ #category : #generated }
ElixirStabExprNode >> args [
	^ args
]

{ #category : #generated }
ElixirStabExprNode >> args: anElixirProgramNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirProgramNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirStabExprNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirStabExprNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirStabExprNode >> guard [
	^ guard
]

{ #category : #generated }
ElixirStabExprNode >> guard: anElixirProgramNode [
	self guard notNil ifTrue: [ self guard parent: nil ].
	guard := anElixirProgramNode.
	self guard notNil ifTrue: [ self guard parent: self ]
]

{ #category : #generated }
ElixirStabExprNode >> nodeVariables [
	^ #(#expression #args #guard)
]
