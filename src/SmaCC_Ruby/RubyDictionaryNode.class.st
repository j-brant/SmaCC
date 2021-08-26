Class {
	#name : 'RubyDictionaryNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'leftBrace',
		'args',
		'commas',
		'rightBrace',
		'values'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyDictionaryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDictionary: self
]

{ #category : 'generated' }
RubyDictionaryNode >> args [
	^ args
]

{ #category : 'generated' }
RubyDictionaryNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : 'generated' }
RubyDictionaryNode >> commas [
	^ commas
]

{ #category : 'generated' }
RubyDictionaryNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RubyDictionaryNode >> compositeNodeVariables [
	^ #(#args #values)
]

{ #category : 'generated' }
RubyDictionaryNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
RubyDictionaryNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyDictionaryNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
RubyDictionaryNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyDictionaryNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
RubyDictionaryNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyDictionaryNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : 'generated' }
RubyDictionaryNode >> values [
	^ values
]

{ #category : 'generated' }
RubyDictionaryNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
