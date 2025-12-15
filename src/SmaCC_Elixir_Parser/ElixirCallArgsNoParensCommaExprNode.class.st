Class {
	#name : 'ElixirCallArgsNoParensCommaExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'expression',
		'coms',
		'argses'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsNoParensCommaExpr: self
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> argses [
	^ argses
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> argses: anOrderedCollection [
	self setParents: self argses to: nil.
	argses := anOrderedCollection.
	self setParents: self argses to: self
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> compositeNodeVariables [
	^ #(#argses)
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> coms [
	^ coms
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
ElixirCallArgsNoParensCommaExprNode >> initialize [
	super initialize.
	coms := OrderedCollection new: 2.
	argses := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirCallArgsNoParensCommaExprNode >> nodeVariables [
	^ #(#expression)
]
