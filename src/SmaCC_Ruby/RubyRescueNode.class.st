Class {
	#name : #RubyRescueNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'rescueToken',
		'exception',
		'operator',
		'variable',
		'semicolons',
		'thenToken',
		'statements'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyRescueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRescue: self
]

{ #category : #generated }
RubyRescueNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyRescueNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyRescueNode >> exception [
	^ exception
]

{ #category : #generated }
RubyRescueNode >> exception: aRubyExpressionNode [
	self exception notNil
		ifTrue: [ self exception parent: nil ].
	exception := aRubyExpressionNode.
	self exception notNil
		ifTrue: [ self exception parent: self ]
]

{ #category : #'generated-initialize-release' }
RubyRescueNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
RubyRescueNode >> nodeVariables [
	^ #(#exception #variable)
]

{ #category : #generated }
RubyRescueNode >> operator [
	^ operator
]

{ #category : #generated }
RubyRescueNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RubyRescueNode >> rescueToken [
	^ rescueToken
]

{ #category : #generated }
RubyRescueNode >> rescueToken: aSmaCCToken [
	rescueToken := aSmaCCToken
]

{ #category : #generated }
RubyRescueNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyRescueNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyRescueNode >> statements [
	^ statements
]

{ #category : #generated }
RubyRescueNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyRescueNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
RubyRescueNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
RubyRescueNode >> tokenVariables [
	^ #(#rescueToken #operator #thenToken)
]

{ #category : #generated }
RubyRescueNode >> variable [
	^ variable
]

{ #category : #generated }
RubyRescueNode >> variable: aRubyExpressionNode [
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aRubyExpressionNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]
]
