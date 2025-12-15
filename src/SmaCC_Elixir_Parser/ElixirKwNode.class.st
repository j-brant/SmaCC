Class {
	#name : 'ElixirKwNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'kw',
		'com'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirKwNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitKw: self
]

{ #category : 'generated' }
ElixirKwNode >> com [

	^ com
]

{ #category : 'generated' }
ElixirKwNode >> com: aSmaCCToken [

	com := aSmaCCToken
]

{ #category : 'generated' }
ElixirKwNode >> kw [

	^ kw
]

{ #category : 'generated' }
ElixirKwNode >> kw: anElixirKwBaseNode [

	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwBaseNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : 'generated' }
ElixirKwNode >> nodeVariables [

	^ #( #kw )
]

{ #category : 'generated' }
ElixirKwNode >> tokenVariables [

	^ #( #com )
]
