Class {
	#name : 'ElixirMapArgsNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'leftCurly',
		'rightCurly',
		'kw',
		'associations',
		'coms'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirMapArgsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMapArgs: self
]

{ #category : 'generated' }
ElixirMapArgsNode >> associations [
	^ associations
]

{ #category : 'generated' }
ElixirMapArgsNode >> associations: anOrderedCollection [
	self setParents: self associations to: nil.
	associations := anOrderedCollection.
	self setParents: self associations to: self
]

{ #category : 'generated' }
ElixirMapArgsNode >> compositeNodeVariables [
	^ #(#associations)
]

{ #category : 'generated' }
ElixirMapArgsNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : 'generated' }
ElixirMapArgsNode >> coms [
	^ coms
]

{ #category : 'generated' }
ElixirMapArgsNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
ElixirMapArgsNode >> initialize [
	super initialize.
	associations := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirMapArgsNode >> kw [
	^ kw
]

{ #category : 'generated' }
ElixirMapArgsNode >> kw: anElixirKwNode [
	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : 'generated' }
ElixirMapArgsNode >> leftCurly [
	^ leftCurly
]

{ #category : 'generated' }
ElixirMapArgsNode >> leftCurly: aSmaCCToken [
	leftCurly := aSmaCCToken
]

{ #category : 'generated' }
ElixirMapArgsNode >> nodeVariables [
	^ #(#kw)
]

{ #category : 'generated' }
ElixirMapArgsNode >> rightCurly [
	^ rightCurly
]

{ #category : 'generated' }
ElixirMapArgsNode >> rightCurly: aSmaCCToken [
	rightCurly := aSmaCCToken
]

{ #category : 'generated' }
ElixirMapArgsNode >> tokenVariables [
	^ #(#leftCurly #rightCurly)
]
