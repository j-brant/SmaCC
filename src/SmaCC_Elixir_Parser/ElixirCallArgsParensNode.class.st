Class {
	#name : #ElixirCallArgsParensNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'args',
		'kw',
		'coms'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCallArgsParensNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsParens: self
]

{ #category : #generated }
ElixirCallArgsParensNode >> args [
	^ args
]

{ #category : #generated }
ElixirCallArgsParensNode >> args: anElixirProgramNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirProgramNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirCallArgsParensNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : #generated }
ElixirCallArgsParensNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirCallArgsParensNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirCallArgsParensNode >> initialize [
	super initialize.
	coms := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirCallArgsParensNode >> kw [
	^ kw
]

{ #category : #generated }
ElixirCallArgsParensNode >> kw: anElixirKwBaseNode [
	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwBaseNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : #generated }
ElixirCallArgsParensNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
ElixirCallArgsParensNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
ElixirCallArgsParensNode >> nodeVariables [
	^ #(#args #kw)
]

{ #category : #generated }
ElixirCallArgsParensNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
ElixirCallArgsParensNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
ElixirCallArgsParensNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
