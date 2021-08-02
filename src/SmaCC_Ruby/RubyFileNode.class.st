Class {
	#name : #RubyFileNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'statements',
		'semicolons'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
RubyFileNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyFileNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #'generated-initialize-release' }
RubyFileNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
RubyFileNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyFileNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyFileNode >> statements [
	^ statements
]

{ #category : #generated }
RubyFileNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
