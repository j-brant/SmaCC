Class {
	#name : 'ElixirMapNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'cen',
		'args',
		'struct'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirMapNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMap: self
]

{ #category : 'generated' }
ElixirMapNode >> args [
	^ args
]

{ #category : 'generated' }
ElixirMapNode >> args: anElixirMapArgsNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirMapArgsNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : 'generated' }
ElixirMapNode >> cen [
	^ cen
]

{ #category : 'generated' }
ElixirMapNode >> cen: aSmaCCToken [
	cen := aSmaCCToken
]

{ #category : 'generated' }
ElixirMapNode >> nodeVariables [
	^ #(#args #struct)
]

{ #category : 'generated' }
ElixirMapNode >> struct [
	^ struct
]

{ #category : 'generated' }
ElixirMapNode >> struct: anElixirStructExprNode [
	self struct notNil ifTrue: [ self struct parent: nil ].
	struct := anElixirStructExprNode.
	self struct notNil ifTrue: [ self struct parent: self ]
]

{ #category : 'generated' }
ElixirMapNode >> tokenVariables [
	^ #(#cen)
]
