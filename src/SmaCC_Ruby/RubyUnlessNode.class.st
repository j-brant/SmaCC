Class {
	#name : #RubyUnlessNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'unlessToken',
		'condition',
		'semicolons',
		'thenToken',
		'statements',
		'else',
		'endToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyUnlessNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnless: self
]

{ #category : #generated }
RubyUnlessNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyUnlessNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyUnlessNode >> condition [
	^ condition
]

{ #category : #generated }
RubyUnlessNode >> condition: aRubyExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RubyUnlessNode >> else [
	^ else
]

{ #category : #generated }
RubyUnlessNode >> else: aRubyElseNode [
	self else notNil
		ifTrue: [ self else parent: nil ].
	else := aRubyElseNode.
	self else notNil
		ifTrue: [ self else parent: self ]
]

{ #category : #generated }
RubyUnlessNode >> endToken [
	^ endToken
]

{ #category : #generated }
RubyUnlessNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RubyUnlessNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
RubyUnlessNode >> nodeVariables [
	^ #(#condition #else)
]

{ #category : #generated }
RubyUnlessNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyUnlessNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyUnlessNode >> statements [
	^ statements
]

{ #category : #generated }
RubyUnlessNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyUnlessNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
RubyUnlessNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
RubyUnlessNode >> tokenVariables [
	^ #(#unlessToken #thenToken #endToken)
]

{ #category : #generated }
RubyUnlessNode >> unlessToken [
	^ unlessToken
]

{ #category : #generated }
RubyUnlessNode >> unlessToken: aSmaCCToken [
	unlessToken := aSmaCCToken
]
