Class {
	#name : 'RubyCallNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'receiver',
		'operator',
		'name',
		'args',
		'commas',
		'blocks',
		'left',
		'right',
		'values'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyCallNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCall: self
]

{ #category : 'generated' }
RubyCallNode >> args [
	^ args
]

{ #category : 'generated' }
RubyCallNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : 'generated' }
RubyCallNode >> blocks [
	^ blocks
]

{ #category : 'generated' }
RubyCallNode >> blocks: anOrderedCollection [
	self setParents: self blocks to: nil.
	blocks := anOrderedCollection.
	self setParents: self blocks to: self
]

{ #category : 'generated' }
RubyCallNode >> commas [
	^ commas
]

{ #category : 'generated' }
RubyCallNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RubyCallNode >> compositeNodeVariables [
	^ #(#args #blocks #values)
]

{ #category : 'generated' }
RubyCallNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
RubyCallNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	blocks := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyCallNode >> left [
	^ left
]

{ #category : 'generated' }
RubyCallNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : 'generated' }
RubyCallNode >> name [
	^ name
]

{ #category : 'generated' }
RubyCallNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyCallNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : 'generated' }
RubyCallNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyCallNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyCallNode >> receiver [
	^ receiver
]

{ #category : 'generated' }
RubyCallNode >> receiver: aRubyExpressionNode [
	self receiver notNil ifTrue: [ self receiver parent: nil ].
	receiver := aRubyExpressionNode.
	self receiver notNil ifTrue: [ self receiver parent: self ]
]

{ #category : 'generated' }
RubyCallNode >> right [
	^ right
]

{ #category : 'generated' }
RubyCallNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : 'generated' }
RubyCallNode >> tokenVariables [
	^ #(#operator #name #left #right)
]

{ #category : 'generated' }
RubyCallNode >> values [
	^ values
]

{ #category : 'generated' }
RubyCallNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
