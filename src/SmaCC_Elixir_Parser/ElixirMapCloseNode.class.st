Class {
	#name : #ElixirMapCloseNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'kw',
		'close',
		'association',
		'com'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirMapCloseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMapClose: self
]

{ #category : #generated }
ElixirMapCloseNode >> association [
	^ association
]

{ #category : #generated }
ElixirMapCloseNode >> association: anElixirProgramNode [
	self association notNil ifTrue: [ self association parent: nil ].
	association := anElixirProgramNode.
	self association notNil ifTrue: [ self association parent: self ]
]

{ #category : #generated }
ElixirMapCloseNode >> close [
	^ close
]

{ #category : #generated }
ElixirMapCloseNode >> close: aSmaCCToken [
	close := aSmaCCToken
]

{ #category : #generated }
ElixirMapCloseNode >> com [
	^ com
]

{ #category : #generated }
ElixirMapCloseNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : #generated }
ElixirMapCloseNode >> kw [
	^ kw
]

{ #category : #generated }
ElixirMapCloseNode >> kw: anElixirKwBaseNode [
	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwBaseNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : #generated }
ElixirMapCloseNode >> nodeVariables [
	^ #(#kw #association)
]

{ #category : #generated }
ElixirMapCloseNode >> tokenVariables [
	^ #(#close #com)
]
