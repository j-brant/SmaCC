Class {
	#name : 'RubyEnsureNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'ensureToken',
		'statements',
		'semicolons'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyEnsureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnsure: self
]

{ #category : 'generated' }
RubyEnsureNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
RubyEnsureNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : 'generated' }
RubyEnsureNode >> ensureToken [
	^ ensureToken
]

{ #category : 'generated' }
RubyEnsureNode >> ensureToken: aSmaCCToken [
	ensureToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RubyEnsureNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyEnsureNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyEnsureNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyEnsureNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyEnsureNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyEnsureNode >> tokenVariables [
	^ #(#ensureToken)
]
