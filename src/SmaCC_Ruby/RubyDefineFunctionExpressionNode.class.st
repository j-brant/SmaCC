Class {
	#name : 'RubyDefineFunctionExpressionNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'defToken',
		'name',
		'commas',
		'args',
		'operator',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefineFunctionExpression: self
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> args [
	^ args
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> commas [
	^ commas
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> defToken [
	^ defToken
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> defToken: aSmaCCToken [
	defToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RubyDefineFunctionExpressionNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> name [
	^ name
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> tokenVariables [
	^ #(#defToken #name #operator)
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
RubyDefineFunctionExpressionNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
