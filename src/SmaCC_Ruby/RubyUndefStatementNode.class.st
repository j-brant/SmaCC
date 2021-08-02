Class {
	#name : #RubyUndefStatementNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'undefToken',
		'values',
		'commas'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyUndefStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUndefStatement: self
]

{ #category : #generated }
RubyUndefStatementNode >> commas [
	^ commas
]

{ #category : #generated }
RubyUndefStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RubyUndefStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
RubyUndefStatementNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
RubyUndefStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RubyUndefStatementNode >> tokenVariables [
	^ #(#undefToken)
]

{ #category : #generated }
RubyUndefStatementNode >> undefToken [
	^ undefToken
]

{ #category : #generated }
RubyUndefStatementNode >> undefToken: aSmaCCToken [
	undefToken := aSmaCCToken
]

{ #category : #generated }
RubyUndefStatementNode >> values [
	^ values
]

{ #category : #generated }
RubyUndefStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
