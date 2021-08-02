Class {
	#name : #RubyElseIfNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'elsifToken',
		'condition',
		'semicolons',
		'thenToken',
		'statements'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyElseIfNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElseIf: self
]

{ #category : #generated }
RubyElseIfNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyElseIfNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #generated }
RubyElseIfNode >> condition [
	^ condition
]

{ #category : #generated }
RubyElseIfNode >> condition: aRubyExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RubyElseIfNode >> elsifToken [
	^ elsifToken
]

{ #category : #generated }
RubyElseIfNode >> elsifToken: aSmaCCToken [
	elsifToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RubyElseIfNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
RubyElseIfNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
RubyElseIfNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyElseIfNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyElseIfNode >> statements [
	^ statements
]

{ #category : #generated }
RubyElseIfNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyElseIfNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
RubyElseIfNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
RubyElseIfNode >> tokenVariables [
	^ #(#elsifToken #thenToken)
]
