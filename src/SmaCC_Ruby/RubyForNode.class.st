Class {
	#name : 'RubyForNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'forToken',
		'variable',
		'inToken',
		'condition',
		'semicolons',
		'doToken',
		'statements',
		'endToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyForNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFor: self
]

{ #category : 'generated' }
RubyForNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
RubyForNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : 'generated' }
RubyForNode >> condition [
	^ condition
]

{ #category : 'generated' }
RubyForNode >> condition: aRubyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
RubyForNode >> doToken [
	^ doToken
]

{ #category : 'generated' }
RubyForNode >> doToken: aSmaCCToken [
	doToken := aSmaCCToken
]

{ #category : 'generated' }
RubyForNode >> endToken [
	^ endToken
]

{ #category : 'generated' }
RubyForNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : 'generated' }
RubyForNode >> forToken [
	^ forToken
]

{ #category : 'generated' }
RubyForNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : 'generated' }
RubyForNode >> inToken [
	^ inToken
]

{ #category : 'generated' }
RubyForNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RubyForNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyForNode >> nodeVariables [
	^ #(#variable #condition)
]

{ #category : 'generated' }
RubyForNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyForNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyForNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyForNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyForNode >> tokenVariables [
	^ #(#forToken #inToken #doToken #endToken)
]

{ #category : 'generated' }
RubyForNode >> variable [
	^ variable
]

{ #category : 'generated' }
RubyForNode >> variable: aRubyExpressionNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aRubyExpressionNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
