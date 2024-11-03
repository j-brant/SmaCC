Class {
	#name : 'ElixirBlockListNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'items'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirBlockListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockList: self
]

{ #category : 'generated' }
ElixirBlockListNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : 'generated-initialize-release' }
ElixirBlockListNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirBlockListNode >> items [
	^ items
]

{ #category : 'generated' }
ElixirBlockListNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]
