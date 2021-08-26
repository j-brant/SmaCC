Class {
	#name : 'RubyIfNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'ifToken',
		'condition',
		'semicolons',
		'thenToken',
		'statements',
		'elses',
		'endToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyIfNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIf: self
]

{ #category : 'generated' }
RubyIfNode >> compositeNodeVariables [
	^ #(#statements #elses)
]

{ #category : 'generated' }
RubyIfNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : 'generated' }
RubyIfNode >> condition [
	^ condition
]

{ #category : 'generated' }
RubyIfNode >> condition: aRubyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
RubyIfNode >> elses [
	^ elses
]

{ #category : 'generated' }
RubyIfNode >> elses: anOrderedCollection [
	self setParents: self elses to: nil.
	elses := anOrderedCollection.
	self setParents: self elses to: self
]

{ #category : 'generated' }
RubyIfNode >> endToken [
	^ endToken
]

{ #category : 'generated' }
RubyIfNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : 'generated' }
RubyIfNode >> ifToken [
	^ ifToken
]

{ #category : 'generated' }
RubyIfNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RubyIfNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	elses := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyIfNode >> nodeVariables [
	^ #(#condition)
]

{ #category : 'generated' }
RubyIfNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyIfNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyIfNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyIfNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyIfNode >> thenToken [
	^ thenToken
]

{ #category : 'generated' }
RubyIfNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : 'generated' }
RubyIfNode >> tokenVariables [
	^ #(#ifToken #thenToken #endToken)
]
