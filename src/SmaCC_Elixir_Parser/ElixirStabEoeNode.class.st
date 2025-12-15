Class {
	#name : 'ElixirStabEoeNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'stab',
		'eoe'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirStabEoeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStabEoe: self
]

{ #category : 'generated' }
ElixirStabEoeNode >> eoe [

	^ eoe
]

{ #category : 'generated' }
ElixirStabEoeNode >> eoe: aSmaCCToken [

	eoe := aSmaCCToken
]

{ #category : 'generated' }
ElixirStabEoeNode >> nodeVariables [
	^ #(#stab)
]

{ #category : 'generated' }
ElixirStabEoeNode >> stab [
	^ stab
]

{ #category : 'generated' }
ElixirStabEoeNode >> stab: anElixirStabNode [
	self stab notNil ifTrue: [ self stab parent: nil ].
	stab := anElixirStabNode.
	self stab notNil ifTrue: [ self stab parent: self ]
]

{ #category : 'generated' }
ElixirStabEoeNode >> tokenVariables [

	^ #( #eoe )
]
