Class {
	#name : 'RubyStringNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'parts',
		'expressions'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]

{ #category : 'generated' }
RubyStringNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : 'generated' }
RubyStringNode >> compositeTokenVariables [
	^ #(#parts #leftParens #rightParens)
]

{ #category : 'generated' }
RubyStringNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
RubyStringNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated-initialize-release' }
RubyStringNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyStringNode >> parts [
	^ parts
]

{ #category : 'generated' }
RubyStringNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
