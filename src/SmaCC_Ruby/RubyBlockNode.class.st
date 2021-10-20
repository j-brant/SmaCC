Class {
	#name : 'RubyBlockNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'leftBrace',
		'bars',
		'semicolons',
		'commas',
		'args',
		'statements',
		'rightBrace',
		'beginToken',
		'rescues',
		'ensure',
		'endToken',
		'doToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlock: self
]

{ #category : 'generated' }
RubyBlockNode >> args [
	^ args
]

{ #category : 'generated' }
RubyBlockNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : 'generated' }
RubyBlockNode >> bars [
	^ bars
]

{ #category : 'generated' }
RubyBlockNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : 'generated' }
RubyBlockNode >> beginToken [
	^ beginToken
]

{ #category : 'generated' }
RubyBlockNode >> beginToken: aSmaCCToken [
	beginToken := aSmaCCToken
]

{ #category : 'generated' }
RubyBlockNode >> commas [
	^ commas
]

{ #category : 'generated' }
RubyBlockNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RubyBlockNode >> compositeNodeVariables [
	^ #(#args #statements #rescues)
]

{ #category : 'generated' }
RubyBlockNode >> compositeTokenVariables [
	^ #(#bars #semicolons #commas #leftParens #rightParens)
]

{ #category : 'generated' }
RubyBlockNode >> doToken [
	^ doToken
]

{ #category : 'generated' }
RubyBlockNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : 'generated' }
RubyBlockNode >> endToken [
	^ endToken
]

{ #category : 'generated' }
RubyBlockNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : 'generated' }
RubyBlockNode >> ensure [
	^ ensure
]

{ #category : 'generated' }
RubyBlockNode >> ensure: aRubyEnsureNode [
	self ensure notNil ifTrue: [ self ensure parent: nil ].
	ensure := aRubyEnsureNode.
	self ensure notNil ifTrue: [ self ensure parent: self ]
]

{ #category : 'generated-initialize-release' }
RubyBlockNode >> initialize [
	super initialize.
	bars := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	rescues := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
RubyBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyBlockNode >> nodeVariables [
	^ #(#ensure)
]

{ #category : 'generated' }
RubyBlockNode >> rescues [
	^ rescues
]

{ #category : 'generated' }
RubyBlockNode >> rescues: anOrderedCollection [
	self setParents: self rescues to: nil.
	rescues := anOrderedCollection.
	self setParents: self rescues to: self
]

{ #category : 'generated' }
RubyBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
RubyBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
RubyBlockNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyBlockNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyBlockNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyBlockNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyBlockNode >> tokenVariables [
	^ #(#leftBrace #rightBrace #beginToken #endToken #doToken)
]
