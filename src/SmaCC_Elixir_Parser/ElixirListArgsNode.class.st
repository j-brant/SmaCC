Class {
	#name : #ElixirListArgsNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'kw',
		'container',
		'com'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirListArgsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListArgs: self
]

{ #category : #generated }
ElixirListArgsNode >> com [
	^ com
]

{ #category : #generated }
ElixirListArgsNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : #generated }
ElixirListArgsNode >> container [
	^ container
]

{ #category : #generated }
ElixirListArgsNode >> container: anElixirContainerArgsBaseNode [
	self container notNil ifTrue: [ self container parent: nil ].
	container := anElixirContainerArgsBaseNode.
	self container notNil ifTrue: [ self container parent: self ]
]

{ #category : #generated }
ElixirListArgsNode >> kw [
	^ kw
]

{ #category : #generated }
ElixirListArgsNode >> kw: anElixirKwNode [

	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : #generated }
ElixirListArgsNode >> nodeVariables [
	^ #(#kw #container)
]

{ #category : #generated }
ElixirListArgsNode >> tokenVariables [
	^ #(#com)
]
