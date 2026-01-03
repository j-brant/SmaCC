Class {
	#name : 'ElixirDoBlockNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'do',
		'end',
		'stab',
		'block'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirDoBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoBlock: self
]

{ #category : 'generated' }
ElixirDoBlockNode >> block [
	^ block
]

{ #category : 'generated' }
ElixirDoBlockNode >> block: anElixirBlockListNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := anElixirBlockListNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
ElixirDoBlockNode >> do [
	^ do
]

{ #category : 'generated' }
ElixirDoBlockNode >> do: aSmaCCToken [
	do := aSmaCCToken
]

{ #category : 'generated' }
ElixirDoBlockNode >> end [
	^ end
]

{ #category : 'generated' }
ElixirDoBlockNode >> end: aSmaCCToken [
	end := aSmaCCToken
]

{ #category : 'generated' }
ElixirDoBlockNode >> nodeVariables [
	^ #(#stab #block)
]

{ #category : 'generated' }
ElixirDoBlockNode >> stab [
	^ stab
]

{ #category : 'generated' }
ElixirDoBlockNode >> stab: anElixirStabNode [
	self stab notNil ifTrue: [ self stab parent: nil ].
	stab := anElixirStabNode.
	self stab notNil ifTrue: [ self stab parent: self ]
]

{ #category : 'generated' }
ElixirDoBlockNode >> tokenVariables [
	^ #(#do #end)
]
