Class {
	#name : 'RubyEndBlockNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'endToken',
		'leftBrace',
		'statements',
		'semicolons',
		'rightBrace'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyEndBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndBlock: self
]

{ #category : 'generated' }
RubyEndBlockNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
RubyEndBlockNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : 'generated' }
RubyEndBlockNode >> endToken [
	^ endToken
]

{ #category : 'generated' }
RubyEndBlockNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RubyEndBlockNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyEndBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
RubyEndBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyEndBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
RubyEndBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyEndBlockNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyEndBlockNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyEndBlockNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyEndBlockNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyEndBlockNode >> tokenVariables [
	^ #(#endToken #leftBrace #rightBrace)
]
