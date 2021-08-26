Class {
	#name : 'RubyUntilNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'untilToken',
		'condition',
		'semicolons',
		'doToken',
		'statements',
		'endToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyUntilNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUntil: self
]

{ #category : 'generated' }
RubyUntilNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
RubyUntilNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : 'generated' }
RubyUntilNode >> condition [
	^ condition
]

{ #category : 'generated' }
RubyUntilNode >> condition: aRubyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
RubyUntilNode >> doToken [
	^ doToken
]

{ #category : 'generated' }
RubyUntilNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : 'generated' }
RubyUntilNode >> endToken [
	^ endToken
]

{ #category : 'generated' }
RubyUntilNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RubyUntilNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyUntilNode >> nodeVariables [
	^ #(#condition)
]

{ #category : 'generated' }
RubyUntilNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyUntilNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyUntilNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyUntilNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyUntilNode >> tokenVariables [
	^ #(#untilToken #doToken #endToken)
]

{ #category : 'generated' }
RubyUntilNode >> untilToken [
	^ untilToken
]

{ #category : 'generated' }
RubyUntilNode >> untilToken: aSmaCCToken [
	untilToken := aSmaCCToken
]
