Class {
	#name : 'RubyWhenNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'whenToken',
		'values',
		'commas',
		'semicolons',
		'thenToken',
		'statements'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyWhenNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhen: self
]

{ #category : 'generated' }
RubyWhenNode >> commas [
	^ commas
]

{ #category : 'generated' }
RubyWhenNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RubyWhenNode >> compositeNodeVariables [
	^ #(#values #statements)
]

{ #category : 'generated' }
RubyWhenNode >> compositeTokenVariables [
	^ #(#commas #semicolons)
]

{ #category : 'generated-initialize-release' }
RubyWhenNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyWhenNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyWhenNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyWhenNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyWhenNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyWhenNode >> thenToken [
	^ thenToken
]

{ #category : 'generated' }
RubyWhenNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : 'generated' }
RubyWhenNode >> tokenVariables [
	^ #(#whenToken #thenToken)
]

{ #category : 'generated' }
RubyWhenNode >> values [
	^ values
]

{ #category : 'generated' }
RubyWhenNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : 'generated' }
RubyWhenNode >> whenToken [
	^ whenToken
]

{ #category : 'generated' }
RubyWhenNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
