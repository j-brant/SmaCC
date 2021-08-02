Class {
	#name : #RubyRescueElseNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'elseToken',
		'statements',
		'semicolons'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyRescueElseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRescueElse: self
]

{ #category : #generated }
RubyRescueElseNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyRescueElseNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #generated }
RubyRescueElseNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
RubyRescueElseNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RubyRescueElseNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
RubyRescueElseNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyRescueElseNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyRescueElseNode >> statements [
	^ statements
]

{ #category : #generated }
RubyRescueElseNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyRescueElseNode >> tokenVariables [
	^ #(#elseToken)
]
