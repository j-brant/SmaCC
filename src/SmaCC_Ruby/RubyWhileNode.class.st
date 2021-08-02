Class {
	#name : #RubyWhileNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'whileToken',
		'condition',
		'semicolons',
		'doToken',
		'statements',
		'endToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyWhileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhile: self
]

{ #category : #generated }
RubyWhileNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyWhileNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyWhileNode >> condition [
	^ condition
]

{ #category : #generated }
RubyWhileNode >> condition: aRubyExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RubyWhileNode >> doToken [
	^ doToken
]

{ #category : #generated }
RubyWhileNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : #generated }
RubyWhileNode >> endToken [
	^ endToken
]

{ #category : #generated }
RubyWhileNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RubyWhileNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
RubyWhileNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
RubyWhileNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyWhileNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyWhileNode >> statements [
	^ statements
]

{ #category : #generated }
RubyWhileNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyWhileNode >> tokenVariables [
	^ #(#whileToken #doToken #endToken)
]

{ #category : #generated }
RubyWhileNode >> whileToken [
	^ whileToken
]

{ #category : #generated }
RubyWhileNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
