Class {
	#name : #ElixirLambdaNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'fn',
		'stab',
		'end'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirLambdaNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLambda: self
]

{ #category : #generated }
ElixirLambdaNode >> end [
	^ end
]

{ #category : #generated }
ElixirLambdaNode >> end: anElixirEndEoeNode [
	self end notNil ifTrue: [ self end parent: nil ].
	end := anElixirEndEoeNode.
	self end notNil ifTrue: [ self end parent: self ]
]

{ #category : #generated }
ElixirLambdaNode >> fn [
	^ fn
]

{ #category : #generated }
ElixirLambdaNode >> fn: anElixirFnEoeNode [
	self fn notNil ifTrue: [ self fn parent: nil ].
	fn := anElixirFnEoeNode.
	self fn notNil ifTrue: [ self fn parent: self ]
]

{ #category : #generated }
ElixirLambdaNode >> nodeVariables [
	^ #(#fn #stab #end)
]

{ #category : #generated }
ElixirLambdaNode >> stab [
	^ stab
]

{ #category : #generated }
ElixirLambdaNode >> stab: anElixirStabNode [
	self stab notNil ifTrue: [ self stab parent: nil ].
	stab := anElixirStabNode.
	self stab notNil ifTrue: [ self stab parent: self ]
]
