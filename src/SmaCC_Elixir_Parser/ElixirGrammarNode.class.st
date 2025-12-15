Class {
	#name : 'ElixirGrammarNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'eoes',
		'expressions'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirGrammarNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGrammar: self
]

{ #category : 'generated' }
ElixirGrammarNode >> compositeTokenVariables [
	^ #(#eoes)
]

{ #category : 'generated' }
ElixirGrammarNode >> eoes [
	^ eoes
]

{ #category : 'generated' }
ElixirGrammarNode >> eoes: anOrderedCollection [
	eoes := anOrderedCollection
]

{ #category : 'generated' }
ElixirGrammarNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
ElixirGrammarNode >> expressions: anElixirExprListNode [
	self expressions notNil ifTrue: [ self expressions parent: nil ].
	expressions := anElixirExprListNode.
	self expressions notNil ifTrue: [ self expressions parent: self ]
]

{ #category : 'generated-initialize-release' }
ElixirGrammarNode >> initialize [
	super initialize.
	eoes := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirGrammarNode >> nodeVariables [
	^ #(#expressions)
]
