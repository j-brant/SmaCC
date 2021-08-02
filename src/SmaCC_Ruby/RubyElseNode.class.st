Class {
	#name : #RubyElseNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'elseToken',
		'statements',
		'semicolons'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyElseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElse: self
]

{ #category : #generated }
RubyElseNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyElseNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #generated }
RubyElseNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
RubyElseNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RubyElseNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
RubyElseNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyElseNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyElseNode >> statements [
	^ statements
]

{ #category : #generated }
RubyElseNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyElseNode >> tokenVariables [
	^ #(#elseToken)
]
