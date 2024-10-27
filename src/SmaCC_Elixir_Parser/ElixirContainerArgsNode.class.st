Class {
	#name : #ElixirContainerArgsNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'base',
		'com',
		'kw'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirContainerArgsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContainerArgs: self
]

{ #category : #generated }
ElixirContainerArgsNode >> base [
	^ base
]

{ #category : #generated }
ElixirContainerArgsNode >> base: anElixirContainerArgsBaseNode [
	self base notNil ifTrue: [ self base parent: nil ].
	base := anElixirContainerArgsBaseNode.
	self base notNil ifTrue: [ self base parent: self ]
]

{ #category : #generated }
ElixirContainerArgsNode >> com [
	^ com
]

{ #category : #generated }
ElixirContainerArgsNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : #generated }
ElixirContainerArgsNode >> kw [
	^ kw
]

{ #category : #generated }
ElixirContainerArgsNode >> kw: anElixirKwBaseNode [
	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwBaseNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : #generated }
ElixirContainerArgsNode >> nodeVariables [
	^ #(#base #kw)
]

{ #category : #generated }
ElixirContainerArgsNode >> tokenVariables [
	^ #(#com)
]
