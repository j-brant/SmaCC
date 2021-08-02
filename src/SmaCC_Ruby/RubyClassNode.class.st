Class {
	#name : #RubyClassNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'classToken',
		'name',
		'operator',
		'superclass',
		'semicolons',
		'statements',
		'rescues',
		'ensure',
		'endToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyClassNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClass: self
]

{ #category : #generated }
RubyClassNode >> classToken [
	^ classToken
]

{ #category : #generated }
RubyClassNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
RubyClassNode >> compositeNodeVariables [
	^ #(#statements #rescues)
]

{ #category : #generated }
RubyClassNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyClassNode >> endToken [
	^ endToken
]

{ #category : #generated }
RubyClassNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
RubyClassNode >> ensure [
	^ ensure
]

{ #category : #generated }
RubyClassNode >> ensure: aRubyEnsureNode [
	self ensure notNil
		ifTrue: [ self ensure parent: nil ].
	ensure := aRubyEnsureNode.
	self ensure notNil
		ifTrue: [ self ensure parent: self ]
]

{ #category : #'generated-initialize-release' }
RubyClassNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	rescues := OrderedCollection new: 2.
]

{ #category : #generated }
RubyClassNode >> name [
	^ name
]

{ #category : #generated }
RubyClassNode >> name: aRubyExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aRubyExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
RubyClassNode >> nodeVariables [
	^ #(#name #superclass #ensure)
]

{ #category : #generated }
RubyClassNode >> operator [
	^ operator
]

{ #category : #generated }
RubyClassNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RubyClassNode >> rescues [
	^ rescues
]

{ #category : #generated }
RubyClassNode >> rescues: anOrderedCollection [
	self setParents: self rescues to: nil.
	rescues := anOrderedCollection.
	self setParents: self rescues to: self
]

{ #category : #generated }
RubyClassNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyClassNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyClassNode >> statements [
	^ statements
]

{ #category : #generated }
RubyClassNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyClassNode >> superclass [
	^ superclass
]

{ #category : #generated }
RubyClassNode >> superclass: aRubyExpressionNode [
	self superclass notNil
		ifTrue: [ self superclass parent: nil ].
	superclass := aRubyExpressionNode.
	self superclass notNil
		ifTrue: [ self superclass parent: self ]
]

{ #category : #generated }
RubyClassNode >> tokenVariables [
	^ #(#classToken #operator #endToken)
]
