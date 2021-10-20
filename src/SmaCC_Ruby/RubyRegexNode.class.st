Class {
	#name : 'RubyRegexNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'parts',
		'expressions'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyRegexNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRegex: self
]

{ #category : 'generated' }
RubyRegexNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : 'generated' }
RubyRegexNode >> compositeTokenVariables [
	^ #(#parts #leftParens #rightParens)
]

{ #category : 'generated' }
RubyRegexNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
RubyRegexNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated-initialize-release' }
RubyRegexNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyRegexNode >> parts [
	^ parts
]

{ #category : 'generated' }
RubyRegexNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
