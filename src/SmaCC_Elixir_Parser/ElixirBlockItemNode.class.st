Class {
	#name : 'ElixirBlockItemNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'block',
		'stab'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirBlockItemNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockItem: self
]

{ #category : 'generated' }
ElixirBlockItemNode >> block [
	^ block
]

{ #category : 'generated' }
ElixirBlockItemNode >> block: anElixirBlockEoeNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := anElixirBlockEoeNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
ElixirBlockItemNode >> nodeVariables [
	^ #(#block #stab)
]

{ #category : 'generated' }
ElixirBlockItemNode >> stab [
	^ stab
]

{ #category : 'generated' }
ElixirBlockItemNode >> stab: anElixirStabNode [
	self stab notNil ifTrue: [ self stab parent: nil ].
	stab := anElixirStabNode.
	self stab notNil ifTrue: [ self stab parent: self ]
]
