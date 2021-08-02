Class {
	#name : #RubyLambdaNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'arrow',
		'commas',
		'args',
		'semicolons',
		'leftBrace',
		'statements',
		'rightBrace',
		'doToken',
		'rescues',
		'ensure',
		'endToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyLambdaNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLambda: self
]

{ #category : #generated }
RubyLambdaNode >> args [
	^ args
]

{ #category : #generated }
RubyLambdaNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RubyLambdaNode >> arrow [
	^ arrow
]

{ #category : #generated }
RubyLambdaNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
RubyLambdaNode >> commas [
	^ commas
]

{ #category : #generated }
RubyLambdaNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RubyLambdaNode >> compositeNodeVariables [
	^ #(#args #statements #rescues)
]

{ #category : #generated }
RubyLambdaNode >> compositeTokenVariables [
	^ #(#commas #semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyLambdaNode >> doToken [
	^ doToken
]

{ #category : #generated }
RubyLambdaNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : #generated }
RubyLambdaNode >> endToken [
	^ endToken
]

{ #category : #generated }
RubyLambdaNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
RubyLambdaNode >> ensure [
	^ ensure
]

{ #category : #generated }
RubyLambdaNode >> ensure: aRubyEnsureNode [
	self ensure notNil
		ifTrue: [ self ensure parent: nil ].
	ensure := aRubyEnsureNode.
	self ensure notNil
		ifTrue: [ self ensure parent: self ]
]

{ #category : #'generated-initialize-release' }
RubyLambdaNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	rescues := OrderedCollection new: 2.
]

{ #category : #generated }
RubyLambdaNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RubyLambdaNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RubyLambdaNode >> nodeVariables [
	^ #(#ensure)
]

{ #category : #generated }
RubyLambdaNode >> rescues [
	^ rescues
]

{ #category : #generated }
RubyLambdaNode >> rescues: anOrderedCollection [
	self setParents: self rescues to: nil.
	rescues := anOrderedCollection.
	self setParents: self rescues to: self
]

{ #category : #generated }
RubyLambdaNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RubyLambdaNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RubyLambdaNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyLambdaNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyLambdaNode >> statements [
	^ statements
]

{ #category : #generated }
RubyLambdaNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyLambdaNode >> tokenVariables [
	^ #(#arrow #leftBrace #rightBrace #doToken #endToken)
]
