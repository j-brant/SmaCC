Class {
	#name : 'RubyBeginBlockNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'beginToken',
		'leftBrace',
		'statements',
		'semicolons',
		'rightBrace'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyBeginBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBeginBlock: self
]

{ #category : 'generated' }
RubyBeginBlockNode >> beginToken [
	^ beginToken
]

{ #category : 'generated' }
RubyBeginBlockNode >> beginToken: aSmaCCToken [
	beginToken := aSmaCCToken
]

{ #category : 'generated' }
RubyBeginBlockNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
RubyBeginBlockNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : 'generated-initialize-release' }
RubyBeginBlockNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyBeginBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
RubyBeginBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyBeginBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
RubyBeginBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyBeginBlockNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyBeginBlockNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyBeginBlockNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyBeginBlockNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyBeginBlockNode >> tokenVariables [
	^ #(#beginToken #leftBrace #rightBrace)
]
