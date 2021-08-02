Class {
	#name : #RubyBinaryExpressionNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
RubyBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
RubyBinaryExpressionNode >> left: aRubyExpressionNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aRubyExpressionNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
RubyBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
RubyBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
RubyBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RubyBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
RubyBinaryExpressionNode >> right: aRubyExpressionNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aRubyExpressionNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
RubyBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
