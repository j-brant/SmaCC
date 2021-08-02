Class {
	#name : #RubyErrorStatementNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'_error',
		'statement'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyErrorStatementNode >> _error [
	^ _error
]

{ #category : #generated }
RubyErrorStatementNode >> _error: aSmaCCErrorNode [
	self _error notNil
		ifTrue: [ self _error parent: nil ].
	_error := aSmaCCErrorNode.
	self _error notNil
		ifTrue: [ self _error parent: self ]
]

{ #category : #generated }
RubyErrorStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitErrorStatement: self
]

{ #category : #generated }
RubyErrorStatementNode >> nodeVariables [
	^ #(#_error #statement)
]

{ #category : #generated }
RubyErrorStatementNode >> statement [
	^ statement
]

{ #category : #generated }
RubyErrorStatementNode >> statement: aRubyProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aRubyProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]
