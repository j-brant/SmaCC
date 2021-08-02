Class {
	#name : #RubyMethodNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'defToken',
		'name',
		'commas',
		'args',
		'semicolons',
		'statements',
		'rescues',
		'ensure',
		'endToken',
		'object',
		'operator'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyMethodNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethod: self
]

{ #category : #generated }
RubyMethodNode >> args [
	^ args
]

{ #category : #generated }
RubyMethodNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RubyMethodNode >> commas [
	^ commas
]

{ #category : #generated }
RubyMethodNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RubyMethodNode >> compositeNodeVariables [
	^ #(#args #statements #rescues)
]

{ #category : #generated }
RubyMethodNode >> compositeTokenVariables [
	^ #(#commas #semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyMethodNode >> defToken [
	^ defToken
]

{ #category : #generated }
RubyMethodNode >> defToken: aSmaCCToken [
	defToken := aSmaCCToken
]

{ #category : #generated }
RubyMethodNode >> endToken [
	^ endToken
]

{ #category : #generated }
RubyMethodNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
RubyMethodNode >> ensure [
	^ ensure
]

{ #category : #generated }
RubyMethodNode >> ensure: aRubyEnsureNode [
	self ensure notNil
		ifTrue: [ self ensure parent: nil ].
	ensure := aRubyEnsureNode.
	self ensure notNil
		ifTrue: [ self ensure parent: self ]
]

{ #category : #'generated-initialize-release' }
RubyMethodNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	rescues := OrderedCollection new: 2.
]

{ #category : #generated }
RubyMethodNode >> name [
	^ name
]

{ #category : #generated }
RubyMethodNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RubyMethodNode >> nodeVariables [
	^ #(#ensure #object)
]

{ #category : #generated }
RubyMethodNode >> object [
	^ object
]

{ #category : #generated }
RubyMethodNode >> object: aRubyExpressionNode [
	self object notNil
		ifTrue: [ self object parent: nil ].
	object := aRubyExpressionNode.
	self object notNil
		ifTrue: [ self object parent: self ]
]

{ #category : #generated }
RubyMethodNode >> operator [
	^ operator
]

{ #category : #generated }
RubyMethodNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RubyMethodNode >> rescues [
	^ rescues
]

{ #category : #generated }
RubyMethodNode >> rescues: anOrderedCollection [
	self setParents: self rescues to: nil.
	rescues := anOrderedCollection.
	self setParents: self rescues to: self
]

{ #category : #generated }
RubyMethodNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyMethodNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyMethodNode >> statements [
	^ statements
]

{ #category : #generated }
RubyMethodNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyMethodNode >> tokenVariables [
	^ #(#defToken #name #endToken #operator)
]
