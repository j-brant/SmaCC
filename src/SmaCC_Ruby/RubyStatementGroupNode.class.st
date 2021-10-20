Class {
	#name : 'RubyStatementGroupNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'statements',
		'semicolons'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyStatementGroupNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatementGroup: self
]

{ #category : 'generated' }
RubyStatementGroupNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
RubyStatementGroupNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
RubyStatementGroupNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyStatementGroupNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyStatementGroupNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyStatementGroupNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyStatementGroupNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
